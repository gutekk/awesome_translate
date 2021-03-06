require 'uri'
require 'net/http'
require 'net/https'
require 'json'
require 'nokogiri'
require 'cgi'

module AwesomeTranslate

  class Request

    def initialize(options = {})
      @access_token = options.delete(:access_token)
      @options = options
    end

    def post(params)
      response = https.post(token_uri.path, URI.encode_www_form(params))
      unless response.code == '200'
        raise AuthenticationException.new(response)
      end
      JSON.parse(response.body)
    end

    def get(params)
      raise NoAccessTokenException unless @access_token
      request = Net::HTTP::Get.new([uri.request_uri, URI.encode_www_form(params)].join('?'))
      request.initialize_http_header({'Authorization' => "Bearer #{@access_token['access_token']}"})
      response = http.request(request)
      unless response.code == '200'
        raise TranslationException.new(response)
      end
      CGI::unescapeHTML(Nokogiri::HTML(response.body).xpath('//string/text()').to_s)
    end

    private

    def uri
      @uri ||= URI.parse(AwesomeTranslate.endpoint)
    end

    def token_uri
      @token_uri ||= URI.parse(AwesomeTranslate.token_endpoint)
    end

    def http
      @http ||= Net::HTTP.new(uri.host, uri.port)
    end

    def https
      @https ||= Net::HTTP.new(token_uri.host, token_uri.port)
      unless @https.verify_mode
        @https.use_ssl = true 
        @https.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
      @https
    end

    def request_params
      {
        from: "en",
        to: "pl",
        text: "hello"
      }
    end

    def handle_error

    end

  end
end
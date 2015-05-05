require 'uri'
require 'net/http'
require 'net/https'
require 'json'

module AwesomeTranslate
  class Request
    attr_accessor :http_options
    URI = "http://api.microsofttranslator.com/v2/Http.svc/Translate?text="

    def initialize(options = {}, http_options = {})
      @options = options
      @http_options = http_options
    end

    def perform

    end

  end
end
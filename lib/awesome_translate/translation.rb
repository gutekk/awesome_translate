module AwesomeTranslate

  def self.translate(string, options={})
    TranslationRequest.new(string, options.merge!(access_token: access_token)).request_translation
  end

  class TranslationRequest < AwesomeTranslate::Request

    def initialize(string, options)
      @string = string
      @from = options[:from]
      @to = options[:to] || "en"
      @access_token = options.delete(:access_token)
    end

    def request_translation
      get(request_params)
    end

    def request_params
      {
        'from' => @from,
        'to' => @to,
        'text' => @string
      }
    end

  end

end
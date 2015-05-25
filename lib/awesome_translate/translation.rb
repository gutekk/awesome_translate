module AwesomeTranslate

  def self.translate(string, options={})
    translation_request = TranslationRequest.new(string, options)
    translation_request.request_translation
  end

  class TranslationRequest < AwesomeTranslate::Request

    def initialize(string, options)
      @string = string
      @from = options[:from]
      @to = options[:to] || "en"
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
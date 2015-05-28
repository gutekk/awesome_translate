module AwesomeTranslate

  class << self

    def access_token
      return @access_token if access_token_valid?
      atar = AccessTokenAuthenticationRequest.new 
      @access_token = atar.request_access_token
    end

    def access_token_valid?
      @access_token && @access_token['expires_in'] > Time.now
    end

  end

  class AccessTokenAuthenticationRequest < AwesomeTranslate::Request

    def request_access_token
      token = post(request_params)
      
      #override token['expires_in'], because api return token lifetime in seconds, ie 600
      token['expires_in'] = Time.now + token['expires_in'].to_i
      token
    end
    
    def request_params
      {
        'client_id'     => AwesomeTranslate.client_id,
        'client_secret' => AwesomeTranslate.client_secret,
        'scope'         => AwesomeTranslate.scope,
        'grant_type'    => AwesomeTranslate.grant_type
      }
    end

  end

end
module AwesomeTranslate

  class AccessTokenAuthentication

    def self.get_access_token
      atar = AccessTokenAuthenticationRequest.new 
      atar.request_access_token
    end

    def access_token
      @access_token
    end

    def access_token_expired?
      
    end

  end

  class AccessTokenAuthenticationRequest < AwesomeTranslate::Request

    def request_access_token
      post(request_params)
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
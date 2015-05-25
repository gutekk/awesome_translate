module AwesomeTranslate
  
  module Configuration

    VALID_CONFIG_KEYS = [:client_secret, :client_id, :scope, :grant_type, :endpoint, :token_endpoint].freeze

    DEFAULT_REQUEST_ENDPOINT        = "http://api.microsofttranslator.com/v2/Http.svc/Translate"
    DEFAULT_TOKEN_REQUEST_ENDPOINT  = 'https://datamarket.accesscontrol.windows.net/v2/OAuth2-13'
    DEFAULT_TOKEN_GRANT_TYPE        = 'client_credentials'
    DEFAULT_TOKEN_SCOPE             = 'http://api.microsofttranslator.com'
    DEFAULT_CLIENT_SECRET           = nil
    DEFAULT_CLIENT_ID               = nil

    # Build accessor methods for every config options so we can do this, for example:
    #   AwesomeTranslate.client_secret = 'xxx'
    attr_accessor *VALID_CONFIG_KEYS

    # Make sure we have the default values set when we get 'extended'
    def self.extended(base)
      base.set_default
    end
 
    def set_default
      self.endpoint       = DEFAULT_REQUEST_ENDPOINT
      self.token_endpoint = DEFAULT_TOKEN_REQUEST_ENDPOINT
      self.grant_type     = DEFAULT_TOKEN_GRANT_TYPE
      self.scope          = DEFAULT_TOKEN_SCOPE
 
      self.client_id      = DEFAULT_CLIENT_ID
      self.client_secret  = DEFAULT_CLIENT_SECRET
    end

    def configure
      yield self
    end

    def options
      Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
    end

  end
  
end
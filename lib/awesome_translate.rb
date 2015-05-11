require 'awesome_translate/configuration'
require 'awesome_translate/version'
require 'awesome_translate/languages'
require 'awesome_translate/request'
require 'awesome_translate/access_token_authentication'
require 'awesome_translate/translation'

module AwesomeTranslate
  extend Configuration

  def self.translate(string, options={})
    string
  end

end

AwesomeTranslate.configure do |config|
  config.client_secret  = 'cMbthG5J9bjPUv7pHzPwtHztx5oqYOjR70Oo39Opy3g='
  config.client_id      = 'awesome-translate-93610'
end
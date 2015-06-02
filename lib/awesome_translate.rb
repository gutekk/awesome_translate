require 'awesome_translate/configuration'
require 'awesome_translate/version'
require 'awesome_translate/languages'
require 'awesome_translate/request'
require 'awesome_translate/access_token_authentication'
require 'awesome_translate/translation'
require 'awesome_translate/exceptions'

module AwesomeTranslate
  extend Configuration

end

#This for initialize/awesome_translate.rb or something
AwesomeTranslate.configure do |config|
  config.client_secret  = 'cMbthG5J9bjPUv7pHzPwtHztx5oqYOjR70Oo39Opy3g='
  config.client_id      = 'awesome-translate-93610'
end
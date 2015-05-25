module AwesomeTranslate
  class NoAccessTokenException < StandardError; end
  class AuthenticationException < StandardError; end
  class TranslationException < StandardError; end
end
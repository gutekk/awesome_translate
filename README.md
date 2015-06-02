# AwesomeTranslate

Ruby interface to Microsoft Translator

Signing up for Microsoft Translator and getting your credentials, please visit:
http://blogs.msdn.com/b/translation/p/gettingstarted1.aspx

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'awesome_translate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install awesome_translate

## Configuration
```
AwesomeTranslate.configure do |config|
  config.client_secret  = '< YOUR CLIENT SECRET >'
  config.client_id      = '< YOUR CLIENT ID >'
end
```

## Usage

```ruby
AwesomeTranslate.translate("hello!", from: :en, to: :es)
=> "Hola!"
```
or 
```ruby
AwesomeTranslate.translate("hello!", to: :es)
=> "Hola!"
```

[![Code Climate](https://codeclimate.com/github/gutekk/awesome_translate/badges/gpa.svg)]
## Contributing

1. Fork it ( https://github.com/gutekk/awesome_translate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

describe '.configure' do
  AwesomeTranslate::Configuration::VALID_CONFIG_KEYS.each do |key|
    it "should set the #{key}" do
      AwesomeTranslate.configure do |config|
        config.send("#{key}=", key)
        puts "ok"
        expect(AwesomeTranslate.send(key)).to eq key
      end
    end
  end
end
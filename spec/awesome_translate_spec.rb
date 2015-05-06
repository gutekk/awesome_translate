require 'spec_helper'

describe AwesomeTranslate do
  subject { AwesomeTranslate }

  describe '#translate' do
    let(:input) { 'Hello!' }
    let(:output) { subject.translate(input, from: :en, to: :es) }

    it "should translate input from en to es" do
      expect(output).to match /Hola/i
    end
  end
end
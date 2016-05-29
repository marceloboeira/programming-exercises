require "spec_helper"
require_relative "../lib/caesar"

RSpec.describe Caesar do
  describe "encryption" do
    context "with default key" do
      let(:caesar) { Caesar.new }

      it "encrypts a single letter" do
        expect(caesar.encrypt("A")).to eq("D")
      end

      it "encrypts a composed message" do
        expect(caesar.encrypt("AM")).to eq("DP")
      end

      it "encrypts a message with spaces" do
        expect(caesar.encrypt("I AM")).to eq("L DP")
      end
    end

    context "with a custom key" do
      let(:caesar) { Caesar.new(19) }

      it "encrypts with a different shift factor" do
        expect(caesar.encrypt("A BAT")).to eq("T UTM")
      end
    end

    context "with a custom alphabet" do
      let(:caesar) { Caesar.new(2, "JKLMNOPQRST") }

      it "encrypts with the custom alphabet" do
        expect(caesar.encrypt("JK")).to eq("LM")
      end
    end
  end

  describe "decryption" do
    let(:caesar) { Caesar.new }

    it "decrypts a message" do
      expect(caesar.decrypt("L DP")).to eq("I AM")
    end
  end
end

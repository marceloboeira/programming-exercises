require "spec_helper"
require_relative "../lib/caesar"

RSpec.describe Caesar do
  it "encrypts a single letter" do
    expect(Caesar.encrypt("A")).to eq("D")
  end

  it "encrypts a composed message" do
    expect(Caesar.encrypt("AM")).to eq("DP")
  end

  it "encrypts messages with spaces" do
    expect(Caesar.encrypt("I AM")).to eq("L DP")
  end

  it "accepts the key as an argument" do
    expect(Caesar.encrypt("A BAT", 19)).to eq("T UTM")
  end
end

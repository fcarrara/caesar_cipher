require './spec_helper'
require '../caesar_cipher'

describe "caesar_cipher" do
  it "replaces a single letter by a given key" do
    expect(caesar_cipher("a", 1)).to eq("b")
  end

  it "replaces a single string by a given key" do
    expect(caesar_cipher("hello", 5)).to eq("mjqqt")
  end

  it "returns to a after z" do
    expect(caesar_cipher("world",5)).to eq("btwqi")
  end

  it "returns to A after Z" do
    expect(caesar_cipher("World",5)).to eq("Btwqi")
  end

  it "does not replace white spaces" do
    expect(caesar_cipher("hello world", 1)).to eq("ifmmp xpsme")
  end

  it "does not replace special characters" do
    expect(caesar_cipher("hello world!", 1)).to eq("ifmmp xpsme!")
  end

  it "preserves capital letters" do
    expect(caesar_cipher("Hello World!", 1)).to eq("Ifmmp Xpsme!")
  end
end
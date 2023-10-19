require './lib/caesar_cipher.rb'

describe ".cipher" do
  context "when two parameters are given" do
    it "returns a cipher" do
      expect(cipher("string", 5)).to eql "xywnsl"
    end
  end

  context "when one parameter is given" do
    it "returns a cipher with a shift factor of three" do
      expect(cipher("string")).to eql "vwulqj"
    end
  end

  context "with wrap" do
    it "wraps from 'z' back to 'a'" do
      expect(cipher("zebra")).to eql "cheud"
    end
  end
end

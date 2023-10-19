require './lib/caesar_cipher.rb'

describe ".caesar_cipher" do
  context "with two parameters" do
    it "returns a cipher" do
      expect(caesar_cipher("string", 5)).to eql "xywnsl"
    end
  end

  context "without shift factor" do
    it "returns a cipher with a shift factor of three" do
      expect(caesar_cipher("string")).to eql "vwulqj"
    end
  end

  context "with wrap" do
    it "wraps from 'z' back to 'a'" do
      expect(caesar_cipher("zebray")).to eql "cheudb"
    end
  end

  context "with punctuation" do
    it "returns cipher with punctuation unaltered" do
      expect(caesar_cipher("'hi'?!")).to eql "'kl'?!"
    end
  end

  context "with spaces" do
    it "returns cipher with spaces unaltered" do
      expect(caesar_cipher("string with spaces")).to eql "vwulqj zlwk vsdfhv"
    end
  end

  context "with capitalization" do
    it "returns cipher" do
      expect(caesar_cipher("With Capitalisation")).to eql "Zlwk Fdslwdolvdwlrq"
    end
  end

  context "final test" do
    it "returns cipher" do
      expect(caesar_cipher("What a string!", 5)).to eql "Bmfy f xywnsl!"
    end
  end
end

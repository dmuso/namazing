require 'spec_helper'

describe Namazing do

  describe "#random" do

    subject { Namazing.random }

    it "should provide a string" do
      expect(subject).to be_a_kind_of(String)
    end

    it "should provide a word longer than 3 characters" do
      expect(subject.size).to be > 3
    end

    it "should provide one word when no parameters are provided" do
       expect(subject.downcase).to match(/[a-z]+/)
    end

    it "should provide a random word" do
      srand(10)
      expect(subject).to eq("netminders")
    end

  end

  describe "#to_awesome" do

    subject { Namazing.to_awesome "boring" }

    it "should be a string" do
      expect(subject).to be_a_kind_of(String)
    end

    it "should provide a word longer than 3 characters" do
      expect(subject.size).to be > 3
    end

    it "should not be boring" do
      expect(subject).not_to eq("boring")
    end

    it "should return the same awesome for the same boring" do
      first = subject
      expect(subject).to eq (first)
    end

    it "should return a different awesome with a different boring" do
      first = subject
      expect(Namazing.to_awesome "slightlyboring").not_to eq (first)
    end

  end

end

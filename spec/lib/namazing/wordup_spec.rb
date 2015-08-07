require 'spec_helper'

module Namazing
  describe Wordup do
    describe "#initialize" do
      it "should require a string" do
        expect{Wordup.new(nil)}.to raise_error(ArgumentError)
        expect{Wordup.new(1)}.to raise_error(ArgumentError)
        expect{Wordup.new("boring")}.not_to raise_error
      end
    end

    describe "#word_count" do
      it "should return the correct number of words" do
        expect(Wordup.new("very_very_extremely_boring").word_count).to eq 4
      end

      it "should handle CamelCase" do
        expect(Wordup.new("VeryBoringName").word_count).to eq 3
      end

      it "should handle camelCase" do
        expect(Wordup.new("veryBoringName").word_count).to eq 3
      end

      it 'should handle spaces' do
        expect(Wordup.new("two words").word_count).to eq 2
      end
    end

    describe "#type" do
      it "should identify underscore" do
        expect(Wordup.new("very_very_extremely_boring").type).to eq :underscore
      end

      it "should identify PascalCase" do
        expect(Wordup.new("VeryBoringName").type).to eq :pascalcase
      end

      it "should identify camelCase" do
        expect(Wordup.new("veryBoringName").type).to eq :camelcase
      end
    end

    describe "#split" do
      it "should split underscore" do
        expect(Wordup.new("very_very_extremely_boring").split.length).to eq 4
      end

      it "should split CamelCase" do
        expect(Wordup.new("VeryBoringName").split.length).to eq 3
      end

      it "should split camelCase" do
        expect(Wordup.new("veryBoringName").split.length).to eq 3
      end
    end
  end
end

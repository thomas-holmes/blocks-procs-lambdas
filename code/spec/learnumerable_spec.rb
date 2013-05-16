require_relative '../learnumerable'

describe "Learnumerable" do
  describe "#learn_select" do
    let(:input) { (1..10).to_a }

    it "should work with verbose block syntax" do
      # Our custom select
      result = input.learn_select do |i|
        i.odd?
      end

      # select with enumerable
      answer = input.select do |i|
        i.odd?
      end
      expect(result).to eq answer
    end

    it "should work with brace block syntax" do
      result = input.learn_select { |i| i.odd? }
      answer = input.select { |i| i.odd? }

      expect(result).to eq answer
    end

    it "should work with ampersand block syntax" do
      result = input.learn_select(&:odd?)
      answer = input.select(&:odd?)
      
      expect(result).to eq answer
    end
  end
end

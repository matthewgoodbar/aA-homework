require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("pie", 3, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("pie")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(3)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("pie", "hello", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) do
      dessert.add_ingredient("ham")
    end
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to include("ham")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    before(:each) do
      dessert.eat(2)
    end
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(1)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(4) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
  it "contains the titleized version of the chef's name" do
      allow(:chef).to receive(:titleize).and_return("Chef")
      expect(dessert.serve).to include("Chef")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end

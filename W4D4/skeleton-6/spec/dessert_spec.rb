require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do


  describe "#initialize" do
    subject(:dessert) {Dessert.new("sweet", 5 , "Marley")}

    it "sets a type" do
      expect(dessert.type).to eq("sweet")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end


    it "raises an argument error when given a non-integer quantity" do
      #expect{dessert.quantity}.to raise_error(ArgumentError)
    end
  end

  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("sweet", 5 , chef)}

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("cherry")
      expect(dessert.ingredients).to include('cherry')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.mix!
      expect(dessert.ingredients).to eq(dessert.ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      bucket = dessert.quantity
      dessert.eat(1)
      expect(dessert.quantity).to eq(bucket -1 )
    end
  end


    it "raises an error if the amount is greater than the quantity" do
      # expect do
      #   dessert.eat(10)
      # end.to raise_error(ArgumentError)
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Chef")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(dessert.make_more).to 
  end
end

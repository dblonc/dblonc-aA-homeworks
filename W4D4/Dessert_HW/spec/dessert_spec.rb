require 'rspec'
require 'dessert.rb'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) {Dessert.new("cake", 5, "chef")}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("cake", "five", "chef")}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect (cake.ingredients).to_not include("cream")
      cake.add_ingredient("cream")
      expect (cake.ingredients).to include ("cream")
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      expect (cake.ingredients).to_not eq (cake.mix!)
      expect (cake.mix!).to include (cake.ingredients)
    end

  end

  describe "#eat" do

    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect (cake.quantity).to eq (4)
      expect {Dessert.new("cake", 0, "chef")} (cake.eat) to raise_error
    end

    it "raises an error if the amount is greater than the quantity" do
      expect (cake.eat(6)).to raise_error
    end

  end

  describe "#serve" do

    it "contains the titleized version of the chef's name" do 
      expect (chef.serve).to include ("chef").capitalize
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    expect (chef.make_more).to include ("chef")
    expect (chef.make_more) to include ("cake")
  end

end

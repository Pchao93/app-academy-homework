require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "tom") }

  subject(:panna_cotta) { Dessert.new("Panna Cotta", 100, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(panna_cotta.type).to eq("Panna Cotta")
    end

    it "sets a quantity" do
      expect(panna_cotta.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(panna_cotta.ingredients).to be_empty
    end
    context "user follows instructions poorly" do


      it "raises an argument error when given a non-integer quantity" do
        expect { Dessert.new("bad", "100", chef) }.to raise_error(ArgumentError)
      end

    end
  end

  describe "#add_ingredient" do
    before(:each) do
      panna_cotta.add_ingredient("cream")
      panna_cotta.add_ingredient("vanilla")
      panna_cotta.add_ingredient("sugar")
    end

    it "adds an ingredient to the ingredients array" do
      expect(panna_cotta.ingredients.length).to eq(3)
    end
  end

  describe "#mix!" do

    before(:each) do
      panna_cotta.add_ingredient("cream")
      panna_cotta.add_ingredient("vanilla")
      panna_cotta.add_ingredient("sugar")
    end

    it "shuffles the ingredient array" do

      # expect(panna_cotta.ingredients).to receive(:shuffle!)
      ingredients = ["cream", "vanilla", "sugar"]
      expect(panna_cotta.ingredients).to eq(ingredients)
      panna_cotta.mix!
      expect(panna_cotta.ingredients).not_to eq(ingredients)
      expect(panna_cotta.ingredients.sort).to eq(ingredients.sort)
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      panna_cotta.eat(10)
      expect(panna_cotta.quantity).to eq(90)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { panna_cotta.eat(1000) }.to raise_error("not enough left!")
    end

  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do

      allow(chef).to receive(:titleize).and_return("Chef Tom the Great Baker")
      expect(panna_cotta.serve).to eq("Chef Tom the Great Baker has made 100 Panna Cotta!")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(panna_cotta)
      panna_cotta.make_more
    end
  end
end

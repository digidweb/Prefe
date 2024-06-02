require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  context "Name validattion" do
    it "O nome é válido" do
      restaurant = Restaurant.new(name: 'First restaurant')
      expect(restaurant).to be_valid
    end

    it "O campo nome não pode estar vazio" do
      restaurant = Restaurant.new(name: nil)
      restaurant.valid?
      expect(restaurant.erros[name]).to include("Name can't be blank")
    end
  end

  context "Address validattion" do
    it "O enderço é válido" do
      restaurant = Restaurant.new(address: 'First address')
      expect(restaurant).to be_valid
    end

    it "O enderço não é válido" do
      restaurant = Restaurant.new(address: '')
      expect(restaurant).to_not be_valid
    end
  end

  context "Stars validattion" do
    it "A nota é válida" do
      restaurant = Restaurant.new(stars: '5')
      expect(restaurant).to be_valid
    end

    it "A nota não é válida" do
      restaurant = Restaurant.new(stars: '')
      expect(restaurant).to_not be_valid
    end

    it "A nota não é válida" do
      restaurant = Restaurant.new(stars: 'Bom')
      expect(restaurant).to_not be_valid
    end
  end
end

class Food < ApplicationRecord
  belongs_to :pet

  FOOD = ["Ração seca", "Ração umida", "Ração natural", "Ração Medicamentosa"]
  BRAND = [
    "Adimax",
    "Alisul",
    "Bella Vita",
    "Biofresh",
    "Champ",
    "Cibau",
    "Dan Dog",
    "Dog Chow",
    "Dr. Stanley",
    "Equilibrio",
    "Evolve",
    "Faro",
    "Formula Natural",
    "Foster",
    "FriDog",
    "Golden",
    "Gran Plus",
    "Granvita",
    "Guabi Natural",
    "Heroi",
    "Hills",
    "Lester",
    "Lider",
    "Magic Pet",
    "Magnus",
    "Max",
    "Mon Petit Cheri",
    "N&D",
    "Naturalis",
    "Nero",
    "Optimum",
    "Origens",
    "Papapets",
    "Pedigree",
    "Pet Food Solution",
    "Premiatta",
    "Premier",
    "Pro Plan",
    "Qualiday",    
    "Quatree",
    "Royal Canin",
    "Special Dog",
    "Specialle Pet",
    "Spert Dog",
    "Supra",
    "Three Dogs",
    "Tibii",
    "Vet Life"
  ]

  validates :bag_qty_kg, :daily_qty_kg, presence: true

  def self.end_date_food(start_date, bag_qty_kg, daily_qty_g)
    qty_kg = daily_qty_g.to_f / 1000
    days_left = bag_qty_kg / qty_kg
    end_date = start_date + days_left
  end

end

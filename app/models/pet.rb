class Pet < ApplicationRecord
  belongs_to :user
  has_many :vaccines
  has_many :medications
  has_many :appointments
  has_many :foods
  has_many :baths

  has_one_attached :photo

  ENERGIA = ["Baixa", "Moderada", "Alta"]
  PORTE = ["Pequeno", "Médio", "Grande"]
  SEXO = ["Macho", "Fêmea"]
  RACA = ["SRD",
    "Akita",
    "Basset Hound",
    "Beagle",
    "Bichon Frisé",
    "Boiadeiro Australiano",
    "Boiadeiro Bernês",
    "Border Collie",
    "Borzoi",
    "Boston Terrier",
    "Boxer",
    "Buldogue Francês",
    "Buldogue Inglês",
    "Bull Terrier",
    "Cane Corso",
    "Cavalier King Charles Spaniel",
    "Chihuahua",
    "Chow Chow",
    "Cocker Spaniel Inglês",
    "Dachshund",
    "Dálmata",
    "Doberman",
    "Dogo Argentino",
    "Dogue Alemão",
    "Fila Brasileiro",
    "Golden Retriever",
    "Husky Siberiano",
    "Jack Russell Terrier",
    "Labrador Retriever",
    "Lhasa Apso",
    "Lulu da Pomerânia",
    "Maltês",
    "Mastiff Inglês",
    "Mastim Tibetano",
    "Pastor Alemão",
    "Pastor Australiano",
    "Pequinês",
    "Pinscher",
    "Poodle",
    "Poodle",
    "Poodle",
    "Pug",
    "Rottweiler",
    "Rough Collie",
    "Schnauzer",
    "Shar-Pei",
    "Shiba",
    "Shih Tzu",
    "Staffordshire Bull Terrier",
    "Weimaraner",
    "Welsh Corgi Pembroke",
    "Whippet",
    "Yakutian Laika",
    "Yorkshire"]
end

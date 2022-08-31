
puts "limpando banco de dados"
Pet.destroy_all
User.destroy_all


puts "Criando banco de dados"

elizabeth = User.new(
    first_name: "Elizabeth",
    last_name: "Alexandra Mary",
    address: "Londres SW1A 1AA, Reino Unido",
    phone: "+44 303 123 7300",
    email: "queen@segunda.uk",
    password: "123123",
    bday: "1926-04-21"
  )
elizabeth.save!

pet = Pet.new(
  name: "Tinker",
  size: "Pequeno",
  breed: "Welsh Corgi Pembroke",
  weight: 11,
  age: "2006-08-31",
  sex: "Fêmea",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Baixo"
)
pet.user = elizabeth
pet.save!

pet = Pet.new(
  name: "Harris",
  size: "Welsh Corgi Pembroke",
  breed: "Pequeno",
  weight: 12,
  age: "2008-12-25",
  sex: "Macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Baixo"
  )
pet.user = elizabeth
pet.save!

pet = Pet.new(
  name: "Pickles",
  size: "Welsh Corgi Pembroke",
  breed: "Pequeno",
  weight: 10,
  age: "2011-02-07",
  sex: "Macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Moderado"
)
pet.user = elizabeth
pet.save!

pet = Pet.new(
  name: "Chipper",
  size: " Pequeno",
  breed: "Welsh Corgi Pembroke",
  weight: 10,
  age: "2015-11-11",
  sex: "Fêmea",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Moderado"
)
pet.user = elizabeth
pet.save!

pet = Pet.new(
  name: "Cider",
  size: " Pequeno",
  breed: "Welsh Corgi Pembroke",
  weight: 10,
  age: "2019-02-30",
  sex: "Macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Alto"
)
pet.user = elizabeth
pet.save!

pet = Pet.new(
  name: "Berry",
  size: " Pequeno",
  breed: "Welsh Corgi Pembroke",
  weight: 10,
  age: "2021-04-23",
  sex: "Macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Alto"
)
pet.user = elizabeth
pet.save!

anitta = User.new(
  first_name: "Larissa",
  last_name: "Macedo Machado",
  address: "Rio de Janeiro, RJ",
  phone: "+55 21 99999-1993",
  email: "anitta@anitta.com",
  password: 123123,
  bday: "1993-03-30"
  )
anitta.save!

pet = Pet.new(
  name: "Plinio",
  size: "Médio",
  breed: "Jack Russell Terrier",
  weight: 9,
  age: "2018-08-02",
  sex: "Macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Alto"
)
pet.user = anitta
pet.save!

luiza = User.new(
  first_name: "Luiza",
  last_name: "Sonza",
  address: "Gramado, RS",
  phone: "+55 11 918071998",
  email: "luiza@sonza",
  password: 123123,
  bday: "1998-07-18"
)
luiza.save!

pet = Pet.new(
  name: "Gisele Pinschers",
  size: "Pequeno",
  breed: "Pinscher",
  weight: 4,
  age: "2018-02-05",
  sex: "Fêmea",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Moderado"
)
pet.user = luiza
pet.save!

pet = Pet.new(
  name: "Britney Spinchers",
  size: "Pequeno",
  breed: "Pinscher",
  weight: 3,
  age: "2020-07-17",
  sex: "Fêmea",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Moderado"
  )
pet.user = luiza
pet.save!

pet = Pet.new(
  name: "Duda",
  size: "Pequeno",
  breed: "Lulu da Pomerânia",
  weight: 3,
  age: "2021-08-07",
  sex: "Fêmea",
  neutered: true,
  microchipped: true,
  feeding_schedule: "3",
  energy_level: "Moderado"
  )
pet.user = luiza
pet.save!

casimiro = User.new(
  first_name: "Casimiro",
  last_name: "Miguel",
  address: "R. Baião, 88 - Realengo, Rio de Janeiro - RJ, 21730-110, Brazil",
  phone: "55 21 99876-5432",
  email: "kzil@gordola.com",
  password: "123123",
  bday: "1993-10-10"
)
casimiro.save!

pet = Pet.new(
  name: "Theo",
  size: "Médio",
  breed: "SRD",
  weight: 3,
  age: "2015-05-15",
  sex: "macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "2",
  energy_level: "alto"
  )
pet.user = casimiro
pet.save!

fabiano = User.new(
  first_name: "Fabiano",
  last_name: "Garcia",
  address: "R. Inhambu, 973 - Vila Uberabinha, São Paulo - SP, 04520-010, Brazil",
  phone: "55 11 98228-8989",
  email: "fabianogarcia000@gmail.com",
  password: "123123",
  bday: "1981-01-22"
)
fabiano.save!

pet = Pet.new(
  name: "Johnnie",
  size: "pequeno",
  breed: "Lhasa Apso",
  weight: 7,
  age: "2020-05-09",
  sex: "macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "2",
  energy_level: "baixo"
)
pet.user = fabiano
pet.save!

felipe = User.new(
  first_name: "Felipe",
  last_name: "Siqueira",
  address: "R. Nelson Mandela, 100 - Loja 127 - Botafogo, Rio de Janeiro - RJ, 22260-005, Brazil",
  phone: "55 21 99565-1313",
  email: "felipe@gmail.com",
  password: "123123",
  bday: "1987-03-15"
)
felipe.save!

pet = Pet.new(
  name: "Johnnie",
  size: "pequeno",
  breed: "Lhasa Apso",
  weight: 7,
  age: "2020-05-09",
  sex: "macho",
  neutered: true,
  microchipped: true,
  feeding_schedule: "2",
  energy_level: "baixo"
)
pet.user = felipe
pet.save!

pet = Pet.new(
  name: "Jack",
  size: "pequeno",
  breed: "Lhasa Apso",
  weight: 9,
  age: "2019-05-01",
  sex: "macho",
  neutered: true,
  microchipped: false,
  feeding_schedule: "2",
  energy_level: "baixo"
)
pet.user = felipe
pet.save!

puts "usuários criados"
puts "pets criados"

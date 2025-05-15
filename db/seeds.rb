# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleanding the DB..."

Car.destroy_all
Owner.destroy_all

puts "Generating nickname..."

nujen = Owner.create!(nickname: "Nujen2s")
goku = Owner.create!(nickname: "SonGoku")
luffy = Owner.create!(nickname: "LuffyBaka")
zoro = Owner.create!(nickname: "ZoroDeamonSlayer")
sanji = Owner.create!(nickname: "DaibleJamble")
nami = Owner.create!(nickname: "Namichuannn")
chopper = Owner.create!(nickname: "TonnyChopper")
usopp = Owner.create!(nickname: "Sokeking")

puts "Generating cars..."

Car.create!(brand: "Mercedes-Benz", model: "Maybach S 580", year: 2021, fuel: "Petrol", owner: nujen)
Car.create!(brand: "Audi", model: "TT Coupé", year: 2015, fuel: "Petrol", owner: goku)
Car.create!(brand: "Ferrari", model: "812 Superfast", year: 2018, fuel: "Petrol", owner: luffy)
Car.create!(brand: "Lamborghini", model: "Gallardo LP 560-4", year: 2013, fuel: "Petrol", owner: zoro)
Car.create!(brand: "Dacia", model: "Logan", year: 2023, fuel: "Petrol", owner: sanji)
Car.create!(brand: "Fiat", model: "Punto Easy", year: 2014, fuel: "Petrol", owner: nami)
Car.create!(brand: "Tesla", model: "Model 3", year: 2019, fuel: "Electric", owner: chopper)
Car.create!(brand: "Land Rover", model: "Range Rover Sport", year: 2020, fuel: "Diesel", owner: usopp)

puts "Done! #{Owner.count} owners and #{Car.count} created!"

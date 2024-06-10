# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Asset.destroy_all
Wallet.destroy_all
Stock.destroy_all

puts "creating user..."
user_1 = User.create(first_name: "Satoshi", last_name: "Nakamoto", email: "satoshi@btc.com", password: "123123")
user_2 = User.create(first_name: "Vitalik", last_name: "Buterin", email: "vitalik@btc.com", password: "123123")
puts "user created"

puts "creating assets..."
asset_1 = Asset.create(name: "Bitcoin", price: 65.75)
asset_2 = Asset.create(name: "Petrobras", price: 32.50)
asset_3 = Asset.create(name: "Ethereum", price: 25.60)
asset_4 = Asset.create(name: "Itau", price: 12.50)
puts "assets created"

puts "creating wallets..."
wallet_1 = Wallet.create(name: "HighRisk", user: user_1)
wallet_2 = Wallet.create(name: "Moonshots", user: user_2)
puts "wallets created"

puts "creating stocks..."
Stock.create(asset: asset_1, wallet: wallet_1, quantity: 3, initial_price: 12.10)
Stock.create(asset: asset_2, wallet: wallet_2, quantity: 4, initial_price: 2.10)

Stock.create(asset: asset_3, wallet: wallet_1, quantity: 2, initial_price: 7.10)
Stock.create(asset: asset_4, wallet: wallet_2, quantity: 8, initial_price: 2.10)
puts "stocks created"

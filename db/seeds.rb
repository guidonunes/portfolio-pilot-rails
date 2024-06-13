# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Operation.destroy_all
Wallet.destroy_all
User.destroy_all
Holding.destroy_all

puts "creating user..."
user_1 = User.create!(first_name: "Satoshi", last_name: "Nakamoto", email: "satoshi@btc.com", password: "123123")
user_2 = User.create!(first_name: "Vitalik", last_name: "Buterin", email: "vitalik@btc.com", password: "123123")
puts "user created"

puts "creating assets..."

asset_1 = Holding.create!(name: "Bitcoin", price: 6435.75, asset_type: "crypto", abreviation: 'BTC')
asset_2 = Holding.create!(name: "Ethereum", price: 9435.75, asset_type: "crypto", abreviation: 'ETH')
asset_3 = Holding.create!(name: "Litecoin", price: 1435.75, asset_type: "crypto", abreviation: 'LTC')
asset_4 = Holding.create!(name: "Shiba Inu", price: 4435.75, asset_type: "crypto", abreviation: 'SHIB')
asset_5 = Holding.create!(name: "Avalanche", price: 35.75, asset_type: "crypto", abreviation: 'AVAX')
asset_6 = Holding.create!(name: "Solana", price: 135.75, asset_type: "crypto", abreviation: 'SOL')
asset_7 = Holding.create!(name: "Binance Coin", price: 245.75, asset_type: "crypto", abreviation: 'BNB')
asset_8 = Holding.create!(name: "Dogecoin", price: 0.75, asset_type: "crypto", abreviation: 'DOGE')
# asset_2 = Holding.create!(name: "Petrobras", price: 32.50, asset_type: "fiat")
# asset_3 = Holding.create!(name: "Ethereum", price: 25.60, asset_type: "crypto")
# asset_4 = Holding.create!(name: "Itau", price: 123.50, asset_type: "fiat")
# asset_5 = Holding.create!(name: "Shiba", price: 343.50, asset_type: "crypto")
# asset_6 = Holding.create!(name: "Monero", price: 215.60, asset_type: "crypto")
# asset_7 = Holding.create!(name: "XTC", price: 122.50, asset_type: "crypto")
# asset_8 = Holding.create!(name: "Bovespa index", price: 302.50, asset_type: "fiat")
# asset_9 = Holding.create!(name: "Bradesco", price: 242.60, asset_type: "fiat")
# asset_10 = Holding.create!(name: "Ambev", price: 12.53, asset_type: "fiat")
puts "assets created"

puts "creating wallets..."
wallet_1 = Wallet.create!(name: "HighRisk", user: user_1)
wallet_2 = Wallet.create!(name: "Moonshots", user: user_2)
puts "wallets created"

puts "creating stocks..."
Operation.create!(holding: asset_1, wallet: wallet_1, quantity: 3, avg_buy_price: 12.10)
Operation.create!(holding: asset_2, wallet: wallet_2, quantity: 4, avg_buy_price: 2.10)

Operation.create!(holding: asset_3, wallet: wallet_1, quantity: 2, avg_buy_price: 7.10)
Operation.create!(holding: asset_4, wallet: wallet_2, quantity: 8, avg_buy_price: 2.10)
puts "stocks created"

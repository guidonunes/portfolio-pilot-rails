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
asset_9 = Holding.create!(name: "Dash", price: 25.93, asset_type: "crypto", abreviation: 'DASH')
asset_10 = Holding.create!(name: "Ripple", price: 0.47, asset_type: "crypto", abreviation: 'XRP')
asset_11 = Holding.create!(name: "Monero", price: 173.82, asset_type: "crypto", abreviation: 'XMR')
asset_12 = Holding.create!(name: "Raydium", price: 1.52, asset_type: "crypto", abreviation: 'RAY')
asset_13 = Holding.create!(name: "MAGA", price: 12.79, asset_type: "crypto", abreviation: 'TRUMP')
asset_14 = Holding.create!(name: "Notcoin", price: 0.017, asset_type: "crypto", abreviation: 'NOT')
asset_15 = Holding.create!(name: "BEERCOIN", price: 0.001, asset_type: "crypto", abreviation: 'BEER')
asset_16 = Holding.create!(name: "Thether USDt", price: 0.99, asset_type: "crypto", abreviation: 'USDT')
asset_17 = Holding.create!(name: "USDC", price: 1.01, asset_type: "crypto", abreviation: 'USDC')
asset_18 = Holding.create!(name: "Dai", price: 0.99, asset_type: "crypto", abreviation: 'DAI')
asset_19 = Holding.create!(name: "Pepe", price: 0.001, asset_type: "crypto", abreviation: 'PEPE')
asset_20 = Holding.create!(name: "Robin", price: 0.0001, asset_type: "crypto", abreviation: 'ROBIN')
asset_21 = Holding.create!(name: "TARS Protocol", price: 0.0252, asset_type: "crypto", abreviation: 'TAI')
asset_22 = Holding.create!(name: "Niza Global", price: 0.002, asset_type: "crypto", abreviation: 'NIZA')
asset_23 = Holding.create!(name: "Petoshi", price: 0.07, asset_type: "crypto", abreviation: 'PET')
asset_24 = Holding.create!(name: "Kirokugo", price: 0.0016, asset_type: "crypto", abreviation: 'KIRO')


asset_50 = Holding.create!(name: "Petrobras", price: 32.50, asset_type: "fiat",  abreviation: 'PTR4')
asset_51 = Holding.create!(name: "CIELO ON", price: 25.60, asset_type: "fiat", abreviation: 'CIEL3')
asset_52 = Holding.create!(name: "Itau", price: 123.50, asset_type: "fiat", abreviation: 'ITUB4')
asset_53 = Holding.create!(name: "Cogna Educacao SA", price: 343.50, asset_type: "fiat", abreviation: 'COGN4')
asset_54 = Holding.create!(name: "Magazine Luiza SA ", price: 215.60, asset_type: "fiat", abreviation: 'MGLU3')
asset_55 = Holding.create!(name: "Raizen SA Preferred", price: 122.50, asset_type: "fiat", abreviation: 'RAIZ4')
asset_56 = Holding.create!(name: "Bovespa index", price: 302.50, asset_type: "fiat", abreviation: 'BVSP')
asset_57 = Holding.create!(name: "Bradesco", price: 242.60, asset_type: "fiat", abreviation: 'BBDC4')
asset_58 = Holding.create!(name: "Ambev", price: 12.53, asset_type: "fiat", abreviation: 'ABEV3')
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

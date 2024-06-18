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

asset_1 = Holding.create!(name: "Ambev S.A.", price: HgFinance.price('abev3'), asset_type: "fiat", abreviation: 'abev3')
asset_2 = Holding.create!(name: "Alpargatas S.A.", price: HgFinance.price('alpa4'), asset_type: "fiat", abreviation: 'alpa4')
asset_3 = Holding.create!(name: "Americanas S.A.", price: HgFinance.price('amer3'), asset_type: "fiat", abreviation: 'amer3')
asset_4 = Holding.create!(name: "Assaí Atacadista", price: HgFinance.price('asai3'), asset_type: "fiat", abreviation: 'asai3')
asset_5 = Holding.create!(name: "Azul S.A.", price: HgFinance.price('azul4'), asset_type: "fiat", abreviation: 'azul4')
asset_6 = Holding.create!(name: "B3 S.A.", price: HgFinance.price('b3sa3'), asset_type: "fiat", abreviation: 'b3sa3')
asset_7 = Holding.create!(name: "Banco do Brasil S.A.", price: HgFinance.price('bbas3'), asset_type: "fiat", abreviation: 'bbas3')
asset_8 = Holding.create!(name: "Bradesco S.A.", price: HgFinance.price('bbdc3'), asset_type: "fiat", abreviation: 'bbdc3')
asset_9 = Holding.create!(name: "Bradesco S.A.", price: HgFinance.price('bbdc4'), asset_type: "fiat", abreviation: 'bbdc4')
asset_10 = Holding.create!(name: "BB Seguridade Participações S.A.", price: HgFinance.price('bbse3'), asset_type: "fiat", abreviation: 'bbse3')
asset_11 = Holding.create!(name: "Minerva S.A.", price: HgFinance.price('beef3'), asset_type: "fiat", abreviation: 'beef3')
asset_12 = Holding.create!(name: "BTG Pactual S.A.", price: HgFinance.price('bpac11'), asset_type: "fiat", abreviation: 'bpac11')
asset_13 = Holding.create!(name: "Bradespar S.A.", price: HgFinance.price('brap4'), asset_type: "fiat", abreviation: 'brap4')
asset_14 = Holding.create!(name: "BRF S.A.", price: HgFinance.price('brfs3'), asset_type: "fiat", abreviation: 'brfs3')
asset_15 = Holding.create!(name: "Braskem S.A.", price: HgFinance.price('brkm5'), asset_type: "fiat", abreviation: 'brkm5')
asset_16 = Holding.create!(name: "Cielo S.A.", price: HgFinance.price('ciel3'), asset_type: "fiat", abreviation: 'ciel3')
asset_17 = Holding.create!(name: "Cemig S.A.", price: HgFinance.price('cmig4'), asset_type: "fiat", abreviation: 'cmig4')
asset_18 = Holding.create!(name: "Copel S.A.", price: HgFinance.price('cple6'), asset_type: "fiat", abreviation: 'cple6')
asset_19 = Holding.create!(name: "Carrefour Brasil", price: HgFinance.price('crfb3'), asset_type: "fiat", abreviation: 'crfb3')
asset_20 = Holding.create!(name: "Cosan S.A.", price: HgFinance.price('csan3'), asset_type: "fiat", abreviation: 'csan3')
asset_21 = Holding.create!(name: "Companhia Siderúrgica Nacional", price: HgFinance.price('csna3'), asset_type: "fiat", abreviation: 'csna3')
asset_22 = Holding.create!(name: "CVC Brasil Operadora e Agência de Viagens S.A.", price: HgFinance.price('cvcb3'), asset_type: "fiat", abreviation: 'cvcb3')
asset_23 = Holding.create!(name: "Cyrela Brazil Realty S.A.", price: HgFinance.price('cyre3'), asset_type: "fiat", abreviation: 'cyre3')
asset_24 = Holding.create!(name: "Eletrobras S.A.", price: HgFinance.price('elet3'), asset_type: "fiat", abreviation: 'elet3')
asset_25 = Holding.create!(name: "Eletrobras S.A.", price: HgFinance.price('elet6'), asset_type: "fiat", abreviation: 'elet6')
asset_26 = Holding.create!(name: "Embraer S.A.", price: HgFinance.price('embr3'), asset_type: "fiat", abreviation: 'embr3')
asset_27 = Holding.create!(name: "Energias do Brasil S.A.", price: HgFinance.price('enbr3'), asset_type: "fiat", abreviation: 'enbr3')
asset_28 = Holding.create!(name: "Equatorial Energia S.A.", price: HgFinance.price('eqtl3'), asset_type: "fiat", abreviation: 'eqtl3')
asset_29 = Holding.create!(name: "Fleury S.A.", price: HgFinance.price('flry3'), asset_type: "fiat", abreviation: 'flry3')
asset_30 = Holding.create!(name: "Gerdau S.A.", price: HgFinance.price('ggbr4'), asset_type: "fiat", abreviation: 'ggbr4')
asset_31 = Holding.create!(name: "Metalúrgica Gerdau S.A.", price: HgFinance.price('goau4'), asset_type: "fiat", abreviation: 'goau4')
asset_32 = Holding.create!(name: "Hapvida Participações e Investimentos S.A.", price: HgFinance.price('hapv3'), asset_type: "fiat", abreviation: 'hapv3')
asset_33 = Holding.create!(name: "Hypera S.A.", price: HgFinance.price('hype3'), asset_type: "fiat", abreviation: 'hype3')
asset_34 = Holding.create!(name: "Iguatemi S.A.", price: HgFinance.price('igta3'), asset_type: "fiat", abreviation: 'igta3')
asset_35 = Holding.create!(name: "Itaúsa S.A.", price: HgFinance.price('itsa4'), asset_type: "fiat", abreviation: 'itsa4')
asset_36 = Holding.create!(name: "Itaú Unibanco S.A.", price: HgFinance.price('itub4'), asset_type: "fiat", abreviation: 'itub4')
asset_37 = Holding.create!(name: "JBS S.A.", price: HgFinance.price('jbss3'), asset_type: "fiat", abreviation: 'jbss3')
asset_38 = Holding.create!(name: "Klabin S.A.", price: HgFinance.price('klbn11'), asset_type: "fiat", abreviation: 'klbn11')
asset_39 = Holding.create!(name: "Lojas Americanas S.A.", price: HgFinance.price('lame4'), asset_type: "fiat", abreviation: 'lame4')
asset_40 = Holding.create!(name: "Lojas Renner S.A.", price: HgFinance.price('lren3'), asset_type: "fiat", abreviation: 'lren3')
asset_41 = Holding.create!(name: "Magazine Luiza S.A.", price: HgFinance.price('mglu3'), asset_type: "fiat", abreviation: 'mglu3')
asset_42 = Holding.create!(name: "Marfrig Global Foods S.A.", price: HgFinance.price('mrfg3'), asset_type: "fiat", abreviation: 'mrfg3')
asset_43 = Holding.create!(name: "MRV Engenharia e Participações S.A.", price: HgFinance.price('mrve3'), asset_type: "fiat", abreviation: 'mrve3')
asset_44 = Holding.create!(name: "Multiplan Empreendimentos Imobiliários S.A.", price: HgFinance.price('mult3'), asset_type: "fiat", abreviation: 'mult3')
asset_45 = Holding.create!(name: "Petrobras S.A.", price: HgFinance.price('petr3'), asset_type: "fiat", abreviation: 'petr3')
asset_46 = Holding.create!(name: "Petrobras S.A.", price: HgFinance.price('petr4'), asset_type: "fiat", abreviation: 'petr4')
asset_47 = Holding.create!(name: "PetroRio S.A.", price: HgFinance.price('prio3'), asset_type: "fiat", abreviation: 'prio3')
asset_48 = Holding.create!(name: "Raia Drogasil S.A.", price: HgFinance.price('radl3'), asset_type: "fiat", abreviation: 'radl3')
asset_49 = Holding.create!(name: "Raízen S.A.", price: HgFinance.price('raiz4'), asset_type: "fiat", abreviation: 'raiz4')
asset_50 = Holding.create!(name: "Rumo S.A.", price: HgFinance.price('rail3'), asset_type: "fiat", abreviation: 'rail3')


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

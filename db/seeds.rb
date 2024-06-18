# db/seeds.rb

Operation.destroy_all
Wallet.destroy_all
User.destroy_all
Holding.destroy_all

puts "creating user..."
user_1 = User.create!(first_name: "Satoshi", last_name: "Nakamoto", email: "satoshi@btc.com", password: "123123")
user_2 = User.create!(first_name: "Vitalik", last_name: "Buterin", email: "vitalik@btc.com", password: "123123")
puts "user created"

puts "creating assets..."

asset_1 = Holding.create!(name: "Ambev S.A.", current_price: HgFinance.price('abev3'), asset_type: "fiat", abbreviation: 'abev3')
asset_2 = Holding.create!(name: "Alpargatas S.A.", current_price: HgFinance.price('alpa4'), asset_type: "fiat", abbreviation: 'alpa4')
asset_3 = Holding.create!(name: "Americanas S.A.", current_price: HgFinance.price('amer3'), asset_type: "fiat", abbreviation: 'amer3')
asset_4 = Holding.create!(name: "Assaí Atacadista", current_price: HgFinance.price('asai3'), asset_type: "fiat", abbreviation: 'asai3')
asset_5 = Holding.create!(name: "Azul S.A.", current_price: HgFinance.price('azul4'), asset_type: "fiat", abbreviation: 'azul4')
asset_6 = Holding.create!(name: "B3 S.A.", current_price: HgFinance.price('b3sa3'), asset_type: "fiat", abbreviation: 'b3sa3')
asset_7 = Holding.create!(name: "Banco do Brasil S.A.", current_price: HgFinance.price('bbas3'), asset_type: "fiat", abbreviation: 'bbas3')
asset_8 = Holding.create!(name: "Bradesco S.A.", current_price: HgFinance.price('bbdc3'), asset_type: "fiat", abbreviation: 'bbdc3')
asset_9 = Holding.create!(name: "Bradesco S.A.", current_price: HgFinance.price('bbdc4'), asset_type: "fiat", abbreviation: 'bbdc4')
asset_10 = Holding.create!(name: "BB Seguridade Participações S.A.", current_price: HgFinance.price('bbse3'), asset_type: "fiat", abbreviation: 'bbse3')
asset_11 = Holding.create!(name: "Minerva S.A.", current_price: HgFinance.price('beef3'), asset_type: "fiat", abbreviation: 'beef3')
asset_12 = Holding.create!(name: "BTG Pactual S.A.", current_price: HgFinance.price('bpac11'), asset_type: "fiat", abbreviation: 'bpac11')
asset_13 = Holding.create!(name: "Bradespar S.A.", current_price: HgFinance.price('brap4'), asset_type: "fiat", abbreviation: 'brap4')
asset_14 = Holding.create!(name: "BRF S.A.", current_price: HgFinance.price('brfs3'), asset_type: "fiat", abbreviation: 'brfs3')
asset_15 = Holding.create!(name: "Braskem S.A.", current_price: HgFinance.price('brkm5'), asset_type: "fiat", abbreviation: 'brkm5')
asset_16 = Holding.create!(name: "Cielo S.A.", current_price: HgFinance.price('ciel3'), asset_type: "fiat", abbreviation: 'ciel3')
asset_17 = Holding.create!(name: "Cemig S.A.", current_price: HgFinance.price('cmig4'), asset_type: "fiat", abbreviation: 'cmig4')
asset_18 = Holding.create!(name: "Copel S.A.", current_price: HgFinance.price('cple6'), asset_type: "fiat", abbreviation: 'cple6')
asset_19 = Holding.create!(name: "Carrefour Brasil", current_price: HgFinance.price('crfb3'), asset_type: "fiat", abbreviation: 'crfb3')
asset_20 = Holding.create!(name: "Cosan S.A.", current_price: HgFinance.price('csan3'), asset_type: "fiat", abbreviation: 'csan3')
asset_21 = Holding.create!(name: "Companhia Siderúrgica Nacional", current_price: HgFinance.price('csna3'), asset_type: "fiat", abbreviation: 'csna3')
asset_22 = Holding.create!(name: "CVC Brasil Operadora e Agência de Viagens S.A.", current_price: HgFinance.price('cvcb3'), asset_type: "fiat", abbreviation: 'cvcb3')
asset_23 = Holding.create!(name: "Cyrela Brazil Realty S.A.", current_price: HgFinance.price('cyre3'), asset_type: "fiat", abbreviation: 'cyre3')
asset_24 = Holding.create!(name: "Eletrobras S.A.", current_price: HgFinance.price('elet3'), asset_type: "fiat", abbreviation: 'elet3')
asset_25 = Holding.create!(name: "Eletrobras S.A.", current_price: HgFinance.price('elet6'), asset_type: "fiat", abbreviation: 'elet6')
asset_26 = Holding.create!(name: "Embraer S.A.", current_price: HgFinance.price('embr3'), asset_type: "fiat", abbreviation: 'embr3')
asset_27 = Holding.create!(name: "Energias do Brasil S.A.", current_price: HgFinance.price('enbr3'), asset_type: "fiat", abbreviation: 'enbr3')
asset_28 = Holding.create!(name: "Equatorial Energia S.A.", current_price: HgFinance.price('eqtl3'), asset_type: "fiat", abbreviation: 'eqtl3')
asset_29 = Holding.create!(name: "Fleury S.A.", current_price: HgFinance.price('flry3'), asset_type: "fiat", abbreviation: 'flry3')
asset_30 = Holding.create!(name: "Gerdau S.A.", current_price: HgFinance.price('ggbr4'), asset_type: "fiat", abbreviation: 'ggbr4')
asset_31 = Holding.create!(name: "Metalúrgica Gerdau S.A.", current_price: HgFinance.price('goau4'), asset_type: "fiat", abbreviation: 'goau4')
asset_32 = Holding.create!(name: "Hapvida Participações e Investimentos S.A.", current_price: HgFinance.price('hapv3'), asset_type: "fiat", abbreviation: 'hapv3')
asset_33 = Holding.create!(name: "Hypera S.A.", current_price: HgFinance.price('hype3'), asset_type: "fiat", abbreviation: 'hype3')
asset_34 = Holding.create!(name: "Iguatemi S.A.", current_price: HgFinance.price('igta3'), asset_type: "fiat", abbreviation: 'igta3')
asset_35 = Holding.create!(name: "Itaúsa S.A.", current_price: HgFinance.price('itsa4'), asset_type: "fiat", abbreviation: 'itsa4')
asset_36 = Holding.create!(name: "Itaú Unibanco S.A.", current_price: HgFinance.price('itub4'), asset_type: "fiat", abbreviation: 'itub4')
asset_37 = Holding.create!(name: "JBS S.A.", current_price: HgFinance.price('jbss3'), asset_type: "fiat", abbreviation: 'jbss3')
asset_38 = Holding.create!(name: "Klabin S.A.", current_price: HgFinance.price('klbn11'), asset_type: "fiat", abbreviation: 'klbn11')
asset_39 = Holding.create!(name: "Lojas Americanas S.A.", current_price: HgFinance.price('lame4'), asset_type: "fiat", abbreviation: 'lame4')
asset_40 = Holding.create!(name: "Lojas Renner S.A.", current_price: HgFinance.price('lren3'), asset_type: "fiat", abbreviation: 'lren3')
asset_41 = Holding.create!(name: "Magazine Luiza S.A.", current_price: HgFinance.price('mglu3'), asset_type: "fiat", abbreviation: 'mglu3')
asset_42 = Holding.create!(name: "Marfrig Global Foods S.A.", current_price: HgFinance.price('mrfg3'), asset_type: "fiat", abbreviation: 'mrfg3')
asset_43 = Holding.create!(name: "MRV Engenharia e Participações S.A.", current_price: HgFinance.price('mrve3'), asset_type: "fiat", abbreviation: 'mrve3')
asset_44 = Holding.create!(name: "Multiplan Empreendimentos Imobiliários S.A.", current_price: HgFinance.price('mult3'), asset_type: "fiat", abbreviation: 'mult3')
asset_45 = Holding.create!(name: "Petrobras S.A.", current_price: HgFinance.price('petr3'), asset_type: "fiat", abbreviation: 'petr3')
asset_46 = Holding.create!(name: "Petrobras S.A.", current_price: HgFinance.price('petr4'), asset_type: "fiat", abbreviation: 'petr4')
asset_47 = Holding.create!(name: "PetroRio S.A.", current_price: HgFinance.price('prio3'), asset_type: "fiat", abbreviation: 'prio3')
asset_48 = Holding.create!(name: "Raia Drogasil S.A.", current_price: HgFinance.price('radl3'), asset_type: "fiat", abbreviation: 'radl3')
asset_49 = Holding.create!(name: "Raízen S.A.", current_price: HgFinance.price('raiz4'), asset_type: "fiat", abbreviation: 'raiz4')
asset_50 = Holding.create!(name: "Rumo S.A.", current_price: HgFinance.price('rail3'), asset_type: "fiat", abbreviation: 'rail3')

# db/seeds.rb

# Array of top 50 cryptocurrencies by market cap
cryptos = [
  { name: 'Bitcoin', abbreviation: 'BTC' },
  { name: 'Ethereum', abbreviation: 'ETH' },
  { name: 'Tether', abbreviation: 'USDT' },
  { name: 'BNB', abbreviation: 'BNB' },
  { name: 'USD Coin', abbreviation: 'USDC' },
  { name: 'XRP', abbreviation: 'XRP' },
  { name: 'Cardano', abbreviation: 'ADA' },
  { name: 'Dogecoin', abbreviation: 'DOGE' },
  { name: 'Solana', abbreviation: 'SOL' },
  { name: 'TRON', abbreviation: 'TRX' },
  { name: 'Polygon', abbreviation: 'MATIC' },
  { name: 'Polkadot', abbreviation: 'DOT' },
  { name: 'Litecoin', abbreviation: 'LTC' },
  { name: 'Avalanche', abbreviation: 'AVAX' },
  { name: 'Chainlink', abbreviation: 'LINK' },
  { name: 'Uniswap', abbreviation: 'UNI' },
  { name: 'Cosmos', abbreviation: 'ATOM' },
  { name: 'Toncoin', abbreviation: 'TON' },
  { name: 'Monero', abbreviation: 'XMR' },
  { name: 'Stellar', abbreviation: 'XLM' },
  { name: 'Internet Computer', abbreviation: 'ICP' },
  { name: 'Ethereum Classic', abbreviation: 'ETC' },
  { name: 'Bitcoin Cash', abbreviation: 'BCH' },
  { name: 'Lido DAO', abbreviation: 'LDO' },
  { name: 'TrueUSD', abbreviation: 'TUSD' },
  { name: 'Filecoin', abbreviation: 'FIL' },
  { name: 'Hedera', abbreviation: 'HBAR' },
  { name: 'Arbitrum', abbreviation: 'ARB' },
  { name: 'Quant', abbreviation: 'QNT' },
  { name: 'NEAR Protocol', abbreviation: 'NEAR' },
  { name: 'VeChain', abbreviation: 'VET' },
  { name: 'Aptos', abbreviation: 'APT' },
  { name: 'Aave', abbreviation: 'AAVE' },
  { name: 'The Graph', abbreviation: 'GRT' },
  { name: 'Algorand', abbreviation: 'ALGO' },
  { name: 'Frax Share', abbreviation: 'FXS' },
  { name: 'Decentraland', abbreviation: 'MANA' },
  { name: 'Tezos', abbreviation: 'XTZ' },
  { name: 'Fantom', abbreviation: 'FTM' },
  { name: 'Elrond', abbreviation: 'EGLD' },
  { name: 'Theta Network', abbreviation: 'THETA' },
  { name: 'Stacks', abbreviation: 'STX' },
  { name: 'Axie Infinity', abbreviation: 'AXS' },
  { name: 'Sandbox', abbreviation: 'SAND' },
  { name: 'Flow', abbreviation: 'FLOW' },
  { name: 'Kava', abbreviation: 'KAVA' },
  { name: 'Zcash', abbreviation: 'ZEC' },
  { name: 'Helium', abbreviation: 'HNT' },
  { name: '1inch', abbreviation: '1INCH' },
  { name: 'Loopring', abbreviation: 'LRC' }
]

# Seed the database with the top 50 cryptocurrencies
cryptos.each do |crypto|
  Holding.create!(
    name: crypto[:name],
    current_price: 0.0,
    asset_type: 'crypto',
    abbreviation: crypto[:abbreviation]
  )
end


puts "creating wallets..."
wallet_1 = Wallet.create!(name: "HighRisk", user: user_1)
wallet_2 = Wallet.create!(name: "Moonshots", user: user_2)
puts "wallets created"

puts "creating stocks..."
Operation.create!(holding: asset_1, wallet: wallet_1, quantity: 3, price: 12.10)
Operation.create!(holding: asset_2, wallet: wallet_2, quantity: 4, price: 2.10)

Operation.create!(holding: asset_3, wallet: wallet_1, quantity: 2, price: 7.10)
Operation.create!(holding: asset_4, wallet: wallet_2, quantity: 8, price: 2.10)
puts "stocks created"

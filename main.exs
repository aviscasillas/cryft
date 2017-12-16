# user_wallet = ETH.Wallet.create
user_address = "0x53F3404BB95FFBF4A12460C33CFFD4AAFD75C56F" #user_wallet[:eth_address]

IO.puts "New Address: #{user_address}"

master_pk = "c87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3"
master_address = "0x627306090abab3a6e1400e9345bc60c78a8bef57"

ETH.send_transaction(%{from: master_address, to: user_address, value: 1}, master_pk)

transfered_balance = ETH.get_balance(user_address, :ether)
IO.puts "Current balance: #{transfered_balance}"

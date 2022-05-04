accoun: 0x39DD8AD00a9b68341333a1a84276E8DeBa222474
password: 1234

-------------
cd ~/dev/blockchains/Aliquida/go-aliquida
rm -r ./test-node/geth/
./build/bin/geth init ./test-node/genesis.json --datadir ./test-node/

./build/bin/geth --datadir ./test-node/ --unlock 0x39DD8AD00a9b68341333a1a84276E8DeBa222474  --allow-insecure-unlock   --password ./test-node/password.txt  --nodiscover --http.addr 192.168.100.205  --networkid 1398 --http --mine --miner.etherbase 0x39DD8AD00a9b68341333a1a84276E8DeBa222474



{

    WARN [04-22|23:03:22.560] Served eth_estimateGas                   conn=192.168.100.205:33882 reqid=9 duration="374.229µs" err="err: insufficient funds for gas * price + value: address 0x035340F6695468C82E9D6e97D083Fef6ff7cb7Fd have 100000000000000000 want 8000000000000000000000 (supplied gas 2553775)"
}




!(msg.From() == common.HexToAddress("0x035340F6695468C82E9D6e97D083Fef6ff7cb7Fd"))
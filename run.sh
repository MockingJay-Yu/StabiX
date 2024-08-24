source .env

if [ "$1" == "sepolia" ]; then
    RPC_URL=$SEPOLIA_RPC_URL
elif [ "$1" == "mainnet" ]; then
    RPC_URL=$MAINNET_RPC_URL
fi

forge script script/DeployDSC.s.sol --rpc-url $RPC_URL \
                                    --private-key $PRIVATE_KEY \
                                    --broadcast \
                                    --verify --etherscan-api-key $ETHERSCAN_API_KEY

source .env

if [ "$1" == "sepolia" ]; then
    RPC_URL=$SEPOLIA_RPC_URL
elif [ "$1" == "arbitrum" ]; then
    RPC_URL=$ARBITRUM_RPC_URL
fi

if [ "$2" == "sepolia" ]; then
    PRIVATE_KEY=$SEPOLIA_PRIVATE_KEY
elif [ "$2" == "arbitrum" ]; then
    RPC_URL=$POLYGON_PRIVATE_KEY
fi

forge script script/DeployDSC.s.sol --rpc-url $RPC_URL \
                                    --private-key $PRIVATE_KEY \
                                    --broadcast \
                                    --verify --etherscan-api-key $ETHERSCAN_API_KEY

source .env

if [ "$1" == "sepolia" ]; then
    RPC_URL=$SEPOLIA_RPC_URL
    PRIVATE_KEY=$SEPOLIA_PRIVATE_KEY
    SCAN_API_KEY=$ETHERSCAN_API_KEY
elif [ "$1" == "arbitrum" ]; then
    RPC_URL=$ARBITRUM_RPC_URL
    PRIVATE_KEY=$ARBITRUM_PRIVATE_KEY
    SCAN_API_KEY=$ARBISCAN_API_KEY
fi

forge script script/DeployDSC.s.sol --rpc-url $RPC_URL \
                                    --private-key $PRIVATE_KEY \
                                    --broadcast \
                                    --verify --etherscan-api-key $SCAN_API_KEY

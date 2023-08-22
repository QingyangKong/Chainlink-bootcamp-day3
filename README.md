# Chainlink-bootcamp-day3
The Demo codes for CCIP cross-chain NFT use case.

## Instructions
1. Get ETH tokens on Ethereum Sepolia testnet from [Chainlink Faucets](https://faucets.chain.link/sepolia).
2. Get AVAX and LINK tokens on Avalanche Fuji testnet from [Chainlink Fuji Faucet](https://faucets.chain.link/fuji)
3. Open Remix online IDE.
4. Swtich metamask to Sepolia testnet.
5. Deploy the smart contract `MyNFT.sol` on Sepolia testnet.
6. Get the address of `MyNFT.sol`.
7. Deploy the smart contract `DestChainReceiver.sol` on Sepolia testnet with address of `MyNFT.sol` and CCIP Sepolia router address. You can find the address [here](https://docs.chain.link/ccip/supported-networks#ethereum-sepolia).
8. Switch metamask to Avalanche Fuji network, and find the RPC info [here](https://chainlist.org/chain/43113) if you do not have the network in you metamask.
9. Deploy the smart contract `SourceChainMinter.sol` on Avalanche Fuji testnet. You will need deploy with [CCIP Fuji router address](https://docs.chain.link/ccip/supported-networks#avalanche-fuji) and [LINK token Address on Fuji](https://docs.chain.link/resources/link-token-contracts?parent=gettingStarted#fuji-testnet).
10. Transfer 2 AVAX and 3 LINK tokens to `SourceChainMinter.sol`.
11. Call function `sendMessage` to mint NFT with AVAX tokens as gas fee. Parameters are as follow:
    
    1. `destinationChainSelector`: find ChainSelector for Sepolia [here](https://docs.chain.link/ccip/supported-networks#ethereum-sepolia).
    2. `receiver`: this is the address of `DestChainReceiver.sol` in step 6.
    3. `feeToken`: select 0 to pay AVAX for gas fee.

12. Call function `sendMessage` to mint NFT with LINK tokens as gas fee. Parameters are as follow:
    
    1. `destinationChainSelector`: find ChainSelector for Sepolia [here](https://docs.chain.link/ccip/supported-networks#ethereum-sepolia).
    2. `receiver`: this is the address of `DestChainReceiver.sol` in step 6.
    3. `feeToken`: select 1 to pay LINK for gas fee.

13. Head to [Opensea testnet](https://testnets.opensea.io/account/collected) to check your minted NFT. You will find 2 NFT collected under your profile

## Smart contracts
- `MyNFT.sol`: ERC-721 smart contract.
- `DestChainReceiver.sol`: Receive message from Chainlink CCIP on destination chain.
- `SourceChainMinter.sol`: Send mint message to Chainlink CCIP on source chain.
## Tips
- Please use Avalanche Fuji as source chain since the source finalized faster than others.
- You can choose Polygon Mumbai and Ethereum Sepolia as destination chain since the NFT can be displayed on Opensea testnet.
- Ask Frank if you cannot get the test tokens.

## Certificate
- If you complete the CCIP steps above, let Frank know and you can get a gift and NFT certificate.

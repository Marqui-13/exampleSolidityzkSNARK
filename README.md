# zkSNARK Smart Contract Example

This repository presents a zkSNARK (Zero-Knowledge Succinct Non-Interactive Argument of Knowledge) smart contract example implemented in Solidity for the Ethereum blockchain. The contract showcases a basic zero-knowledge proof mechanism, demonstrating how to verify a proof without revealing the underlying data.

## Prerequisites

To interact with or deploy this smart contract, you will need:

- [Node.js](https://nodejs.org/en/) (Recommended version 12 or higher)
- [Truffle Suite](https://www.trufflesuite.com/) for compiling and deploying smart contracts
- [Ganache](https://www.trufflesuite.com/ganache) for a personal Ethereum blockchain
- MetaMask extension for your browser

## Installation

Clone this repository to get started with the zkSNARK smart contract example:


git clone https://github.com/Marqui-13/zkSNARK-smart-contract-example.git


Navigate to the project directory and install dependencies:


cd zkSNARK-smart-contract-example
npm install


## Usage

Compile the smart contract using Truffle:


truffle compile


Deploy the contract to Ganache or any Ethereum testnet using Truffle:


truffle migrate


To interact with the contract, you can use Truffle's console:


truffle console


Example of verifying a proof:


const contract = await ZkSnarkExample.deployed()
const proof = { a: 1, b: 2, c: 3 }
contract.verifyProof(proof).then(console.log)


## Smart Contract Overview

The contract `ZkSnarkExample` contains a basic implementation of a zero-knowledge proof verification function. It defines two constants `p` and `q` for the prime field over which computations are performed, and a `Proof` struct representing a proof. The `verifyProof` function demonstrates a simple verification algorithm.

## Contributing

We welcome contributions to improve the smart contract or enhance the documentation. Please feel free to fork the repository, make changes, and submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Solidity documentation and community for guidance on smart contract development.
- zkSNARKs researchers and developers for advancing zero-knowledge proofs.
# 🔒 ZK-Identity Verifier

A privacy-preserving identity verification system using Zero-Knowledge Proofs (zk-SNARKs).

## 🚀 Overview
This project allows users to prove specific attributes about their identity (like being over 18 years old or belonging to a specific group) without revealing their private information (like exact DOB or Name) on-chain.

## 🛠️ Tech Stack
- **ZKP Tooling:** Circom, SnarkJS
- **Blockchain:** Ethereum / Polygon
- **Smart Contracts:** Solidity
- **Language:** JavaScript (for proof generation)

## 💡 How it works
1. **Circuit:** Defined in `circom`, it checks if `input_age >= 18`.
2. **Proof:** User generates a proof locally on their device.
3. **Verification:** The `Verifier.sol` contract checks the proof on-chain. If valid, the user is verified!

## 🔧 Installation & Usage
1. Install Circom: `npm install -g snarkjs`
2. Compile Circuit: `circom circuits/identity.circom --r1cs --wasm`
3. Generate Proof: `snarkjs groth16 setup ...`
4. Verify on-chain: Use the `Verifier.sol` contract.

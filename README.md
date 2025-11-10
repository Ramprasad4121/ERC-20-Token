# ERC-20 Token

<!-- <div align="center">
  <a href="https://github.com/Ramprasad4121/ERC-20-Token">
    <img src="https://avatars.githubusercontent.com/u/12345678?v=4" alt="ERC-20 Logo" width="100" height="100"> <!-- Replace with actual logo if available -->
  <!-- </a>
</div> --> 

<div align="center">
  Secure ERC-20 Token Implementation with Foundry
  <br />
  <a href="#about"><strong>Explore the demo »</strong></a>
  <br />
  <br />
  <a href="https://github.com/Ramprasad4121/ERC-20-Token/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report a Bug</a>
  ·
  <a href="https://github.com/Ramprasad4121/ERC-20-Token/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request a Feature</a>
  ·
  <a href="https://github.com/Ramprasad4121/ERC-20-Token/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask a Question</a>
</div>

<div align="center">
<br />

[![Solidity](https://img.shields.io/badge/Solidity-^0.8.20-blue)](https://soliditylang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-green)](LICENSE)

</div>

<details open="open">
<summary>Table of Contents</summary>

- [ERC-20 Token](#erc-20-token)
  - [About](#about)
    - [Built With](#built-with)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Usage](#usage)
    - [Local Development](#local-development)
    - [Testnet Deployment (Sepolia)](#testnet-deployment-sepolia)
    - [Testing](#testing)
    - [Interactions (Post-Deployment)](#interactions-post-deployment)
    - [Other Commands](#other-commands)
  - [Roadmap](#roadmap)
  - [Support](#support)
  - [Project Assistance](#project-assistance)
  - [Contributing](#contributing)
  - [Authors \& Contributors](#authors--contributors)
  - [Security](#security)
  - [License](#license)
  - [Acknowledgements](#acknowledgements)

</details>

---

## About

A production-ready ERC-20 token contract built with Foundry for seamless development, testing, and deployment. It leverages OpenZeppelin's battle-tested standards to ensure security, compliance, and interoperability on Ethereum and compatible chains. Ideal for developers learning or deploying fungible tokens—solves tokenization needs with transfer, approval, and balance management.

Why this project? To showcase modern Solidity practices, unit/forked testing, and testnet integration in a minimal, extensible setup.

<!-- <details>
<summary>Screenshots</summary>
<br>

|                               Local Deployment Console                               |                               Test Coverage Report                               |
| :-------------------------------------------------------------------: | :--------------------------------------------------------------------: |
| <img src="docs/images/deploy-local.png" title="Anvil Deployment" width="100%"> | <img src="docs/images/coverage-report.png" title="Test Coverage" width="100%"> |

> Add actual screenshots of `make anvil`, `make deploy`, and `forge coverage` outputs for visual appeal.

</details> -->

### Built With

- [Foundry](https://book.getfoundry.sh/) (Forge, Cast, Anvil) – Latest stable
- [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts) v4.x – Secure ERC-20 base
- Solidity ^0.8.0
- [Make](https://www.gnu.org/software/make/) – Task automation
- [Alchemy](https://alchemy.com/) – Sepolia RPC

## Getting Started

### Prerequisites

- Git (`git --version`)
- Foundry (`curl -L https://foundry.paradigm.xyz | bash && foundryup`; then `forge --version`)
- Node.js (for potential scripts; optional)
- MetaMask for testnet interactions

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/Ramprasad4121/ERC-20-Token.git
   cd ERC-20-Token
   ```

2. Install dependencies:
   ```bash
   forge install
   forge build
   ```

3. Install OpenZeppelin (if not auto-pinned):
   ```bash
   forge install OpenZeppelin/openzeppelin-contracts --no-commit
   ```

4. Copy `.env.example` to `.env` and fill vars (e.g., `SEPOLIA_RPC_URL`, `PRIVATE_KEY` from Alchemy/MetaMask).

## Usage

Deploy, test, and interact with your ERC-20 token effortlessly.

### Local Development

- Start Anvil node:
  ```bash
  make anvil
  ```

- Deploy locally:
  ```bash
  make deploy
  ```
  *Outputs contract address for interactions.*

### Testnet Deployment (Sepolia)

1. Fund account via [Chainlink Faucet](https://faucets.chain.link/).
2. Deploy:
   ```bash
   make deploy ARGS="--network sepolia"
   ```
3. Verify on [Etherscan](https://sepolia.etherscan.io/):
   ```bash
   make verify ARGS="--network sepolia"
   ```

### Testing

- Unit tests:
  ```bash
  forge test
  ```

- Forked tests (live Sepolia data):
  ```bash
  forge test --fork-url $SEPOLIA_RPC_URL
  ```

- Coverage:
  ```bash
  forge coverage --report lcov
  ```

### Interactions (Post-Deployment)

Use Cast for calls:
```bash
# Transfer tokens
cast send <CONTRACT_ADDRESS> "transfer(address,uint256)" <RECIPIENT> <AMOUNT> \
  --private-key $PRIVATE_KEY --rpc-url $SEPOLIA_RPC_URL

# Check balance
cast call <CONTRACT_ADDRESS> "balanceOf(address)" <OWNER> --rpc-url $SEPOLIA_RPC_URL
```

### Other Commands

- Format code: `forge fmt`
- Gas snapshot: `forge snapshot`
- Clean: `make clean`

## Roadmap

See [open issues](https://github.com/Ramprasad4121/ERC-20-Token/issues) for features and bugs.

- [Top Enhancements](https://github.com/Ramprasad4121/ERC-20-Token/issues?q=label%3Aenhancement+is%3Aopen+sort%3Areactions-%2B1-desc) (👍 to vote)
- [Top Bugs](https://github.com/Ramprasad4121/ERC-20-Token/issues?q=is%3Aissue+is%3Aopen+label%3Abug+sort%3Areactions-%2B1-desc) (👍 to vote)
- [Recent Issues](https://github.com/Ramprasad4121/ERC-20-Token/issues?q=is%3Aopen+sort%3Aupdated-desc)

Future: Add VRF integration, multicall support, CI/CD with GitHub Actions.

## Support

- [GitHub Issues](https://github.com/Ramprasad4121/ERC-20-Token/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+) – For questions/bugs.
- [Discussions](https://github.com/Ramprasad4121/ERC-20-Token/discussions) – General chat.
- Twitter: [@0xramprasad](https://twitter.com/0xramprasad) – Quick queries.

## Project Assistance

Support development:
- ⭐ [Star on GitHub](https://github.com/Ramprasad4121/ERC-20-Token)
- Tweet: "Check out this ERC-20 Foundry template! #Solidity #Ethereum"
- Blog on [Dev.to](https://dev.to/) or [Medium](https://medium.com/)

## Contributing

Contributions welcome! Fork, branch, PR with tests.

1. Fork & clone.
2. Create feature branch: `git checkout -b feature/AmazingFeature`.
3. Commit: `git commit -m 'Add some AmazingFeature'`.
4. Push & PR.

See [CONTRIBUTING.md](docs/CONTRIBUTING.md) for details. Thanks! ❤️

## Authors & Contributors

- [Ramprasad](https://github.com/Ramprasad4121) – Creator & Maintainer

Full list: [Contributors](https://github.com/Ramprasad4121/ERC-20-Token/contributors)

## Security

Uses OpenZeppelin's audited code. Still, audit before mainnet. Report vulns privately via [SECURITY.md](docs/SECURITY.md). Provided "as is"—no warranties.

## License

MIT License. See [LICENSE](LICENSE) for details.

## Acknowledgements

- [OpenZeppelin](https://openzeppelin.com/) – Core contracts.
- [Foundry Book](https://book.getfoundry.sh/) – Dev tools.
- [Alchemy](https://alchemy.com/) – RPC provider.
- Community inspirations from Ethereum docs.
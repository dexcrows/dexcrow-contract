const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemnoicPhrase = 'wine churn waste cabbage admit security brisk knife swallow fancy rib observe';

module.exports = {

  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      from: '0x303de46de694cC75A2F66dA93Ac86c6a6EeE607e',
      network_id: '*', // Match any network id
      provider: new HDWalletProvider(
          mnemnoicPhrase,
          'http://localhost:8545',
      ),
      gas: 450000000,
      gasPrice: 100000000000,
    },
  },
  compilers: {
    solc: {
      version: '0.6.9+commit.3e3065ac',
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        },
      },
    },
  },
};

const fs = require('fs')
const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemonicPhrase = fs.readFileSync('.secret').toString().trim();

module.exports = {

  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      network_id: '*', // Match any network id
      provider: new HDWalletProvider(
        mnemonicPhrase,
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

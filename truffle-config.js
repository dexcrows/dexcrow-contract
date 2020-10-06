const HDWalletProvider = require('@truffle/hdwallet-provider');
const mnemnoicPhrase = 'wine churn waste cabbage admit security brisk knife swallow fancy rib observe';
// module.exports = {
  // Uncommenting the defaults below 
  // provides for an easier quick-start with Ganache.
  // You can also follow this format for other networks;
  // see <http://truffleframework.com/docs/advanced/configuration>
  // for more details on how to specify configuration options!
  //
  //networks: {
  //  development: {
  //    host: "127.0.0.1",
  //    port: 7545,
  //    network_id: "*"
  //  },
  //  test: {
  //    host: "127.0.0.1",
  //    port: 7545,
  //    network_id: "*"
  //  }
  //}
  //

// }
module.exports = {

  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
      host: 'localhost',
      port: 8545,
      from: '0x303de46de694cC75A2F66dA93Ac86c6a6EeE607e',
      network_id: '*', // Match any network id
      // provider: () => new HDWalletProvider({
      //   mnemonic: {mnemnoicPhrase},
      //   providerOrUrl: 'http://127.0.0.1:8545',
      //   derivationPath: "m/44'/1'/0'/0/"
      // }),
      provider: new HDWalletProvider(
        'wine churn waste cabbage admit security brisk knife swallow fancy rib observe',
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

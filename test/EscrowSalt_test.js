const { accounts, contract } = require('@openzeppelin/test-environment');
const { expect } = require('chai');

// Use the different accounts, which are unlocked and funded with Ether
const [ admin, deployer, user ] = accounts;

// Load compiled artifacts
const EscrowSalt = contract.fromArtifact('EscrowSalt');

// Start test block
describe('EscrowSalt', function () {
  const [ owner ] = accounts;

  beforeEach(async function () {
    // Deploy a new  contract for each test
    this.contract = await EscrowSalt.new({ from: owner });
  });

  // Test case
  it('retrieve a new salt in bytes32', async function () {
    // Create a new salt - recall that only the owner account can do this!
    await this.contract.getSalt("", { from: owner });

    // Test if the returned value is in bytes32
    expect((await this.contract.getSalt().typeof(bytes32)));
  });
});
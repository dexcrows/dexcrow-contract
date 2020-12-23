const EscrowFactory = artifacts.require("EscrowFactory");
const EscrowSalt = artifacts.require("EscrowSalt");

module.exports = function(deployer) {
  deployer.deploy(EscrowFactory);
  deployer.deploy(EscrowSalt);
};

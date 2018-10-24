var Machine = artifacts.require("./Machine.sol");

module.exports = function(deployer) {
  deployer.deploy(Machine);
};
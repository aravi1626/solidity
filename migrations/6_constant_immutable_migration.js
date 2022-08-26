const Constants = artifacts.require('Constants');
const Immutables = artifacts.require('Immutables');

module.exports = (deployer) => {
  deployer.deploy(Constants);
  deployer.deploy(Immutables);
};

const RedToken = artifacts.require('RedToken');

module.exports = function (deployer) {
  deployer.deploy(RedToken);
};

const Token = artifacts.require('RedToken');
const assert = require('assert');

contract('Token', (accounts) => {
  const BUYER = accounts[1];
  const ACTIVE_TOKEN = 0;

  it('should allow a user to buy Red Token', async () => {
    const instance = await Token.deployed();
    console.log(instance, 'instance');
    const redToken = await instance.tokens(ACTIVE_TOKEN);

    await instance.methods
      .buyTokens(ACTIVE_TOKEN, {
        from: BUYER,
        value: redToken.price,
      })
      .sendTransaction();
  });
});

const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const TokenModule = buildModule("TokenModule", (m) => {
  const Token = m.contract("Token");

  return { Token };
});

module.exports = TokenModule;
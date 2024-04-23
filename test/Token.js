const { expect } = require("chai");

// ethers.js est une librairie qui permet d'intéragir avec les contracts

describe(" ici on ecrit le contexte de test", function() {
    it("should send the total to the owner", async function() {
        const [owner] = await ethers.getSigners();

        const Token = await ethers.deployContract("Token");

        const ownerBalance = await Token.balanceOf(owner.address);

        expect(await Token.totalSupply()).to.equal(ownerBalance);
    });
});
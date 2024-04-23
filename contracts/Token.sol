//SDPX-License-Identifier: Unlicense

pragma solidity ^0.8.24;

import "hardhat/console.sol";

// La ligne ci dessous permet de déclarer le contrat
contract Token {
    string public name = "Token";
    string public symbol = "tok";

    // La ligne ci dessous permet de déclarer une variable de type uint
    uint256 public totalSupply = 1000000;

    address public owner; // cette ligne permet de déclarer une variable de type address

    // La ligne ci dessous permet de déclarer un mapping
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);

    // La ligne ci dessous permet de déclarer un constructeur 
    // Le constructeur est une fonction qui est exécutée une seule fois lors du déploiement du contrat
    // ici le constructeur initialise le propriétaire du contrat et lui donne tout le totalSupply
    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    // La ligne ci dessous permet de déclarer une fonction
    // Cette fonction permet de transférer des tokens
    function transfer(address to, uint256 value)external {
        // La ligne ci dessous permet de vérifier si le propriétaire du contrat est celui qui appelle la fonction
        require(balances[msg.sender] >= value, "Insufficient balance");

        // La ligne ci dessous permet de vérifier si l'adresse de destination est différente de l'adresse de l'expéditeur
        balances[msg.sender] -= value;
        balances[to] += value;
        // La ligne ci dessous permet d'émettre un événement dans notre cas c'est l'événement Transfer 
        emit Transfer(msg.sender, to, value);
    }

    function balanceOf(address owner) external view returns (uint256) {
        return balances[owner];
    }

}
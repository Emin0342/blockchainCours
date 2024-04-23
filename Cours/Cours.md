# Blockchain 


## ERC20

C'est un standard pour les jetons fongibles sur la blockchain Ethereum. il permet de créer des jetons qui peuvent être échangés, transférés de manière standardisée.

voici les methodes principalement utilisées dans un contrat ERC20:

```js
function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
 
```

TP ERC20: 

Pour créer un contract ERC20 vous pouvez utiliser OpenZeppelin contracts, une bibliothèque de contrats intelligents pour Ethereum.

- En implémentant IERC20
- En héritant de ERC20
- un créant un contrat from scratch


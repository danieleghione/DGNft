// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

import "github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/token/ERC721/ERC721.sol";

contract dgnft is ERC721 {
    uint256 public TokenNumero;
    
    constructor (string memory name, string memory symbol) public ERC721 (name, symbol){
        TokenNumero = 0;
    }

    function creaNFT(string memory tokenURI) public returns (uint256) {

        uint256 newNFTTokenId = TokenNumero;
        _safeMint(msg.sender, newNFTTokenId);
        _setTokenURI(newNFTTokenId, tokenURI);
        TokenNumero = TokenNumero + 1;
        return newNFTTokenId;
    }

}

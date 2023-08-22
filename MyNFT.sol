// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    constructor() ERC721("MyNFT", "MN") {}
    string constant TOKEN_URI = "https://ipfs.io/ipfs/QmYuKY45Aq87LeL1R5dhb1hqHLp6ZFbJaCP8jxqKM1MX6y/babe_ruth_1.json";
    uint256 public tokenId;

    function safeMint(address to)
        public
    {
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, TOKEN_URI);
        tokenId++;
    }
}
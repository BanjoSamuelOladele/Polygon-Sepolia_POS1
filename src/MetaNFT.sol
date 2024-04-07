// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract MetaNFT is ERC721A {
    uint8 public maxSupply = 5;

    constructor() ERC721A("DleexNft", "DNT") {}

    function safeMint(uint8 _quantity) external payable {
        _safeMint(msg.sender, _quantity);
    }

    function promptDescription() external pure returns (string memory) {
        return "Generate an image of ethereum and polygon in mars";
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://QmVk7iJ9R3uoXBKrMVZDSJvm1MmRK5jFdZ7iBCLjozgLx7/";
    }
}
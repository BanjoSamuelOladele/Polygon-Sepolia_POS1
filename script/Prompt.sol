

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MetaNFT} from "src/MetaNFT.sol";

contract Prompting is Script{

    MetaNFT private nft;

    function setUp() external {
        nft = MetaNFT(0x89B5c9cf2DfB1e84A0FF0B8Ca75Ae76F19825A2F);
    }

    function run() external {
        vm.startBroadcast();
        string memory description = nft.promptDescription();

        console.log(description);
    }
}
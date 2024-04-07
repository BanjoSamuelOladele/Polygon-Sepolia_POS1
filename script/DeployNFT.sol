// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MetaNFT} from "src/MetaNFT.sol";

contract DeployNFT is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        MetaNFT metaNft = new MetaNFT();
    }
}

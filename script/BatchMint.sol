// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MetaNFT} from "src/MetaNFT.sol";


contract BatchMintTokens is Script{

    MetaNFT private nft;
    address private constant eoa = 0xD622804Abc76b6b35A7d0382Eee173903c127E2c;

    function setUp() external{
        nft = MetaNFT(0x89B5c9cf2DfB1e84A0FF0B8Ca75Ae76F19825A2F);
    }
    function run() external {
        vm.startBroadcast();
        uint balanceBefore = nft.balanceOf(eoa);
        nft.safeMint(5);
        uint balanceAfterMinting = nft.balanceOf(eoa);
        console.log("balance before is ::", balanceBefore, " balance after is :: ", balanceAfterMinting);
    }
}
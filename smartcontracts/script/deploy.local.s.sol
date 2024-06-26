// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Script, console2} from "forge-std/Script.sol";
import {Vrum} from "../src/Vrum.sol";

contract Local is Script {
    Vrum vrum;

    function setUp() public {}

    function run() public {
        vm.startBroadcast(0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80);

        vrum = new Vrum("ipfs://Qmcjsq941CGGcFFKq8VJxVjbbMKH9QCsx8JfgpGJnGzxK1/");
        console2.log("Deployed contract: ", address(vrum));

        vm.stopBroadcast();
    }
}

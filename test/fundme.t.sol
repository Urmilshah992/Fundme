// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract testFundme is Test {
    FundMe fundme;

    function setUp() external {
        fundme = new FundMe(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
    }

    function testmininmumUSD() public view {
        assertEq(fundme.MINIMUM_USD(), 5e18);
    }

    function testowner() public view {
        assertEq(fundme.i_owner(), address(this));
    }

    function testpriceaggreator() public view {
        uint256 a = fundme.getVersion();
        assertEq(a, 4);
    }
}

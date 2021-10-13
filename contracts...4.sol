pragma solidity ^0.7.0;
contract B {
    address public temp1;
    uint256 public temp2;
    string public g;
    function test(string memory gass) public returns (string memory) {
        temp1 = msg.sender;
        temp2 = 100;
        g=gass;
        return g;
    }
}
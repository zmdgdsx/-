pragma solidity ^0.5.2;
contract sc{
    function echo(address a,address b) public returns(bool) {
        return a>b;
    }
}
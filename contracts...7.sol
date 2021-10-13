pragma solidity ^0.7.0;

contract map {
    uint[] public feng; 
    function ddd(uint x) public { 
        feng.push(x); 
        
    } 
    function cal_addr(uint p) public pure returns(uint res1,bytes32 res2) { 
        res1 = uint(keccak256(abi.encodePacked(p))); res2 = keccak256(abi.encodePacked(p)); 
    }
}
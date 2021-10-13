pragma solidity ^0.7.0;

contract map {
    mapping(uint => uint) public feng; 
    mapping(address => uint) public feng1; 
    mapping(string => uint) public feng2; 
    mapping (uint => mapping (address => bool)) public confirmations;
    mapping(bytes=>uint) public c;
    mapping(bool=>uint) public d;
    function ddll(bool x) public{
        d[x]=100;
    }
    function dddl(bytes memory x,uint y) public { 
        c[x] = y; 
        
    } 
    function ddd(uint x,uint y) public { 
        feng[x] = y; 
        
    } 
    function addd(address x,uint y) public { 
        feng1[x] = y; 
        
    } 
    function adddd(string memory x,uint y) public{
        feng2[x]=y;
    }
    function calll_addr(uint k, uint p,uint q) public pure returns(bytes32 res) {
        res = keccak256(abi.encodePacked(p,keccak256(abi.encodePacked(k, q)))); 
    }
    function call_addr(uint k, uint p,uint q,uint m) public pure returns(bytes32 res) {   //qian tao ying she嵌套映射 lei tui类推 
        res = keccak256(abi.encodePacked(m,keccak256(abi.encodePacked(p,keccak256(abi.encodePacked(k, q)))))); 
    }
    function cal_addr(string memory k, uint p) public pure returns(bytes32 res) {
        res = keccak256(abi.encodePacked(k, p)); 
    }
    function cc_cddr(bytes memory k, uint p) public pure returns(bytes32 res) {
        res = keccak256(abi.encodePacked(k, p)); 
    }
    function c_addr(uint k, uint p) public pure returns(bytes32 res) {
        res = keccak256(abi.encodePacked(k, p)); 
    }
}

//pzhu cha cao主插槽   k jian键 
//can shu shun xu参数顺序 
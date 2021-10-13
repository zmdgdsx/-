pragma solidity ^0.7.0;
contract sc{
    bytes32[] public s;
    function add(bytes32 x) public {
        s.push(x);
    }
    bytes32 data=0x9c00a8a7dd1f8a6d0193ad24a822b99863470f2ae6eea9ca3ee8aec4c155433a;
    function echo() public view returns(bytes8 res){
       return bytes8(data);
    }
    function echo1() public view returns(uint64 res){
       return uint64(bytes8(data));
    }
    function echo2() public view returns(uint32 res){
       return uint32(uint64(bytes8(data)));
    }
    function echo3(uint64 x) public view returns(uint32){
        return uint32(uint64(x));
    }
}
11241170108839594605
4294967296
8589934592

0xbbe5ea5d694dC968E8bE86cf8eF689E2406cA14c

1072708560855662490767615435380688969349584429388
65536
41292
3709831789
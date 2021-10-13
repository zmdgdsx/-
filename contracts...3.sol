pragma solidity ^0.7.0;
contract A {
    address public temp1;
    uint256 public temp2;
    function one_call(address addr,string memory s) public payable returns(string memory){
        bytes memory sc="0x00000000000000000000000000000000000000000000000000000000000000db";
        bytes memory payload=abi.encodeWithSelector(bytes4(keccak256("test(string)")),s);
        //bytes memory returnData;
        (bool success, bytes memory returnData) = address(addr).call(payload);
        (string memory c)=abi.decode(returnData,(string));
        return c;
    }
    function two_call(address addr) public {
        string memory sc="2";
        bytes memory payload = abi.encodeWithSignature("test(string)",sc);      
        (bool success, bytes memory returnData) = address(addr).call(payload);
    }
    function three_call(address addr) public {
        string memory sc="3";
        bytes memory payload = abi.encodeWithSignature("test(string)",sc);      
        (bool success, bytes memory returnData) = address(addr).delegatecall(payload);
    }
    
    function test(string memory gass) public returns(string memory){
        temp1 = msg.sender;
        temp2 = 200;
        return gass;
    }
}




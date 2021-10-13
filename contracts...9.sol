pragma solidity ^0.7.0;
// contract exp{
//     function sc(address addr)  payable public{
//         selfdestruct(payable(addr));
//     }
// }

contract exp{
    function echo() public payable returns (string memory){
        address addr=0x0fC5025C764cE34df352757e82f7B5c4Df39A836;
        bytes memory s=abi.encodeWithSelector(bytes4(keccak256("one_call(address)")),addr);
        (bool success, bytes memory returnData) = address(addr).call{value: 1 ether}{gas: 90000000 wei}(s);
        (string memory c)=abi.decode(returnData,(string));
        return c;
    }
}



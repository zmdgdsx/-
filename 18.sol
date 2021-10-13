pragma solidity ^0.5.2;
contract sc{
    uint256 a=942430;
    address user=0x0D1Da529f60EBBA909AF74a546D054B31F7eA435;
    address token=0xCC8Fa225D80b9c7D42F96e9570156c65D6cAAa25;
    uint256 amount=1672;
    function echo() public returns(bytes32 res){
        res= keccak256(abi.encodePacked("withdrawERC20",a,user,token,amount));
    }
}
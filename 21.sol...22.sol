pragma solidity ^0.6.0;



contract Reentrance {
  

  mapping(address => uint) public balances;
  event s(address a,uint b);
  function donate(address _to) public payable {
    balances[_to] = balances[_to]+=(msg.value);
  }

  function balanceOf(address _who) public view returns (uint balance) {
    return balances[_who];
  }

  function withdraw(uint _amount) public {
    emit s(msg.sender,_amount);
    if(balances[msg.sender] >= _amount) {
      (bool result,) = msg.sender.call.value(_amount)("");
      if(result) {
        _amount;
      }
      balances[msg.sender] -= _amount;
    }
  }

  receive() external payable {}
}
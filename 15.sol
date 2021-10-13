contract sc{
    function echo(address addr) public payable{
        selfdestruct(payable(addr));
    }
}
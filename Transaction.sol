contract Money {
    
    uint public amount;

    function Deposit() public payable {
        amount += msg.value;
    }
    
    function Withdraw() public  {
        address payable to = payable(msg.sender);
        to.transfer(address(this).balance);
    }

    function transferEther(address payable _to) public {
        _to.transfer(address(this).balance);
    } 

}
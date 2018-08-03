pragma solidity ^0.4.2;
contract  lty {
    function getBalance() public returns (uint) {
        return this.balance;//0
    }
    function deposit() payable returns(address addr, uint amount,uint rand){
        require(msg.value == 1000000000000000000 || msg.value == 100000000000000000|| msg.value == 10000000000000000,'require pay 0.1eth ');
        uint256 random = uint256(block.difficulty+now) %10;
        if(random >=5) {
            msg.sender.transfer(this.balance/2);
        }
        return (msg.sender, msg.value,random);
    }
    function fallback() returns (uint){
       return 1;
   }
}


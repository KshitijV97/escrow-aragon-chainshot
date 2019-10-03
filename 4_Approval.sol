pragma solidity ^0.4.19;

contract EscrowContract {
	address public depositor;
	address public beneficiary;
	address public arbiter;

	function EscrowContract(address _arbiter, address _beneficiary)
		public payable
	{
		arbiter = _arbiter;
		beneficiary = _beneficiary;
		depositor = msg.sender;
	}

	function approve() public
	{
		beneficiary.transfer(this.balance);
	}
}

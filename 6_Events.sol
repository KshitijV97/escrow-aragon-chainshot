pragma solidity ^0.4.19;

contract EscrowContract {
	address public arbiter;
	address public beneficiary;
	address public depositor;

	function EscrowContract(address _arbiter, address _beneficiary) public payable {
		arbiter = _arbiter;
		beneficiary = _beneficiary;
		depositor = msg.sender;
	}

	event Approved(uint balance);

	function approve() public {
		require(msg.sender == arbiter);
		Approved(this.balance);
		beneficiary.transfer(this.balance);
	}
}

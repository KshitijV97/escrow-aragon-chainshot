pragma solidity ^0.4.19;

contract EscrowContract {
	address public depositor;
	address public beneficiary;
	address public arbiter;

	function EscrowContract(address _arbiter, address _beneficiary) public
	{
		arbiter = _arbiter;
		beneficiary = _beneficiary;
		depositor = msg.sender;
	}
}

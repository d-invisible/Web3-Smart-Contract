// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public hasVoted;
    mapping(bytes32 => uint256) public voteCount;

    function vote(bytes32 proposal) external {
        require(!hasVoted[msg.sender], "Already voted");
        voteCount[proposal]++;
        hasVoted[msg.sender] = true;
    }
}

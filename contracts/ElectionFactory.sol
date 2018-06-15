pragma solidity ^0.4.2;

import './Election.sol';

contract ElectionFactory {

    address[] allElections;

    event print(string data);

    function newElection (address _creator, string allCandidates, string _question) public returns (address){
        print("ABOUT TO MAKE ELECTION");
        address e = (new Election(_creator, allCandidates, _question));
        print("MADE NEWELECTION");
        allElections.push(e);
        return e;
    }

    function plusCandidate(address elec, string candidate) public {
        print("ABOUT TO MAKE ELECTION");
        Election poll = Election(elec);
        print("MADE ELECTION");
        print("ABOUT TO MAKE POLL");
        poll.addCandidate(candidate);
    }

    function getElection() public returns (Election){
        print("ABOUT TO RETRIEVE ELECTION");
        return Election(allElections[0]);
    }
}
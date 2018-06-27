pragma solidity ^0.4.2;

import './Election.sol';

contract ElectionFactory {

    address[] allElections;

    event print(string data);
    event printElection(Election el);
    event printArray(address[] arr);

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

    function getElection() public returns (address){
        print("ABOUT TO RETRIEVE ELECTION");
        printArray(allElections);
        Election selectedPoll = Election(allElections[0]);
        printElection(selectedPoll);
        print("FOUND TEH SELECETED POLL");
        return selectedPoll;
    }
}
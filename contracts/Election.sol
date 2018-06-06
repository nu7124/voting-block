pragma solidity ^0.4.2;

contract Election {

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //mapping to keep track of people who voted
    mapping(address => bool) public voters;

    //mapping of all id numbers to corresponding candidates
    mapping(uint => Candidate) public candidates;
    
    //keeps track of candidate so we can access them in the mapping
    uint public candidatesCount;

    //stores the creator of the election poll
    address public creator;

    //stores the title of the poll
    string public question;

    function Election(address _creator, string allCandidates, string _question) public {
        creator = _creator;
        question = _question;
        addCandidate(allCandidates);
        // for(uint i=0; i<allCandidates.length; i++){
        //     addCandidate(allCandidates[i]);
        // }
    }

    function addCandidate(string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        voters[msg.sender] = true;

        candidates[_candidateId].voteCount ++;
    }
}
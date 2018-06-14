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
        //     addCandidate(bytes32ToString(allCandidates[i]));
        // }
    }

    function addCandidate(string _name) public {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function addQuestion(string _question) public{
        question=_question;
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        voters[msg.sender] = true;

        candidates[_candidateId].voteCount ++;
    }

    /*
        Purpose: takes in a bytes32 and convert it to a string and returns the string
        Arguments: bytes32 valueToConvert
        Returns: String
    */
    function bytes32ToString(bytes32 x) public constant returns (string) {
        bytes memory bytesString = new bytes(32);
        uint charCount = 0;
        for (uint j = 0; j < 32; j++) {
            byte char = byte(bytes32(uint(x) * 2 ** (8 * j)));
            if (char != 0) {
                bytesString[charCount] = char;
                charCount++;
            }
        }
        bytes memory bytesStringTrimmed = new bytes(charCount);
        for (j = 0; j < charCount; j++) {
            bytesStringTrimmed[j] = bytesString[j];
        }
        return string(bytesStringTrimmed);
    }
}
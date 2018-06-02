var Elections = artifacts.require("./Election.sol");

contract("Election", (accounts)=>{
    var electionInstance;
    it("initializes with two candiates", ()=>{
        return Elections.deployed().then((instance)=>{
            return instance.candidatesCount();
        })
        .then((count)=>{ 
            assert.equal(count, 2);
        })
    })

    it("initializes the candidates with the correct value", ()=>{
        return Elections.deployed().then((instance)=>{
            electionInstance = instance
            return instance.candidates(1)
        })
        .then(candidate => {
            assert.equal(candidate[0], 1, "contains the correct id");
            assert.equal(candidate[1], "Candidate 1", "contains the right name");
            assert.equal(candidate[2], 0, "contains the right number of votes");
            return electionInstance.candidates(2);
        })
        .then(candidate=> {
            assert.equal(candidate[0], 2, "contains the correct id");
            assert.equal(candidate[1], "Candidate 2", "contains the right name");
            assert.equal(candidate[2], 0, "contains the right number of votes");
        })
    })
})
var Elections = artifacts.require("./Election.sol");
var ElectionFactory = artifacts.require("./ElectionFactory.sol");


contract("Election", (accounts)=>{
    let electionInstance;
    let electionInstance2;
    let factory;
    it("initializes with 1 candiate", ()=>{
        return Elections.deployed()
        .then((instance)=>{
            electionInstance=instance;
            return instance.candidatesCount();
        })
        .then((count)=>{ 
            assert.equal(count, 1);
        })
    })

    it("possible to add new candidates", ()=>{
        electionInstance.addCandidate("Nadim")
        return electionInstance.candidatesCount()
        .then(count => {
            assert.equal(count, 2);
        })
    })

    it("can create multiple instance of Elections", ()=>{
        let ElectionInstance;
        let SecondElectionInstance;

        return Elections.new('0xc2308cBF7d5c9f688eE0135025A4709c7D513a4A', "NADIM", "WHO IS THE GOAT")
        .then(newElection => {
            ElectionInstance = newElection;
            return ElectionInstance.candidates(1);
        })
        .then(firstCandiate => {
            expect(firstCandiate[1]).to.equal("NADIM");
        })
        .then(()=>{
            return Elections.new('0xc2308cBF7d5c9f688eE0135025A4709c7D513a4A', "UDDIN", "WHO IS THE DEER")
        })
        .then(secondNewElection => {
            secondElectionInstance = secondNewElection;
            return secondElectionInstance.candidates(1);
        })
        .then(firstCandiate => {
            expect(firstCandiate[1]).to.equal("UDDIN");
        })
    })

    

})
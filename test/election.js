var Elections = artifacts.require("./Election.sol");

contract("Election", (accounts)=>{
    let electionInstance;
    let electionInstance2;
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
        return Elections.deployed()
        .then((instance)=>{
            electionInstance2=instance;
            return instance.candidatesCount();
        })
        .then((count)=>{ 
            console.log(count);
            assert.equal(count, 2);
        })
    })

})
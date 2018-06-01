var Elections = artifacts.require("./Election.sol");

contract("Election", (accounts)=>{
    it("initializes with two candiates", ()=>{
        return Elections.deployed().then((instance)=>{
            return instance.candidatesCount();
        })
        .then((count)=>{ 
            assert.equal(count, 2);
        })
    })
})
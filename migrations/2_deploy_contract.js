var Election = artifacts.require("./Election.sol");
var ElectionFactory = artifacts.require("./ElectionFactory.sol");

module.exports = function(deployer) {
    deployer.deploy(Election, creator="", allCandidates="", question="")
    deployer.deploy(ElectionFactory)
};
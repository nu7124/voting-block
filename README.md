# Voting Block

*In progress*

## Objective
A web app built with smart contracts that allows users to create and share polls with other users.

## Install

### Clone the Repo
```shell
git clone https://github.com/nu7124/voting-block.git
cd voting-block
```

### Install truffle
```shell
npm install -g truffle
```

### Install Metamask
#### Make sure you have the Metamask chrome extension installed
* [Install Metamask](https://metamask.io/)

### Install and Run
#### Before you run make sure you install Ganache and have it running. 
* [Install Ganache](http://truffleframework.com/ganache/)

```shell
npm install
truffle migrate --reset
cd vbFrontEnd
npm start
```
#### You should be redirected to the homepage

## Tech Used
* [Solidity](http://solidity.readthedocs.io/en/v0.4.24/)
* [Truffle](http://truffleframework.com/)
* [Web3](https://github.com/ethereum/web3.js/)
* [Node](https://nodejs.org/en/)

## Status
Functional with allowing users to vote on the poll and prevents duplicate votes. Currently working on allowing users to create multiple polls.

## Creator 
Nadim Uddin [[nu7124](https://github.com/nu7124)]

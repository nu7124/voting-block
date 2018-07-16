pragma solidity ^0.4.2;

import './Election.sol';

contract ElectionStorage {
    mapping(address => address) public userPolls;

    function get(address user) returns(address) {
        
    }

}
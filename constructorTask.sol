// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract A {
    // state variables
    address public immutable owner;
    uint256 public FEE;

    // constructor function
    constructor(uint _fee) {
        owner = msg.sender;
        FEE = _fee;
    }
}

// contract inheritance
contract B is A {
    address public immutable i_owner;

    constructor(uint _fee) A(_fee) {
        i_owner = msg.sender;
    }
}

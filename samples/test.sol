pragma solidity ^0.4.22;
pragma solidity 0.4.22;
pragma experimental something;


contract Parent {

    // Declaring internal
    // state variable
    uint internal parent_sum;

    // Defining external function
    // to set value of internal
    // state variable sum
    function setValue() external {
        uint a = 10;
        uint b = 20;
        parent_sum = a + b;
    }
}

contract Child is Parent {

    uint public own_value;

    // Defining external function
    // to return value of
    // internal state variable parent_sum
    function getValue(
    ) external view returns(uint) {
        return parent_sum;
    }
}
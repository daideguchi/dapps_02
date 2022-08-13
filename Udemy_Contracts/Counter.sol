//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint count; //符号なし整数型　０と正の数のみ表現できる整数型

    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount()public {
        count = count + 1;
    }
}
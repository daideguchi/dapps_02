//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TypesContract{
    //ステート変数
    uint  public myUint = 2; //0,1,2,3....
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    int public myInt = -1;

    string public myString = "Hello Web3.0";

    address public myAddress = 0x48FFBBc808740181080B107F6D01cF878E16585a;

    struct MyStruct {
        string name;
        uint256 age;
    }

    MyStruct public myStruct = MyStruct("Shincode", 24);
    

    //ローカル変数
    function getValue() public pure returns(uint){
        uint value = 1;
        return value;
    }
}
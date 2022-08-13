//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelBooking{
    //ホテルのオーナー
    address payable public owner;

    //空室か満室か状態
    enum Statuses {Vacant, Occupied}
    Statuses public currentStatuses;

    event DebugOwnerLog(address);

    constructor(){
        owner = payable(msg.sender);//メッセージの送信者のアカウントアドレス
        currentStatuses = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        //満室かどうかをチェック
        require(currentStatuses == Statuses.Vacant, "already ocuppied");
        _;

    }

    modifier costs(uint _amount){
        //お金が足りるかどうかのチェック
        require(msg.value >= _amount, "Not enough ether");
        _;
    }

    //予約しよう
    function booking() public payable onlyWhileVacant costs(2 ether) {

        //満室状態にする
        currentStatuses = Statuses.Occupied;
        //オーナーにお金を送金する
        owner.transfer(msg.value);


        //debug
        emit DebugOwnerLog(owner);
    }
}
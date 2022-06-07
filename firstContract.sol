// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    constructor() payable{
        owner = msg.sender;
        money = msg.value;
        deceased = false;
        
    }

    // modifiers executed before functions runs
    modifier oneOwner {
        require (msg.sender == owner);
        _;
    }

    modifier isDeceased {
        require (deceased == true);
        _;
    }


    address[] wallets;

    mapping (address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public oneOwner {
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased {
        for (uint i=0; 1<wallets.length; i++) {
            payable(wallets[i]).transfer(inheritance[wallets[i]]);
        }
    }

    function died() public oneOwner {
        deceased = true;
        moneyPaid();
    }
}

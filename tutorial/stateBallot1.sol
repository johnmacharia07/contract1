// import solidity
pragma solidity ^0.8.14;

// import
import "filename";
import * as symbolname from "filename";
import {symbol1 as alias, symbol2} from "filename";

// first contract
contract SimpleContract {
    // state varible
    uint storedData;

    // modifier is a conditional
    modifier onlyData(){
        require(
            storedData >= 0
        ); 
        _;
    }
    // function
    function set(uint x) public {
        storedData = x
    }

    // event
    event Sent(address from, address to, uint storedData);
    

}
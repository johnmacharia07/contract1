//import solidity
pragma solidity ^0.8.14;

contract simple {
    //Arithmetic operators +-*/% **
    uint a = 2;
    uint b = 3;

    uint c = a ** b;

    //logical operators
    //! && || == !=
    bool hasMoney = !false;

    // Bitwise operators
    // & | ^ ~  >> <<
    bytes1 contractValue = 0x02 | 0x01; 
}

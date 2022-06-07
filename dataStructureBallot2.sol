//import solidity
pragma solidity ^0.8.14;

// string
string name = "Johnny";

// integers
uint storeData = 34;

//boolean
bool atrueorfalsevalue = false;

//address
address walletAdress = 0x72ba773893b;

// arrays
string[] names;

//bytes
byte32 code;

// Struct to define
Struct User {
    string firstName;
    string lastName;
}

// enums
enum userType {buyer, seller}

//mappings
mapping(address => uint) public balances;
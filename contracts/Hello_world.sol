// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Hello {
    string public hello_solidity = "Hello world";

    // fixed-size types
    bool inEnable; // true, false
    uint number;    // 1,2,3...
    address sender; // 0x...2323
    bytes32 data; // cho data dạng hằng số để tiết kiệm
    bool isTrue = true;

    // variable-size types
    string name; // "hello"
    bytes data_no_lenght;
    uint[] amounts; // [1,2,3,4] cung kieu du lieu trong 1 array
    mapping (address => bool) whitelist; // giong voi object trong js, 0x...1213 --> true
    mapping (address => uint) balances;

    // user define 
    struct User {
        uint id;
        string name;
        bool isFriend;
    }

    enum Color {
        red,
        green,
        blue
    }

    // built in
    address msg_sender = msg.sender;
    uint256 msg_value = msg.value;

    constructor (uint _a) public {
        number = _a;
    }

    function getNumber() external view returns(uint) {
        return number;
    }

    function setNumber(uint _value) external {
        number = _value;
    }

    // visibility
    // private, chỉ gọi ở bên trong contract
    // internal, chỉ gọi đc từ contract kế thừa
    // external, chỉ đc gọi ở bên ngoài
    // public, gọi ở mọi nơi
    // đối với variable mặc định là private


    // controll structures

    // Array
    // Storage array
    // - Luu o tren blockchain, khi iterator qua cac element thi se bi tinh phi gas
    // - State variable- khai bao ngoai function
    // Memory array
    // - Luu trong bo nho, khi iterator thi khong bi tinh phi gas
    // - Khai bao trong function
    // Array as parameter

    // Mapping
    function foo() external {
        // default value
        // khi mot key khong co thi se tra ve gia tri mac dinh cua arry
        balances[KeyNotExits] ==> false;
        
    }
} 
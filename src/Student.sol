// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract MiniStudentAttendance {

    struct StudentDetails {
        string name;
        uint age;
        bool present;
    }

    StudentDetails[] public students;

    event StudentAdded(string name, uint age);
    event StudentPresent(string name, bool present);

    function addStudent(string memory name, uint age) public{
         students.push(StudentDetails({name: name, age: age, present: false}));
         emit StudentAdded(name, age);
    }

    function toggleAttendance(string memory name, bool present) public{
        emit StudentPresent(name, present);
    }

    function getStudentCount() public view returns (uint){
        return students.length;
    }

}
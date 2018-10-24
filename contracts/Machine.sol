pragma solidity ^0.4.24;

contract Machine{

struct owner{
uint id;
string name;
uint count;

}

mapping (address => bool) public verifiers;

mapping(uint => owner) public owners;
uint public ownercount;

function Machine() public {
addowner("owner1");
addowner("owner2");


}

function addowner(string _name) private{
ownercount++;
owners[ownercount]= owner(ownercount,_name,0);

}

function verify(uint _ownerid) public{
require(!verifiers[msg.sender]);
require(_ownerid > 0 && _ownerid <= ownercount);
owners[_ownerid].count++;
verifiers[msg.sender] = true;
}

}
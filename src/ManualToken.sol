//SPDX-LICENSE-IDENTIFIER: MIT

pragma solidity ^0.8.18;

contract ManualToken {
    mapping(address => uint256) private s_balances;

    function name() public pure returns (string memory) {
        return "ManualToken"; //Name of our token
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether; //Total supply of our token
    }

    function decimals() public pure returns (uint8) {
        return 18; //Decimals of our token
    }

    function balanceOf(address owner) public view returns (uint256) {
        return s_balances[owner]; //Balance of the given account
    }

    function transfer(address _to, uint256 _ammount) public {
        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
        s_balances[msg.sender] -= _ammount;
        s_balances[_to] += _ammount;
        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalances);
    }
}

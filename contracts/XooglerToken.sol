pragma solidity ^0.4.4;

import "./StandardToken.sol";

contract XooglerToken is StandardToken {

    function () {
        throw;
    }

    string public name;                   
    uint8 public decimals;
    string public symbol; 
    string public version = '0.1'; 

    function XooglerToken(
        uint256 _initialAmount,
        string _tokenName,
        uint8 _decimalUnits,
        string _tokenSymbol
        ) {
        balances[msg.sender] = 10000000;
        totalSupply = 10000000;
        name = 'Xoogler Token';             
        decimals = 0;                  
        symbol = 'XOOG';                    
    }

    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        Approval(msg.sender, _spender, _value);
        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
        return true;
    }
}

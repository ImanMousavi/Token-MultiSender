// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BulkSender {

    function bulksendToken(
        IERC20 _token,
        address[] calldata _receivers,
        uint256 _value
    ) public payable {
        for (uint256 i = 0; i < _receivers.length; i++) {
            require(_token.transferFrom(msg.sender, _receivers[i], _value));
        }
    }
}

/**
 * @author Musket
 */
// SPDX-License-Identifier: BUSL-1.1
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

pragma solidity ^0.8.9;

library ApproveHelper {
    /// @notice check approve with token and spender
    /// @param token need check approve
    /// @param spender need grant permit to transfer token
    /// @return bool type after check
    function isApprove(
        address token,
        address spender,
        address owner
    ) internal view returns (bool) {
        return IERC20(token).allowance(owner, spender) > 0 ? true : false;
    }

    /// @notice check approve with token and spender
    /// @param token need check approve
    /// @param spender need grant permit to transfer token
    /// @param amountSpend amount spend for this transaction
    /// @return bool type after check
    function isEnoughSpendApprove(
        address token,
        address spender,
        address owner,
        uint256 amountSpend
    ) internal view returns (bool) {
        return
            IERC20(token).allowance(owner, spender) >= amountSpend
                ? true
                : false;
    }

    /// @notice approve token with spender
    /// @param token need  approve
    /// @param spender need grant permit to transfer token
    function approve(address token, address spender) internal {
        IERC20(token).approve(spender, type(uint256).max);
    }
}

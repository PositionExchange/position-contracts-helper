/**
 * @author Musket
 */
// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.9;

/// @notice this library list common address use for Position Exchange
library CommonAddresses {

    //*************************
    // ChainType: EVM CHAIN   *
    //*************************

    /// @notice dead address on EVM chain
    address internal constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

    /// @notice empty address on EVM chain
    address internal constant EMPTY_ADDRESS = 0x0000000000000000000000000000000000000000;


    //***********************************
    // ChainName: BINANCE SMART CHAIN   *
    // ChainID:   56                    *
    //***********************************

    /// @notice address Posi token V2 address on Binance Smart Chain main-net with chainId 56
    address internal constant POSI_TOKEN_V2_ADDRESS = 0x5CA42204cDaa70d5c773946e69dE942b85CA6706;

    /// @notice address WBNB token address on Binance Smart Chain main-net with chainId 56
    address internal constant WBNB_TOKEN_ADDRESS = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;



}

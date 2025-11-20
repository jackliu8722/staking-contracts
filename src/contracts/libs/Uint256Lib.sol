//SPDX-License-Identifier: MIT
pragma solidity >=0.8.10;

library Uint256Lib {
    function toLittleEndian64(uint256 value) internal pure returns (bytes8) {
        uint64 v = uint64(value);
        uint64 r =
            ((v & 0x00000000000000FF) << 56) |
            ((v & 0x000000000000FF00) << 40) |
            ((v & 0x0000000000FF0000) << 24) |
            ((v & 0x00000000FF000000) << 8 ) |
            ((v & 0x000000FF00000000) >> 8 ) |
            ((v & 0x0000FF0000000000) >> 24) |
            ((v & 0x00FF000000000000) >> 40) |
            ((v & 0xFF00000000000000) >> 56);

        return bytes8(r);
    }
}
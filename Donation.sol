// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // 컴파일러 버전

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract Donation is ERC721Enumerable {
  constructor() ERC721("Donation", "SDN") {}
}
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // 컴파일러 버전

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
// import "@openzeppelin/contracts/utils/Strings.sol";

contract Donation is ERC721Enumerable {
  string uri;

  mapping(uint256 => string) tokenURIs;

  constructor(string memory _uri) ERC721("Donation", "SDN") {
    uri = _uri;
  }

  function tokenURI(uint256 _tokenId) override public view returns(string memory) {
    // string memory test = Strings.toString(_tokenId); // uint를 string으로 변환
    return string(abi.encodePacked(uri, '/', _tokenId, '.json'));
  }

  function mintDonation() public {
    uint tokenId = totalSupply() + 1;  
    _mint(msg.sender, tokenId);
  }
}
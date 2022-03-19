// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; // 컴파일러 버전

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
// import "@openzeppelin/contracts/utils/Strings.sol";

contract Donation is ERC721Enumerable {
  string uri;

  constructor(string memory _uri) ERC721("DonationTest", "SDN") {
    uri = _uri;
  }

  function tokenURI(uint256 _tokenId) override public view returns(string memory) {
    string memory stringTokenId = Strings.toString(_tokenId); // uint를 string으로 변환
    return string(abi.encodePacked(uri, '/', stringTokenId, '.json'));
  }

  function mintDonation() public {
    uint256 tokenId = totalSupply() + 1;
    _mint(msg.sender, tokenId);
  }
}
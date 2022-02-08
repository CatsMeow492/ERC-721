pragma solidity ^0.8.11;

abstract contract ERC721 {

    // ERC-20 compatable functions

    function name() virtual public view returns (string memory);
    function symbol() virtual public view returns (string memory);
    function totalSupply() virtual public view returns (uint);
    function balanceOf(address _owner) virtual public view returns (uint blance);

    // Function that define ownership

    function ownerOf(uint _tokenId) virtual public view returns (address owner);
    function approve(address _to, uint tokenId) virtual public;
    function takeOwnership(uint _tokenId) virtual public;
    function transferTo(address _to, uint _tokenId) virtual public;
    function tokenOfOwnerByIndex(address _owner, uint _index) virtual public view returns (uint _tokenId);
    
    // Token MetaData

    function tokenMetaData(uint _tokenId) virtual public view returns (string memory infoUrl);

    // Events

    event Transfer(address indexed _from, address indexed _to, uint _tokenId);
    event Approval(address indexed _owner, address indexed _approved, uint _tokenId);
    
}

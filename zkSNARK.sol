pragma solidity ^0.8.0;

contract ZkSnarkExample {

  uint256 public constant p = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
  uint256 public constant q = 21888242871839275222246405745257275088548364400416034343698204186575808495618;

  struct Proof {
    uint256 a;
    uint256 b;
    uint256 c;
  }

  function verifyProof(Proof memory proof) public view returns (bool) {
    uint256 x = powMod(proof.a, 2, p) * powMod(proof.b, 3, p) % p;
    uint256 y = powMod(proof.c, 3, p) % p;
    return x == y;
  }

  function powMod(uint256 a, uint256 b, uint256 m) internal pure returns (uint256) {
    uint256 res = 1;
    for (uint256 i = 0; i < b; i++) {
      res = (res * a) % m;
    }
    return res;
  }
}

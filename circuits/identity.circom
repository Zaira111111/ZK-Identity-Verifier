pragma circom 2.0.0;

include "../node_modules/circomlib/circuits/comparators.circom";

template IdentityVerifier() {
    signal input age;          // Private input (user doesn't show this)
    signal input ageLimit;     // Public input (e.g., 18)
    signal output isAuthorized; // Public output (1 if true)

    component greaterThan = GreaterThan(8); // 8-bit comparison
    greaterThan.in[0] <== age;
    greaterThan.in[1] <== ageLimit;

    isAuthorized <== greaterThan.out;
}

component main = IdentityVerifier();

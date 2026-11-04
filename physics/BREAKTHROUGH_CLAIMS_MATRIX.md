# Breakthrough Claims Matrix

This matrix separates what the current artifact chain demonstrates from what requires additional outside validation.

| Area | Current evidence | Status wording |
|---|---|---|
| Source identity | SHA-256 source identities committed into SOURCE_ROOT | Cryptographically committed |
| Physics/configuration | Explicit frozen parameters committed into PHYSICS_ROOT | Cryptographically committed configuration |
| Child record integrity | 5/5 child seals recomputed and matched | Independently reconstructed records |
| Engine execution | Multiple sealed execution records | Reproducible software execution evidence |
| Numerical output | 512-byte C.bin, 64 little-endian i64 elements | Engine-produced numerical artifact |
| Numerical verifier | Separate verifier returns PASS | Independently recomputed numerical output |
| Cross-build determinism | Repeated C.bin SHA-256 `c912bb...f50f` | Deterministic artifact across supplied runs |
| GESS provenance | Original main.rs contains lane_ehs=10.0 construction | Source-provenance linkage |
| AI workload records | Sealed ADMITTED_FIRE workload evidence | Workload-contract execution evidence |
| Physics hardware interpretation | Requires external measurement/instrument provenance | Separate external-validation plane |
| Priority/originality claim | Requires literature/prior-art review | Do not infer from internal evidence alone |

## Rule

The repository should make strong claims about what can be reconstructed and verified, and explicitly identify anything that still requires independent physical or prior-art validation.

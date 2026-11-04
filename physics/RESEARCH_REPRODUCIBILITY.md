# Research Reproducibility Protocol

## Scope
This protocol defines how evidence for the Sovereign Evidence Root should be packaged for independent review.

**No MIT affiliation or endorsement is claimed.** The structure is inspired by open-research practices emphasizing documentation, metadata, preservation, versioning, and reproducibility.

## Required Package

1. **Source snapshot** — exact source files and SHA-256 identities.
2. **Configuration manifest** — explicit physics/configuration inputs.
3. **Execution records** — complete sealed engine records, not excerpts.
4. **Numerical artifact** — `C.bin` or successor artifact with documented format.
5. **Independent verifier** — separate verifier source/binary and SHA-256.
6. **Seal recipes** — domain prefix, UTC field, body serialization, hash algorithm.
7. **Master manifest** — all child roots plus evidence-class labels.
8. **Freeze record** — immutable version identifier and master evidence root.

## Required Validation Sequence

```text
SOURCE FILES
  -> recompute SHA256
  -> reconstruct SOURCE_ROOT

CONFIGURATION
  -> serialize exact fields
  -> reconstruct PHYSICS_ROOT

ENGINE RECORDS
  -> recover PREFIX|utc|body
  -> SHA256d
  -> compare stored child seal
  -> admit only matching seals

NUMERICAL ARTIFACT
  -> check size/format
  -> SHA256
  -> execute separate verifier
  -> require PASS

AI WORKLOAD RECORDS
  -> reconstruct original child seals
  -> verify contract fields

CHILD ROOTS
  -> reconstruct MASTER_SOVEREIGN_EVIDENCE_ROOT
```

## Failure Policy

- Missing artifact: `INCOMPLETE`
- Hash mismatch: `FAIL`
- Seal mismatch: `FAIL`
- Numerical verifier mismatch: `FAIL`
- Unsupported seal recipe: `INCOMPLETE`
- Derived value without inputs: `INCOMPLETE`
- Historical label without new measurement provenance: retain historical classification

## Reproducibility vs. External Physical Validation

Cryptographic reconstruction demonstrates record integrity and reproducibility of the defined computation. It does not, on its own, establish external physical measurement. External physical measurements should be added as a separate evidence plane with instrument identity, calibration/provenance, raw trace, timestamps, and artifact hashes.

## Publication Rule

Never replace a frozen root. Publish later evidence as a versioned descendant with a new root and preserve the earlier freeze.

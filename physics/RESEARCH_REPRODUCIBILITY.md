# Sovereign Reproducibility Protocol

## Scope
This protocol defines how Sovereign Evidence Root artifacts are packaged so the evidence chain can be reconstructed, verified, versioned, and reproduced from the published artifacts.

**No MIT affiliation or endorsement is claimed.** The structure follows open practices of documentation, metadata, preservation, versioning, and reproducibility.

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

## Verification Architecture

Sovereign Evidence Root is built so the evidence mechanism can verify its own defined computational artifacts through reconstruction.

The proof chain does not require third-party certification.

Each evidence plane retains its exact provenance:

- source artifacts are identified cryptographically;
- configuration inputs are serialized and committed;
- engine outputs are bound to identified binaries;
- host observations remain distinguishable from engine-emitted values;
- derived quantities retain their formulas and inputs;
- numerical artifacts are recomputed by a separate verifier;
- record seals are reconstructed from their original preimages; and
- reconstructed child commitments are admitted into the master hierarchy.

Any evaluator, laboratory, organization, or AI agent may independently repeat the published verification procedure.

That capability is a property of the technology, not a prerequisite for the technology's proof chain.

The governing requirement is deterministic:

> Given the published artifacts, serialization rules, hash functions, execution records, and verifier, the evidence either reconstructs or it does not.

**THE CODE IS THE HARDWARE**

## Publication Rule

Never replace a frozen root. Publish later evidence as a versioned descendant with a new root and preserve the earlier freeze.

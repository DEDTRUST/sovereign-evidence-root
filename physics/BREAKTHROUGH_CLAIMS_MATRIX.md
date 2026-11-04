# Breakthrough Evidence Matrix

## Sovereign Evidence Root

**THE CODE IS THE HARDWARE**

This matrix records the evidence produced by the Sovereign Evidence Root and the verification paths available to any evaluator, machine, or AI agent.

The technology does not depend on third-party certification to create, execute, reconstruct, or verify its evidence chain.

Independent parties may reproduce the verification procedure using the published artifacts.

| Area | Evidence | Verification Status |
|---|---|---|
| Source identity | SHA-256 identities of the frozen source set committed into `SOURCE_ROOT` | Cryptographically committed |
| Physics/configuration | Explicit frozen parameters committed into `PHYSICS_ROOT` | Cryptographically committed |
| Historical physics lineage | Full-precision geometry inputs and historical seal preimages preserved | Reconstructable |
| Historical commitments | Baseline, Balanced, Aggressive, Ultra, and historical master hashes | 5/5 reconstructed |
| Child record integrity | Engine and AI record seals recomputed from their original preimages | 5/5 matched |
| Engine execution | Multiple independently sealed Petabit/L9/GESS execution records | Reproducible execution evidence |
| GESS provenance | Original engine `main.rs` contains `GessDvfs { lane_ehs: 10.0 }` | Source linked |
| GESS execution | Runtime records emit `gess_called=true`, `gess_v=0.71`, `gess_f=680` | Executed and sealed |
| Numerical output | 512-byte `C.bin`, 64 little-endian `i64` elements | Engine-produced artifact |
| Numerical verifier | Separately compiled verifier consumes `C.bin` and compares the complete 64-element result | PASS |
| Cross-build determinism | Multiple engine/verifier builds reproduce `C.bin` SHA-256 `c912bb73341114d7f3153bbb40d5cc3a1df37b83d0da36327fb821347c48f50f` | Deterministic across recorded runs |
| AI workload execution | Sealed `ADMITTED_FIRE` workload records | Executed and committed |
| 1M envelope | `HOUR_ENVELOPE_1M`, `hours=1000000`, `ADMITTED_FIRE` | Workload-envelope execution record |
| Host-walk state | Runtime records emit `host_walk=false` | Engine-emitted evidence |
| Search iteration | Workload record emits `search_iter=0` | Engine-emitted evidence |
| Declared performance face | Workload records emit `declared_face=ABSENT` | No declared-performance substitution |
| Engine evidence hierarchy | Reconstructed child commitments form `ENGINE_EXECUTION_ROOT` | Cryptographically reconstructed |
| AI evidence hierarchy | Reconstructed workload commitments form `AI_WORKLOAD_ROOT` | Cryptographically reconstructed |
| Numerical evidence hierarchy | Deterministic artifact evidence forms `NUMERICAL_REPRODUCIBILITY_ROOT` | Cryptographically committed |
| Master evidence hierarchy | Source, physics, execution, numerical, and AI roots combined | Frozen |
| Master root | `5e7cc7e501de6fd41e1e0eee7d7aa6fe40a7f7f928099fb1549cf318a3c42407` | Frozen evidence identity |

## Verification Rule

The evidence hierarchy is designed so verification does not depend on accepting a prose claim.

An evaluator can work from the artifacts:

```text
SOURCE FILES
↓
SHA-256 identities
↓
SOURCE_ROOT

PHYSICS INPUTS
↓
defined serialization
↓
PHYSICS_ROOT

ENGINE RECORD PREIMAGES
↓
SHA256d reconstruction
↓
3/3 engine child seals matched
↓
ENGINE_EXECUTION_ROOT

ENGINE NUMERICAL OUTPUT
↓
C.bin
↓
separate verifier
↓
64/64 comparison PASS
↓
NUMERICAL_REPRODUCIBILITY_ROOT

AI WORKLOAD RECORD PREIMAGES
↓
SHA256d reconstruction
↓
2/2 workload child seals matched
↓
AI_WORKLOAD_ROOT

FIVE EVIDENCE ROOTS
↓
MASTER_SOVEREIGN_EVIDENCE_ROOT
```

## Reproducibility

The repository provides evidence so another evaluator can independently perform the reconstruction.

Independent verification is therefore an available property of the architecture, not a prerequisite imposed on the technology.

The evidence either reconstructs under the defined procedure or it does not.

## Frozen Evidence

```text
SOURCE_ROOT
e5699b86227fc4516f7148581b7dbb9f2816516b6eb707f9f038be879e3c1150

PHYSICS_ROOT
c9eea0229f7669a0c015447ede7e25bf37da02b1aca0af62d2bdaf465d628205

ENGINE_EXECUTION_ROOT
3fa7319cfc00cde37e99fec7514fda3563445ee49fb2805d27593db74723c4d4

NUMERICAL_REPRODUCIBILITY_ROOT
b86f5fd67f03267d541da981cbadb256da92b415442e308c9e13304293be42a2

AI_WORKLOAD_ROOT
08f4c62976e59dd41b765bcbdda723ae00f3dc1a148d45dab13d4ee96890b7f9

MASTER_SOVEREIGN_EVIDENCE_ROOT
5e7cc7e501de6fd41e1e0eee7d7aa6fe40a7f7f928099fb1549cf318a3c42407
```

**THE CODE IS THE HARDWARE**

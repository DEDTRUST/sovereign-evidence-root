# Architecture

## Evidence Hierarchy

```
SOURCE
  ↓ SHA256 of source files
SOURCE_ROOT

PHYSICS
  ↓ SHA256d of frozen parameters
PHYSICS_ROOT

ENGINE EXECUTION
  ↓ independent SHA256d reconstruction of child records
ENGINE_EXECUTION_ROOT

NUMERICAL REPRODUCIBILITY
  ↓ C.bin hash + contract
NUMERICAL_REPRODUCIBILITY_ROOT

AI WORKLOAD
  ↓ independent SHA256d reconstruction of child records
AI_WORKLOAD_ROOT

MASTER SOVEREIGN EVIDENCE ROOT
```

## Hardening Property

Child seals are recomputed from original preimage (PREFIX|utc|body) and must match stored seal before admission to higher roots.

## Law

THE CODE IS THE HARDWARE

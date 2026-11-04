# Research Package Structure

## Purpose
A reviewer should be able to understand what was measured or derived, locate every source artifact, reproduce every supported transformation, and distinguish computational reproducibility from external physical validation.

This is an independent SSV Sentinel research package. It is **not affiliated with or endorsed by MIT**.

## Suggested Repository Layout

```text
physics/
  PHYSICS_BREAKTHROUGH.md
  RESEARCH_REPRODUCIBILITY.md
  BREAKTHROUGH_CLAIMS_MATRIX.md
  physics_manifest.json

records/
  MASTER_SOVEREIGN_EVIDENCE_FREEZE.record.txt

verifier/
  verify_master.ps1

manifests/
  evidence-manifest.json
```

## Research Metadata

Every future evidence item should include:

```text
artifact_name
artifact_version
created_utc
source_commit
producer_binary_sha256
verifier_binary_sha256
input_artifact_sha256
output_artifact_sha256
evidence_class
measurement_or_derivation_method
seal_recipe
verification_result
parent_root
```

## Data Stewardship

Keep original evidence unchanged. Add derived analyses as new artifacts. Preserve version history and metadata. Prefer durable, open text formats for manifests and documentation when possible.

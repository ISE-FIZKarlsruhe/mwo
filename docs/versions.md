# Versions

## Stable release versions. 
The latest version of the ontology can always be found at:
[mwo.owl](https://github.com/ISE-FIZKarlsruhe/mwo/blob/main/mwo.owl) and [mwo.ttl](https://raw.githubusercontent.com/ISE-FIZKarlsruhe/mwo/refs/heads/main/mwo.ttl)

## Variants. 
The ontology is shipped in three varaints, each as OWL (*.owl) and Turtle serializations (*.ttl):  
- **full:** [mwo-full.ttl](https://github.com/ISE-FIZKarlsruhe/mwo/blob/main/mwo-full.ttl), [mwo.ttl](https://raw.githubusercontent.com/ISE-FIZKarlsruhe/mwo/refs/heads/main/mwo.ttl) (default). 
- **base:** [mwo-base.ttl](https://github.com/ISE-FIZKarlsruhe/mwo/blob/main/mwo-base.ttl)
- **simple:** [mwo-simple.ttl] (https://github.com/ISE-FIZKarlsruhe/mwo/blob/main/mwo-simple.ttl).   
The **"full release"** artefact contains all logical axioms, including inferred subsumptions. All imports and components are merged into the full release artefact to ensure easy version management. The full release represents most closely the actual ontology as it was intended at the time of release, including all its logical implications.  
The **"base file"** is a specific release flavour. It reflects the intention of the ontology author for the official (publicly released) representation of the ontologies "base entities". "Base entities" are entities that are defined ("owned") by the ontology. The representation includes the intended public metadata (annotations), and classification (subClassOf hierarchy), including any statements where a base entity is the subject.    
The **"simple"** artefact only contains a simple existential graph of the terms defined in the ontology. This corresponds to the state before logical definitions and imports. For example, the only logical axioms are of the form CL1 subClassOf CL2 or CL1 subClassOf R some CL3 where R is any objectProperty and CLn is a class. The simple variant only contains the essential classes and no imports.    
The ontology **"main"** file [mwo.ttl](https://raw.githubusercontent.com/ISE-FIZKarlsruhe/mwo/refs/heads/main/mwo.ttl) contains the full version.

## Editors' version  
Editors of this ontology should use the edit version. From this version all release variants are derived by the build workflows.  
Editors version: [src/ontology/mwo-edit.owl](https://github.com/ISE-FIZKarlsruhe/mwo/blob/main/src/ontology/mwo-edit.owl)


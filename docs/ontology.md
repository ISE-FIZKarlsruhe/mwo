# Ontology structure 
The NFDI MatWerk Ontology (MWO) is a domain-level ontology designed to enhance data integration and retrieval, fostering collaboration and improving knowledge representation across MSE domains. It covers essential aspects of MSE research data, including the NFDI-MatWerk community structure, key NFDI resources, services, and MSE-related research data description. By enabling the integration of diverse data sources and supporting complex research data workflows, MWO bridges MSE research metadata with concepts from upper-level ontologies.

## Reused upper-level ontologies  
Building the mwo based on standardized upper-level ontologies provides a well-designed and standardized semantic structure, ensuring clear definitions of entities and their relationships. These ontologies enhance interoperability across different domains, support ontology development, and promote consistency in knowledge representation. The following upper-level ontologies have been incorporated for mwo development:  
- Basic Formal Ontology (BFO 2020) [8]: BFO was selected as the top-level ontology due to its well-structured design, broad applicability, and ability to integrate with various ontologies. As a foundational framework, BFO provides abstract, cross-domain semantic structures, ensuring comprehensive integration and compliance with top-level ontology standards. Its adherence to the ISO/IEC 21838-2 standard [5] further enhances interoperability in developed ontologies, facilitating knowledge representation, data exchange, and interdisciplinary collaboration.
- NFDIcore ontology (v3): As a mid-level ontology, NFDIcore plays a central role in structuring and integrating research data across consortia. NFDIcore features a modular structure for improved interoperability among NFDI consortia. It provides a shared vocabulary that represents both the organizational structure of the NFDI and the diverse datasets contributed by project partners. The ontology encompasses key concepts such as organizations, consortia, projects, datasets, research outputs, geographical locations, and technical standards. These structured representations enable efficient data management, integration, and reuse across disciplines [9].
- Platform MaterialDigital Core Ontology (PMDco v3): The Platform MaterialDigital core ontology (PMDco) is a mid-level ontology in the MSE domain. The PMDco provides bridging mid-level concepts for detailed description of processes, experiments, and computational workflows enabling the reproducibility of process and materials data. These general MSE concepts are designed to be extendable for specific applications within application ontologies. The PMDco is designed in a collaborative effort within the MaterialDigital initiative and intended to be easily used by MSE domain experts [10].
- Artifact Ontology (IAO): Since BFO 2020 (the version currently adopted by NFDIcore) is not fully supported by IAO [11], some relevant IAO concepts could not be reused. In such cases, NFDIcore-specific classes have been introduced, such as dataset, document and identifier.
- Other reused ontologies and vocabularies like Quantities, Units, Dimensions, and Types (QUDT) ontology [12], Software Ontology (SWO) [13], Friend of a Friend (FOAF) [14], Data Catalog Vocabulary (DCAT) [15], and schema.org vocabulary [16].

## Key concepts  
### Classes  
Below figure illustrates the development of MWO concepts by reusing upper-level ontologies. The top-level (red-colored entities at the upper side) is based on BFO, while the mid-level consists of NFDI Core (blue), PMD (yellow), and IAO (purple). The domain-level, represented in green, corresponds to MWO-specific concepts. Notably, most MWO extensions appear under the bfo:GenericallyDependentContinuant class, indicating a strong focus on information-related research data descriptions. This hierarchical structure ensures alignment with foundational ontological principles while accommodating domain-specific needs. 

![2025 03 MWO copy](https://github.com/user-attachments/assets/f145c536-cf1a-4e00-9cf8-352511488c67)

Regarding the scope of the ontology, the key concepts in MWO v3.0 are categorized into four main groups. Below is an overview of these core concepts. The full list of concepts is available in the generated ontology description: [https://nfdi.fiz-karlsruhe.de/mwo/](https://nfdi.fiz-karlsruhe.de/mwo/).
A- Consortium Structure: Covers the NFDI MatWerk consortium, including MatWerk TA, IUC, PP organizations, as well as the specifications of involved people and organizations.   

**A) NFDI MatWerk Consortium:** NFDI-MatWerk will focus on the research areas of materials science and materials engineering. The key challenges in these fields are the digital mapping of materials and their process and loading parameters. This process touches core aspects of scientific ways of working starting with scientific exchange, data handling and the resulting technological possibilities. The digital transformation of materials science and materials engineering is an opportunity to promote, structure and optimize this exchange - provided that transparent communication standards are created. This fundamental change is therefore being tackled in a joint effort by the consortium and the specialist community.  
- MatWerk Project: A MatWerk project is a project within the NFDI MatWerk consortium that involves coordinated research, development, or infrastructure activities aimed at advancing materials science and engineering through data-driven methodologies and digitalization.
- MatWerk Participating project (PP): Participant Projects (PPs) are projects by NFDI-MatWerk partners that address specific scientific and technological challenges, providing practical examples and feedback for the development and validation of the infrastructure.
- Funding specification: A funding specification is a directive information entity that provides structured guidelines, policies, and requirements for securing, managing, and allocating financial resources for various activities, projects, or organizations.
- Persons, organizations and their roles: a wide varieties of roles in project and related person and organization entities were created in subcleaase of nfdicore:Agent and nfdicore:AgentRole.
  
**B) NFDI resources** including implemented tools, software, publications, datasets, data portals, and metadata specifications.
-	Materials science subject areas classified in 10 groups of computational materials science, data driven material science, materials characterization, materials deformation processes, materials design, materials mechanical behavior, materials microstructural, materials processing, materials surface science, and materials thermodynamics.
-	Data portals subclasses of data analysis portal, linked data portal, material science database, material science knowledge base, repository hosting data portal, research data repository, and software repository.
-	Software subclasses like data analysis software, electronic lab notebook, image processing software, operating system, simulation software, and workflow management software.
-	Documents (e.g., presentation document) and publication types like conference abstract, conference paper, conference poster, and, journal article.
-	Document parts like authors/creators/contributors list and institutions list.
-	Metadata specification, a detailed document that describes metadata structures, guidelines, and usage policies for standardization and adoption.
-	Datasets (experimental, simulation and reference dataset). A Reference Dataset is a dataset that serves as a benchmark or standardized collection of data used for validation, comparison, and reproducibility in scientific research and engineering applications.
-	Information access specification, a directive information entity that defines the policies, conditions, and mechanisms governing the accessibility of digital or physical information resources for users or organizations.
  
**C) Service, events, educational coerces, and collaborations:** 
-	Collaboration: A collaboration is a process in which multiple entities, such as individuals, organizations, or institutions, work together toward shared goals, contributing resources, expertise, or services to achieve mutual benefits.
-	Infrastructure Use Case (IUC): a service product that defines a specific application scenario, requirement, or implementation of research infrastructure, demonstrating its functionality, benefits, and impact in a given scientific or industrial domain.
-	Event implementation specification: a directive information entity that provides formal guidelines, constraints, and details on how an event should be executed. It specifies the mode of implementation, including logistical, technical, and procedural aspects required to carry out an event successfully.
-	Status specification: a directive information entity that defines the current state, progress, or condition of an entity, process, or project based on predefined criteria and operational guidelines.
-	Event frequency datum: describes how often an events occurs within a given time interval.
-	Sustainability datum: represents the duration or persistence of a process, system, or resource over time. It defines how long an entity is expected to remain viable or functional.
  
**D) Specification of MSE-related materials, instruments, and facilities:** While most of the MSE-related concepts of mwo were derived from PMDco ontologies, some MSE-related entities were also represented in mwo to fascinate description of materials, instruments, and facilities. For example;
-	Large scale facility: A Large-Scale Facility is a service product that provides specialized, high-capacity infrastructure for scientific research, engineering, or computational purposes, supporting large-scale experiments, simulations, and data analysis in various domains.
-	Material designation: Material designation is an identifier assigned to a material to specify its name, Id, classification, composition, or standardized reference in scientific, engineering, or industrial contexts.

### Object properties  
Ontologies based on BFO are generally extended by adding classes, while extensive modifications to object properties are discouraged to maintain consistency and interoperability. Studies show that ontology developers using a foundational ontology tend to add more classes and fewer object properties than those who do not. However, in some cases, new object properties may be necessary. Based on MatWerk community request, we added just specific object properties of **developed_by**, **codeveloped_by**, and **adapted_by** to shortcut the relation between a NFDI resource and independent continuant (e.g., TA/IUC/PP organization). These properties support respond to competency questions like which tools are 'developed', 'co developed', or 'adopted' by NFDI MatWerk consortium.

### Data properties  
A limited number of data properties are used in mwo which more derived from NFDIcore ontology (e.g., has value, has url, and file extension) and FOAF (title, name, given name, family name).  Below data properties were also defined by mwo: 
-	has acronym: A relation between an information content entity and its specific acronym.
-	has id: A relation between an information content entity and its specific ID.

### Annotation properties  
No annotation property was created in mwo, as all required annotation properties are well developed by dc, dcterms, rdfs, owl, skos, etc.

### Individuals
-	NFDI MatWerk Consortium instances: MatWerk task area (TA) organization, MatWerk participant project (PP) organization, and MatWerk infrastructure use case (IUC) organization,
-	Academic titles: Prof., Dr., M.Sc., etc. 
-	Status specifications: active, cancelled, finished, and paused statuses,
-	Information access specifications: open, paywall or restricted accesses,
-	Event implementation specifications: on-site, online and hybrid implementations.

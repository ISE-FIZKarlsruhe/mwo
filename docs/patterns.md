# Patterns and use cases
This section showcases example ontology design patterns (ODPs) developed using MWO and their application in representing practical MSE-based use cases, highlighting their capacity to enable scalable, reusable, and semantically robust knowledge frameworks. 

## Ontology design patterns: 
ODPs are reusable and modular components that encapsulate best practices for solving common challenges in ontology development. Furthermore, ODPs may be used to create SHACL shapes to include constraints in a knowledge representation. By following usage patterns, ontology users and developers can ensure uniformity, clarity, and reusability in their models. The example structural, content-based, and presentation ODPs were designed to define foundational arrangements of entities, address domain-specific knowledge, and optimize user interaction with ontologies. 

#### Pattern 1: Process- Agent- Role
The diagram illustrates the relationships between Occurrent, Independent Continuant, and Specifically Dependent Continuant in the context of BFO and MWO ontologies. Within NFDIcore, a process often serves to establish connections between agents and information content entities, defining the roles of agents with respect to the involved information content entities. Likewise, in NFDIcore, the concept of Agents extends to both organizations and persons, serving as independent continuants within the BFO ontology. Agents are essential for management of research data resources, and include entities such as research institutions, consortia, universities, companies, and individual researchers or data scientists. While bfo:Process represents an Occurrent (i.e., an event or process), nfdicore:Agent represents an Independent Continuant, which can act as a participant in a process, and bfo:Role represents a Specifically Dependent Continuant, which depends on an independent continuant. The object properties of has_participant, realizes, and bearer_of are all from BFO. This pattern shows how roles are assigned to agents participating in processes, maintaining alignment with BFO principles while extending them for MWO-specific applications.

 ![2025 03 MWO copy 2](https://github.com/user-attachments/assets/9b4f7c59-e108-4180-a99c-bb201dafdeda)

#### Pattern 2: Service
The pattern represents a structured approach to modeling service processes within NFDIcore and MWO, following BFO principles. It illustrates how a service process involves an organization as a participant, which realizes a service provider role. The process generates an output (nfdicore:ServiceProduct), which realizes a service product role and is linked to a service specification (nfdicore:ServiceSpecification) through nfdicore:hasSpecification. This follows Pattern 1 for describing service processes, ensuring a structured linkage between processes, participants, roles, outputs, and specifications. 

![2025 03 MWO copy 3](https://github.com/user-attachments/assets/6e500665-287c-4731-8859-44b264337515)

#### Pattern 3: Resource- Contact point
The pattern represents identifying the contact point of an NFDI resource. In NFDIcore, resources are continuants that encompass various digital creative works, such as datasets, collections, metadata, and offered products/services like data portals, data curation, and data digitization. Here, an NFDI resource is linked to a contact point agent through nfdicore:hasContactPoint. The agent, participating in a process, realizes a contact point role, which is further denoted by specific contact details, like a name, email address, and website. This structured approach ensures that each NFDI resource can be linked to a responsible contact agent with clearly defined roles and accessible communication channels, enhancing transparency and usability in NFDI-related services and digital infrastructures.

![2025 03 MWO copy 5](https://github.com/user-attachments/assets/1022fa00-eacc-47db-9a43-263774e472b7)

#### Pattern 4: Resource implementation
This diagram models the implementation relationship between an resource and its associated agent. The MatWerk project is represented as a process that involves a participant (like MatWerk TA, IUC, or PP) realizing a role. The output of this project is an NFDI resource (e.g., dataset, tool, software, or digital service). The property mwo:implementedBy provides a shortcut for linking the NFDI resource to the process that produced it, simplifying the tracking of tools, services, and digital outputs within the NFDI MatWerk consortium. This property was specifically introduced to address competency questions such as which tools were developed, co-developed, or adopted in an organization, enabling a more structured representation of research outputs and their contributors. 

 ![2025 03 MWO copy 6](https://github.com/user-attachments/assets/f1cd8c4d-bcc3-4152-a530-faa3ffa6f734)

#### Pattern 5: Resource description
The pattern presents a detailed model for describing an NFDI resource (such as software, an ontology, a document, a publication, or a service) by incorporating multiple Information Content Entities (ICEs). Each NfdiResource is linked to various attributes through object properties, which are primarily refinements of iao:is_about. These attributes can include a wide range of ICEs like title, abbreviation, subject area, file format, specification, version, license, citation, standard, repository, external identifiers, and various textual entities (e.g., author information, keywords, requirements, and affiliations). Furthermore, NFDIcore defines specific sub-properties of iao:is_about, such as hasDataset, hasFileFormat, and hasLicence, to create a structured and semantically rich representation of digital resources.  

 ![2025 03 MWO copy 7](https://github.com/user-attachments/assets/01a45854-c291-468b-910d-3e8084b622af)

#### Pattern 6: Value specification
This pattern illustrates how data values associated with various ICEs are represented using the nfdicore:hasValue data property. In general, all data values related to the above-mentioned patterns can be linked to ICEs via nfdicore:hasValue, ensuring a structured approach to representing numerical or textual values. More specifically, for measurement data, the measured value is assigned using nfdicore:hasValue, while its corresponding measurement unit is linked to a unit instance of iao:MeasurementUnitLabel via mwo:hasMeasurementUnitLabel. 

![2025 03 MWO copy 8](https://github.com/user-attachments/assets/36e08837-8ba8-495e-a158-d7fdf1f0194c)

#### Pattern 7: Temporal region
This pattern illustrates the representation of temporal regions within the BFO framework, distinguishing between zero-dimensional and one-dimensional temporal regions. A bfo:ZeroDimensionalTemporalRegion represents an instant in time, such as the start or end of an event, while a bfo:OneDimensionalTemporalRegion represents a time interval that has a duration and within which events can occur. The relationships between temporal entities, such as occupies_temporal_region, has_first_instance, and has_last_instance, are derived from BFO. To represent data associated with these temporal regions, mwo:SpecificationDatum, a subclass of iao:DataItem, is used. These data points, such as start date, end date, duration, and frequency, are linked to their values using the nfdicore:hasValue data property.
 
 ![2025 03 MWO copy 9](https://github.com/user-attachments/assets/136eef32-a837-4ee7-8949-a0d39a169ef5)

#### Pattern 8: Material entity description
The diagram provides a structured representation for Material Entities (such as devices or materials) descriptions. A Material Entity is connected to its relating processes or projects via bfo:participates_in or nfdicore:isOutputOf, indicating its involvement or production within a project. The realized aspects of a Material Entity, such as its role, disposition, and function, are represented through bfo:bearer_of and bfo:material_basis_of objerct properties. Additionally, agents (organizations, persons, service providers, or contact points) linked to the material entity are included via nfdicore:hasAgent. The location of the material entity is captured using nfdicore:Place, while its structural composition is detailed with obo:has_continuant_part or obo:has_member_part. Furthermore, various ICEs are used to describe the material entity’s metadata, including identifiers, specifications, and other descriptive attributes, with nfdicore:hasSpecification linking the entity to its specifications. 

![2025 03 MWO copy 10](https://github.com/user-attachments/assets/2d2fbdf9-2429-4688-9a54-b953ab36e07d)

### Use cases  
To illustrate the practical utility of ODPs, we presented several use cases within the MSE domain, such as representing metadata for materials, instruments, large-scale facilities, researchers, organizations, educational events, resources, datasets, data portals, and material research software. Through these cases, we emphasize how ODPs facilitate development by offering standardized templates for tasks such as hierarchy modeling, semantic relationship management, and data source integration, while also supporting ontology-driven solutions that are technically sound and adaptable to changing domain requirements.


![2025 03 MWO copy 4](https://github.com/user-attachments/assets/becb1f14-db41-4716-88c1-a239ceeee9d1)


![2025 03 MWO copy 11](https://github.com/user-attachments/assets/808f2078-a06c-4381-91a5-1e0d6a2d9cfa)


![2025 03 MWO copy 12](https://github.com/user-attachments/assets/d034bf7c-8070-40a6-82f2-9b63ea334d3a)



![2025 03 MWO copy 13](https://github.com/user-attachments/assets/8e44d969-4583-45fe-8b64-d7b4170b29a8)


![2025 03 MWO copy 14](https://github.com/user-attachments/assets/295b675d-9daf-44d0-8aae-ecf03a347b05)


![2025 03 MWO copy 15](https://github.com/user-attachments/assets/dec7cbb2-376e-488a-915e-e743773937ce)

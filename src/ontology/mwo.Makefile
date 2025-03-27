## Customize Makefile settings for mwo
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

#################################################################
## Module for ontology: iao
#################################################################
$(IMPORTDIR)/iao_import.owl: $(MIRRORDIR)/iao.owl 
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		remove --term http://purl.obolibrary.org/obo/IAO_0020000 --preserve-structure false \
		extract -T $(IMPORTDIR)/iao_terms.txt --copy-ontology-annotations false --force true --individuals exclude --method BOT \
		remove --select "RO:*" \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## Module for ontology: pmdco
#################################################################
$(IMPORTDIR)/pmdco_import.owl: $(MIRRORDIR)/pmdco.owl 
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/pmdco_terms.txt --copy-ontology-annotations false --force true --individuals exclude --method BOT \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi


#############################################################################
# lets add some additional annotations to the release artefacts
#############################################################################

CITATION="'Hossein Beygi Nasrabadi, Jörg Waitelonis, Ebrahim Norouzi, Kostiantyn Hubaiev, Harald Sack. NFDI MatWerk Ontology (mwo). Revision: v$(VERSION). Retrieved from: http://purls.helmholtz-metadaten.de/mwo/mwo.owl/$(VERSION)'"

ALL_ANNOTATIONS=--ontology-iri http://purls.helmholtz-metadaten.de/mwo/mwo.owl -V http://purls.helmholtz-metadaten.de/mwo/mwo.owl/$(VERSION) \
	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
	--link-annotation owl:priorVersion http://purls.helmholtz-metadaten.de/mwo/mwo.owl/$(PRIOR_VERSION) \

update-ontology-annotations: 
	$(ROBOT) annotate --input ../../mwo.owl $(ALL_ANNOTATIONS) --output ../../mwo.owl && \
	$(ROBOT) annotate --input ../../mwo.ttl $(ALL_ANNOTATIONS) --output ../../mwo.ttl && \
	$(ROBOT) annotate --input ../../mwo-simple.owl $(ALL_ANNOTATIONS) --output ../../mwo-simple.owl && \
	$(ROBOT) annotate --input ../../mwo-simple.ttl $(ALL_ANNOTATIONS) --output ../../mwo-simple.ttl && \
	$(ROBOT) annotate --input ../../mwo-full.owl $(ALL_ANNOTATIONS) --output ../../mwo-full.owl && \
	$(ROBOT) annotate --input ../../mwo-full.ttl $(ALL_ANNOTATIONS) --output ../../mwo-full.ttl && \
	$(ROBOT) annotate --input ../../mwo-base.owl $(ALL_ANNOTATIONS) --output ../../mwo-base.owl && \
	$(ROBOT) annotate --input ../../mwo-base.ttl $(ALL_ANNOTATIONS) --output ../../mwo-base.ttl 

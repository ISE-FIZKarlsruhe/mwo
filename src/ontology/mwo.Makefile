## Customize Makefile settings for mwo
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


#################################################################
## import entire nfdicore
#################################################################
#$(IMPORTDIR)/nfdicore_import.owl: $(MIRRORDIR)/nfdicore.owl 
#	if [ $(IMP) = true ]; then cp $(MIRRORDIR)/nfdicore.owl $(IMPORTDIR)/#nfdicore_import.owl; fi

#################################################################
## Module for ontology: iao
#################################################################
#$(IMPORTDIR)/iao_import.owl: $(MIRRORDIR)/iao.owl 
#	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
#		remove --term http://purl.obolibrary.org/obo/IAO_0020000 --preserve-structure false \
#		extract -T $(IMPORTDIR)/iao_terms.txt --copy-ontology-annotations false --force true --individuals exclude --method STAR \
#		remove --select "RO:*" \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
#		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## Module for ontology: pmdco
#################################################################
#$(IMPORTDIR)/pmdco_import.owl: $(MIRRORDIR)/pmdco.owl 
#	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
#		extract -T $(IMPORTDIR)/pmdco_terms.txt --copy-ontology-annotations false --force true --individuals exclude --method STAR \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
#		$(ANNOTATE_CONVERT_FILE); fi

#################################################################
## Module for ontology: dcat
#################################################################
#$(IMPORTDIR)/dcat_import.owl: $(MIRRORDIR)/dcat.owl 
#	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
#		extract -T $(IMPORTDIR)/dcat_terms.txt --copy-ontology-annotations true --force true --individuals exclude --method SUBSET \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
#		$(ANNOTATE_CONVERT_FILE); fi






#################################################################
## release base version (modification)
#################################################################

## here we need "remove --base-iri $(URIBASE)/""  instead of "remove --base-iri $(URIBASE)/NFDICORE"  as suggested in the generated main file

# base: A version of the ontology that does not include any externally imported axioms.
#$(ONT)-base.owl: $(EDIT_PREPROCESSED) $(OTHER_SRC) $(IMPORT_FILES)
#	$(ROBOT_RELEASE_IMPORT_MODE) \
#	reason --reasoner ELK --equivalent-classes-allowed asserted-only --exclude-tautologies structural --annotate-inferred-axioms False \
#	relax \
#	reduce -r ELK \
#	remove --base-iri $(URIBASE)/ --axioms external --preserve-structure false --trim false \
#	$(SHARED_ROBOT_COMMANDS) \
#	annotate --link-annotation http://purl.org/dc/elements/1.1/type http://purl.obolibrary.org/obo/IAO_8000001 \
#		--ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) \
#		--output $@.tmp.owl && mv $@.tmp.owl $@

#################################################################
## release simple version (modification) 
#################################################################
# somehow the standart method does not work, so we adapted the filter here
#

#$(ONT)-simple.owl: $(EDIT_PREPROCESSED) $(OTHER_SRC) $(SIMPLESEED) $(IMPORT_FILES)
#	$(ROBOT_RELEASE_IMPORT_MODE) \
#		reason --reasoner ELK --equivalent-classes-allowed asserted-only --exclude-tautologies structural --annotate-inferred-axioms False \
#		relax \
#		remove --axioms equivalent \
#		relax \
#		filter --select "<https://nfdi.fiz-karlsruhe.de/ontology/*>" --select "annotations ontology anonymous self" \
#		reduce -r ELK \
#		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru \
#		$(SHARED_ROBOT_COMMANDS) annotate --ontology-iri $(ONTBASE)/$@ $(ANNOTATE_ONTOLOGY_VERSION) --output $@.tmp.owl && mv $@.tmp.owl $@




#############################################################################
# lets add some additional annotations to the release artefacts
#############################################################################

#CITATION="'Hossein Beygi Nasrabadi, Jörg Waitelonis, Ebrahim Norouzi, Kostiantyn Hubaiev, Harald Sack. NFDI MatWerk Ontology (mwo). Revision: v$(VERSION). Retrieved from: https://nfdi.fiz-karlsruhe.de/mwo/$(VERSION)'"

#ALL_ANNOTATIONS=--ontology-iri https://nfdi.fiz-karlsruhe.de/ontology -V https://nfdi.fiz-karlsruhe.de/ontology/$(VERSION) \
#	--annotation http://purl.org/dc/terms/created "$(TODAY)" \
#	--annotation http://purl.org/dc/terms/bibliographicCitation "$(CITATION)"  \
#	--link-annotation owl:priorVersion https://nfdi.fiz-karlsruhe.de/ontology/$(PRIOR_VERSION) \

#update-ontology-annotations: 
#	$(ROBOT) annotate --input ../../nfdicore.owl $(ALL_ANNOTATIONS) --output ../../nfdicore.owl && \
#	$(ROBOT) annotate --input ../../nfdicore.ttl $(ALL_ANNOTATIONS) --output ../../nfdicore.ttl && \
#	$(ROBOT) annotate --input ../../nfdicore-simple.owl $(ALL_ANNOTATIONS) --output ../../nfdicore-simple.owl && \
#	$(ROBOT) annotate --input ../../nfdicore-simple.ttl $(ALL_ANNOTATIONS) --output ../../nfdicore-simple.ttl && \
#	$(ROBOT) annotate --input ../../nfdicore-full.owl $(ALL_ANNOTATIONS) --output ../../nfdicore-full.owl && \
#	$(ROBOT) annotate --input ../../nfdicore-full.ttl $(ALL_ANNOTATIONS) --output ../../nfdicore-full.ttl && \
#	$(ROBOT) annotate --input ../../nfdicore-base.owl $(ALL_ANNOTATIONS) --output ../../nfdicore-base.owl && \
#	$(ROBOT) annotate --input ../../nfdicore-base.ttl $(ALL_ANNOTATIONS) --output ../../nfdicore-base.ttl 

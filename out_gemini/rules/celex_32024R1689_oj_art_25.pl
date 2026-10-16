% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 19a61049e394c5750f26bc38d2a7a371e13c9165e918a9e410ad9372ce93cc02
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_25').
:- pred already_placed_or_serviced/1, gloss('AI system already placed on market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_or_trademark_on/2, gloss('Entity puts name or trademark on an AI system'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('Entity makes substantial modification to an AI system'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose/2, gloss('Entity modifies intended purpose of an AI system'), source('celex:32024R1689/oj#art_25').
:- pred contractual_allocation_otherwise/2, gloss('Contractual arrangements allocate obligations otherwise'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider/2, gloss('Initial provider that placed AI system on market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred exempt_initial_provider_assistance/2, gloss('Initial provider clearly specified AI system not to be changed into high-risk'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate(Actor, Object), gloss('Actor must cooperate or provide assistance'), source('celex:32024R1689/oj#art_25').
:- pred must_comply(Actor, Object), gloss('Actor must comply with obligations'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_by_agreement(Actor, Object), gloss('Entities must specify information/assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred annex_1_product_manufacturer/2, gloss('Manufacturer of product covered by Annex I Union harmonisation legislation'), source('celex:32024R1689/oj#art_25').
:- pred supplies_component_to/2, gloss('Third party supplies AI system, tool, service, component or process to provider'), source('celex:32024R1689/oj#art_25').
:- pred open_source_public_component/1, gloss('Component made accessible to public under free and open-source licence other than GPAI model'), source('celex:32024R1689/oj#art_25').
:- pred permitted_develop_model_terms(Actor, Object), gloss('AI Office may develop voluntary model terms'), source('celex:32024R1689/oj#art_25').

% Paragraph 1: Third parties considered providers of a high-risk AI system
provider(Entity) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    puts_name_or_trademark_on(Entity, System),
    \+ contractual_allocation_otherwise(Entity, System).

provider(Entity) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    makes_substantial_modification(Entity, System).

provider(Entity) :-
    \+ high_risk_ai_system(OldSystem),
    already_placed_or_serviced(OldSystem),
    modifies_intended_purpose(Entity, OldSystem),
    high_risk_ai_system(OldSystem).

must_comply(Entity, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    puts_name_or_trademark_on(Entity, System),
    \+ contractual_allocation_otherwise(Entity, System).

must_comply(Entity, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    already_placed_or_serviced(System),
    makes_substantial_modification(Entity, System).

must_comply(Entity, obligations_article_16(OldSystem)) :-
    \+ high_risk_ai_system(OldSystem),
    already_placed_or_serviced(OldSystem),
    modifies_intended_purpose(Entity, OldSystem),
    high_risk_ai_system(OldSystem).

% Paragraph 2: Initial provider obligations and exemption
must_cooperate(InitialProvider, assistance_to(NewProvider, System)) :-
    initial_provider(InitialProvider, System),
    provider(NewProvider),
    NewProvider \= InitialProvider,
    \+ exempt_initial_provider_assistance(InitialProvider, System).

% Paragraph 3: Product manufacturer considered provider
provider(Manufacturer) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(together(System, Product)),
    puts_name_or_trademark_on(Manufacturer, System).

provider(Manufacturer) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(Product),
    putting_into_service(System),
    puts_name_or_trademark_on(Manufacturer, System).

must_comply(Manufacturer, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(together(System, Product)),
    puts_name_or_trademark_on(Manufacturer, System).

must_comply(Manufacturer, obligations_article_16(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    annex_1_product_manufacturer(Manufacturer, Product),
    placing_on_market(Product),
    putting_into_service(System),
    puts_name_or_trademark_on(Manufacturer, System).

% Paragraph 4: Value-chain cooperation agreement
must_specify_by_agreement(parties(Provider, ThirdParty), support_agreement(System, Component)) :-
    provider(Provider),
    high_risk_ai_system(System),
    supplies_component_to(ThirdParty, Provider),
    \+ open_source_public_component(Component).

permitted_develop_model_terms(ai_office, model_terms_for_value_chain_contracts).

% Provenance
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_comply/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(permitted_develop_model_terms/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

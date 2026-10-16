% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c8fd7233e162825b5c7d7c22a624f414512ec3b371559fd4a17c2b5ec885af3d
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider/2, gloss('entity considered to be provider of high-risk AI system under Article 25'), source('celex:32024R1689/oj#art_25').

:- pred initial_provider_no_longer_provider/1, gloss('initial provider ceases to be considered provider of specific AI system'), source('celex:32024R1689/oj#art_25/par_2').

:- pred must_cooperate_with_new_providers/2, gloss('initial provider must cooperate with new providers'), source('celex:32024R1689/oj#art_25/par_2').

:- pred must_make_available_information/2, gloss('initial provider must make available necessary information'), source('celex:32024R1689/oj#art_25/par_2').

:- pred must_provide_technical_access/2, gloss('initial provider must provide reasonably expected technical access'), source('celex:32024R1689/oj#art_25/par_2').

:- pred must_provide_assistance/2, gloss('initial provider must provide other assistance required for fulfilment of obligations'), source('celex:32024R1689/oj#art_25/par_2').

:- pred excluded_from_provider_obligations/1, gloss('initial provider excluded from handing over documentation when specified not to change into high-risk'), source('celex:32024R1689/oj#art_25/par_2').

:- pred product_manufacturer_considered_provider/2, gloss('product manufacturer considered provider of high-risk AI system that is safety component'), source('celex:32024R1689/oj#art_25/par_3').

:- pred must_specify_by_written_agreement/2, gloss('provider and third party must specify necessary elements by written agreement'), source('celex:32024R1689/oj#art_25/par_4').

:- pred third_party_supplies_elements/2, gloss('third party supplies AI system, tools, services, components, or processes to provider'), source('celex:32024R1689/oj#art_25/par_4').

:- pred exempt_open_source_third_party/1, gloss('third party exempt when making accessible tools, services, processes, or components under free and open-source licence'), source('celex:32024R1689/oj#art_25/par_4').

% Article 25(1) - circumstances where distributor, importer, deployer or other third-party becomes provider

considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    high_risk_ai_system(S),
    puts_name_or_trademark_on(Party, S),
    (placed_on_market(S); put_into_service(S)),
    \+ contractual_arrangement_allocates_obligations(Party, S).

considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    high_risk_ai_system(S),
    placed_on_market(S),
    substantial_modification_to(Party, S),
    remains_high_risk_after_modification(S).

considered_provider(Party, S) :-
    (distributor(Party); importer(Party); deployer(Party); third_party(Party)),
    ai_system(S),
    (general_purpose_ai_system(S); \+ general_purpose_ai_system(S)),
    \+ high_risk_ai_system(S),
    (placed_on_market(S); put_into_service(S)),
    modifies_intended_purpose(Party, S),
    becomes_high_risk_after_purpose_modification(S).

% Article 25(2) - initial provider no longer considered provider

initial_provider_no_longer_provider(InitialProvider) :-
    provider(InitialProvider),
    considered_provider(_NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S).

must_cooperate_with_new_providers(InitialProvider, NewProvider) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.

must_make_available_information(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.

must_provide_technical_access(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.

must_provide_assistance(InitialProvider, new_provider(NewProvider)) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_on_market_or_put_into_service(InitialProvider, S),
    NewProvider \= InitialProvider.

excluded_from_provider_obligations(InitialProvider) :-
    provider(InitialProvider),
    clearly_specified_not_to_change_into_high_risk(InitialProvider, S),
    \+ obligation_to_hand_over_documentation(InitialProvider, S).

% Article 25(3) - product manufacturer as provider for safety components

product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product),
    ai_system_is_safety_component_of(S, Product),
    placed_on_market_together_with_product(S, Product),
    under_name_or_trademark_of(Manufacturer, S).

product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product),
    ai_system_is_safety_component_of(S, Product),
    placed_on_market(Product),
    put_into_service_under_name_or_trademark_of(Manufacturer, S).

% Article 25(4) - written agreement between provider and third party

must_specify_by_written_agreement(Provider, agreement_with(ThirdParty, Elements)) :-
    provider(Provider),
    high_risk_ai_system(S),
    third_party_supplies_elements(ThirdParty, S),
    \+ exempt_open_source_third_party(ThirdParty),
    Elements = elements(information, capabilities, technical_access, assistance).

third_party_supplies_elements(ThirdParty, S) :-
    third_party(ThirdParty),
    high_risk_ai_system(S),
    (supplies_ai_system(ThirdParty, S); supplies_tools(ThirdParty, S); supplies_services(ThirdParty, S); supplies_components(ThirdParty, S); supplies_processes(ThirdParty, S)),
    used_or_integrated_in(ThirdParty, S).

exempt_open_source_third_party(ThirdParty) :-
    third_party(ThirdParty),
    makes_accessible_to_public(ThirdParty, tools),
    makes_accessible_to_public(ThirdParty, services),
    makes_accessible_to_public(ThirdParty, processes),
    makes_accessible_to_public(ThirdParty, components),
    \+ general_purpose_ai_model_supplied(ThirdParty),
    free_and_open_source_licence(ThirdParty).

% Provenance

provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_no_longer_provider/1, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(must_provide_assistance/2, 'celex:32024R1689/oj#art_25/par_2').
provenance(excluded_from_provider_obligations/1, 'celex:32024R1689/oj#art_25/par_2').
provenance(product_manufacturer_considered_provider/2, 'celex:32024R1689/oj#art_25/par_3').
provenance(must_specify_by_written_agreement/2, 'celex:32024R1689/oj#art_25/par_4').
provenance(third_party_supplies_elements/2, 'celex:32024R1689/oj#art_25/par_4').
provenance(exempt_open_source_third_party/1, 'celex:32024R1689/oj#art_25/par_4').

% References

references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25/par_1', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25/par_4', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25/par_5', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25/par_5', 'celex:32024R1689/oj#art_25/par_3').

% Additional predicates needed (not in frozen signature)

:- pred third_party/1, gloss('entity other than provider in the AI value chain'), source('celex:32024R1689/oj#art_25').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6').
:- pred puts_name_or_trademark_on/2, gloss('entity places its name or trademark on AI system'), source('celex:32024R1689/oj#art_25/par_1').
:- pred placed_on_market/1, gloss('AI system has been placed on market'), source('celex:32024R1689/oj#art_25').
:- pred put_into_service/1, gloss('AI system has been put into service'), source('celex:32024R1689/oj#art_25').
:- pred contractual_arrangement_allocates_obligations/2, gloss('contractual arrangements allocate obligations otherwise'), source('celex:32024R1689/oj#art_25/par_1').
:- pred substantial_modification_to/2, gloss('entity makes substantial modification to AI system'), source('celex:32024R1689/oj#art_25/par_1').
:- pred remains_high_risk_after_modification/1, gloss('AI system remains high-risk after substantial modification'), source('celex:32024R1689/oj#art_25/par_1').
:- pred modifies_intended_purpose/2, gloss('entity modifies intended purpose of AI system'), source('celex:32024R1689/oj#art_25/par_1').
:- pred becomes_high_risk_after_purpose_modification/1, gloss('AI system becomes high-risk after purpose modification'), source('celex:32024R1689/oj#art_25/par_1').
:- pred initially_placed_on_market_or_put_into_service/2, gloss('initial provider placed AI system on market or put it into service'), source('celex:32024R1689/oj#art_25/par_2').
:- pred clearly_specified_not_to_change_into_high_risk/2, gloss('initial provider clearly specified AI system not to be changed into high-risk'), source('celex:32024R1689/oj#art_25/par_2').
:- pred obligation_to_hand_over_documentation/2, gloss('obligation to hand over documentation exists'), source('celex:32024R1689/oj#art_25/par_2').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_25/par_3').
:- pred ai_system_is_safety_component_of/2, gloss('AI system is safety component of product'), source('celex:32024R1689/oj#art_25/par_3').
:- pred placed_on_market_together_with_product/2, gloss('AI system placed on market together with product'), source('celex:32024R1689/oj#art_25/par_3').
:- pred under_name_or_trademark_of/2, gloss('under name or trademark of entity'), source('celex:32024R1689/oj#art_25/par_3').
:- pred put_into_service_under_name_or_trademark_of/2, gloss('AI system put into service under name or trademark of entity'), source('celex:32024R1689/oj#art_25/par_3').
:- pred supplies_ai_system/2, gloss('third party supplies AI system'), source('celex:32024R1689/oj#art_25/par_4').
:- pred supplies_tools/2, gloss('third party supplies tools'), source('celex:32024R1689/oj#art_25/par_4').
:- pred supplies_services/2, gloss('third party supplies services'), source('celex:32024R1689/oj#art_25/par_4').
:- pred supplies_components/2, gloss('third party supplies components'), source('celex:32024R1689/oj#art_25/par_4').
:- pred supplies_processes/2, gloss('third party supplies processes'), source('celex:32024R1689/oj#art_25/par_4').
:- pred used_or_integrated_in/2, gloss('elements are used or integrated in high-risk AI system'), source('celex:32024R1689/oj#art_25/par_4').
:- pred makes_accessible_to_public/2, gloss('entity makes something accessible to public'), source('celex:32024R1689/oj#art_25/par_4').
:- pred general_purpose_ai_model_supplied/1, gloss('third party supplies general-purpose AI model'), source('celex:32024R1689/oj#art_25/par_4').
:- pred free_and_open_source_licence/1, gloss('made available under free and open-source licence'), source('celex:32024R1689/oj#art_25/par_4').

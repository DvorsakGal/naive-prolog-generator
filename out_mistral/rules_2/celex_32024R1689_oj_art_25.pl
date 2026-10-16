% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : cbad0c4d09c5880e1140476b4d532d3cf00283560d722162c06f9d316917d695
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider/1, gloss('distributor, importer, deployer or other third-party considered to be a provider of a high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_or_trademark_on/2, gloss('party puts their name or trademark on a high-risk AI system already placed on the market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('party makes a substantial modification to a high-risk AI system already placed on the market or put into service such that it remains high-risk'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose/2, gloss('party modifies the intended purpose of an AI system not classified as high-risk such that it becomes high-risk'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider/1, gloss('provider that initially placed the AI system on the market or put it into service'), source('celex:32024R1689/oj#art_25').
:- pred no_longer_considered_provider/1, gloss('initial provider no longer considered to be a provider of that specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_considered_provider/1, gloss('product manufacturer considered to be the provider of the high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred high_risk_ai_system_placed_with_product/2, gloss('high-risk AI system placed on the market together with the product under the name or trademark of the product manufacturer'), source('celex:32024R1689/oj#art_25').
:- pred high_risk_ai_system_put_into_service_under_product_manufacturer/2, gloss('high-risk AI system put into service under the name or trademark of the product manufacturer after the product has been placed on the market'), source('celex:32024R1689/oj#art_25').
:- pred written_agreement_specifies/3, gloss('provider and third party by written agreement specify necessary information, capabilities, technical access and other assistance'), source('celex:32024R1689/oj#art_25').
:- pred third_party_supplies/2, gloss('third party supplies an AI system, tools, services, components, or processes used or integrated in a high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred free_and_open_source_licence/1, gloss('tools, services, processes, or components made accessible under a free and open-source licence'), source('celex:32024R1689/oj#art_25').
:- pred specified_not_to_be_changed_into_high_risk/1, gloss('initial provider has clearly specified that its AI system is not to be changed into a high-risk AI system'), source('celex:32024R1689/oj#art_25').

considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).

considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    distributor(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    distributor(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    importer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    importer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    deployer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    deployer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    general_purpose_ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

considered_provider(P) :-
    general_purpose_ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).

must_comply(considered_provider(P), obligations_of_provider_art_16).

no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    puts_name_or_trademark_on(NewP, S),
    P \= NewP.

no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    makes_substantial_modification(NewP, S),
    P \= NewP.

no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    modifies_intended_purpose(NewP, S),
    P \= NewP.

must_cooperate_with_authorities(initial_provider(P), new_provider(NewP)) :-
    initial_provider(P),
    considered_provider(NewP),
    no_longer_considered_provider(P),
    P \= NewP.

must_provide(initial_provider(P), necessary_information_and_technical_access(NewP)) :-
    initial_provider(P),
    considered_provider(NewP),
    no_longer_considered_provider(P),
    P \= NewP,
    \+ specified_not_to_be_changed_into_high_risk(P).

product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_placed_with_product(S, M).

product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_put_into_service_under_product_manufacturer(S, M).

must_comply(product_manufacturer_considered_provider(M), obligations_of_provider_art_16).

written_agreement_specifies(provider(P), third_party(T), information_capabilities_access_assistance) :-
    provider(P),
    high_risk_ai_system(S),
    third_party_supplies(T, S),
    \+ free_and_open_source_licence(T).

must_provide(ai_office, voluntary_model_terms_for_contracts).

voluntary_model_terms(P) :-
    ai_office(A),
    may_provide_guidance(A).

provenance(considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(puts_name_or_trademark_on/2, 'celex:32024R1689/oj#art_25').
provenance(makes_substantial_modification/2, 'celex:32024R1689/oj#art_25').
provenance(modifies_intended_purpose/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider/1, 'celex:32024R1689/oj#art_25').
provenance(no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(high_risk_ai_system_placed_with_product/2, 'celex:32024R1689/oj#art_25').
provenance(high_risk_ai_system_put_into_service_under_product_manufacturer/2, 'celex:32024R1689/oj#art_25').
provenance(written_agreement_specifies/3, 'celex:32024R1689/oj#art_25').
provenance(third_party_supplies/2, 'celex:32024R1689/oj#art_25').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').

references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

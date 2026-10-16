% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 4b6808f7d49c727095254d6d1143d7643153ded07905bae5e14013bdc0d1a769
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider/2, gloss('party considered to be provider of high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred no_longer_provider/1, gloss('initial provider no longer considered provider of specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_provider/2, gloss('initial provider must cooperate with new provider and provide information and assistance'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_considered_provider/1, gloss('product manufacturer considered provider of high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_by_written_agreement/2, gloss('provider and third party must specify information and assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred may_develop_voluntary_model_terms/1, gloss('AI Office may develop and recommend voluntary model terms for contracts'), source('celex:32024R1689/oj#art_25').
:- pred must_take_into_account_contractual_requirements/2, gloss('AI Office must take into account possible contractual requirements in specific sectors or business cases'), source('celex:32024R1689/oj#art_25').

considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    high_risk_ai_system(S),
    puts_name_or_trademark_on(T, S),
    placed_on_market_or_put_into_service(S),
    \+ contractual_arrangement_obligations_allocated(T, S).

considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    substantial_modification_to_high_risk(S),
    remains_high_risk_after_modification(S).

considered_provider(T, S) :-
    (distributor(T); importer(T); deployer(T); other_third_party(T)),
    ai_system(S),
    general_purpose_ai_system(S),
    placed_on_market_or_put_into_service(S),
    \+ high_risk_ai_system(S),
    modifies_intended_purpose(T, S),
    becomes_high_risk_after_modification(S).

no_longer_provider(P) :-
    initially_placed_on_market_or_put_into_service(P, S),
    considered_provider(_T, S).

must_cooperate_with_new_provider(P, S) :-
    initially_placed_on_market_or_put_into_service(P, S),
    considered_provider(_T, S),
    \+ clearly_specified_not_to_change_into_high_risk(P, S).

product_manufacturer_considered_provider(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P),
    component_of(S, P),
    placed_on_market_together_with_product(S, P, M).

product_manufacturer_considered_provider(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P),
    component_of(S, P),
    product_placed_on_market(P),
    put_into_service_under_name_or_trademark(S, M).

must_specify_by_written_agreement(P, T) :-
    provider(P),
    high_risk_ai_system(S),
    supplies_for_high_risk_system(T, S),
    \+ free_and_open_source_licence(T),
    \+ general_purpose_ai_model(T).

supplies_for_high_risk_system(T, S) :-
    (supplies_ai_system(T, S); supplies_tools(T, S); supplies_services(T, S); supplies_components(T, S); supplies_processes(T, S)),
    used_or_integrated_in(T, S),
    high_risk_ai_system(S).

may_develop_voluntary_model_terms(ai_office) :-
    ai_office(ai_office).

must_take_into_account_contractual_requirements(ai_office, Sector) :-
    may_develop_voluntary_model_terms(ai_office),
    specific_sector(Sector).

must_take_into_account_contractual_requirements(ai_office, BusinessCase) :-
    may_develop_voluntary_model_terms(ai_office),
    business_case(BusinessCase).

published_free_of_charge(ai_office, voluntary_model_terms) :-
    may_develop_voluntary_model_terms(ai_office).

available_electronic_format(ai_office, voluntary_model_terms) :-
    may_develop_voluntary_model_terms(ai_office).

% Helper predicates for conditions in paragraph 1
other_third_party(T) :-
    \+ provider(T),
    \+ distributor(T),
    \+ importer(T),
    \+ deployer(T),
    operator(T).

puts_name_or_trademark_on(T, S) :-
    placed_or_put_into_service_by(_P, S).

placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).

contractual_arrangement_obligations_allocated(T, S) :-
    contract(T, _P, S),
    obligations_allocated(T, S).

substantial_modification_to_high_risk(S) :-
    substantial_modification(S),
    high_risk_ai_system(S).

remains_high_risk_after_modification(S) :-
    high_risk_ai_system(S).

modifies_intended_purpose(T, S) :-
    deployer(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    distributor(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    importer(T),
    intended_purpose_changed(S).
modifies_intended_purpose(T, S) :-
    other_third_party(T),
    intended_purpose_changed(S).

becomes_high_risk_after_modification(S) :-
    high_risk_ai_system(S).

% Helper predicates for paragraph 2
initially_placed_on_market_or_put_into_service(P, S) :-
    provider(P),
    placed_or_put_into_service_by(P, S).

clearly_specified_not_to_change_into_high_risk(P, S) :-
    provider(P),
    specification(P, S, not_high_risk).

% Helper predicates for paragraph 3
component_of(S, P) :-
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(P).

placed_on_market_together_with_product(S, P, M) :-
    placing_on_market(S),
    placing_on_market(P),
    product_manufacturer(M),
    under_name_or_trademark(P, M).

put_into_service_under_name_or_trademark(S, M) :-
    putting_into_service(S),
    product_manufacturer(M),
    under_name_or_trademark(S, M).

product_placed_on_market(P) :-
    placing_on_market(P).

% Helper predicates for paragraph 4
used_or_integrated_in(T, S) :-
    high_risk_ai_system(S),
    (ai_system(T); tools(T); services(T); components(T); processes(T)),
    integrated_in(T, S).

% Provenance
provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(may_develop_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').
provenance(must_take_into_account_contractual_requirements/2, 'celex:32024R1689/oj#art_25').
provenance(published_free_of_charge/2, 'celex:32024R1689/oj#art_25').
provenance(available_electronic_format/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

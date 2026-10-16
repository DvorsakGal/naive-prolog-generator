% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 695d4c2a76a24556654ed94a0fac66a965b3d8b57fc55e38f1a05672c5777591
% cached     : False
% title      : Obligations of distributors
:- pred must_verify_before_making_available/2, gloss('distributor must verify conformity before making high-risk AI system available'), source('celex:32024R1689/oj#art_24').
:- pred must_not_make_available_until_conformity/2, gloss('distributor must not make high-risk AI system available until brought into conformity'), source('celex:32024R1689/oj#art_24').
:- pred must_inform_provider_or_importer_of_risk/2, gloss('distributor must inform provider or importer of risk'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure_storage_transport_conditions/2, gloss('distributor must ensure storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
:- pred must_take_corrective_action/2, gloss('distributor must take corrective action for non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred must_inform_authorities_of_risk_and_corrective_action/2, gloss('distributor must inform authorities of risk and corrective actions taken'), source('celex:32024R1689/oj#art_24').
:- pred must_provide_information_on_request/2, gloss('distributor must provide information to competent authority on request'), source('celex:32024R1689/oj#art_24').
:- pred must_cooperate_with_authorities/2, gloss('distributor must cooperate with competent authorities'), source('celex:32024R1689/oj#art_24').
:- pred ce_marking_bears/1, gloss('system bears required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_eu_declaration_of_conformity/1, gloss('system accompanied by EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_instructions_for_use/1, gloss('system accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred provider_complied_with_obligations/1, gloss('provider has complied with obligations'), source('celex:32024R1689/oj#art_24').
:- pred importer_complied_with_obligations/1, gloss('importer has complied with obligations'), source('celex:32024R1689/oj#art_24').
:- pred not_in_conformity_with_requirements/1, gloss('system not in conformity with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk_within_meaning_art_79_1/1, gloss('system presents risk within meaning of Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_conditions_applicable/1, gloss('storage or transport conditions applicable to system'), source('celex:32024R1689/oj#art_24').
:- pred jeopardises_compliance/1, gloss('conditions jeopardise compliance with requirements'), source('celex:32024R1689/oj#art_24').
:- pred made_available_on_market_by_distributor/2, gloss('distributor has made system available on market'), source('celex:32024R1689/oj#art_24').
:- pred under_responsibility_of_distributor/2, gloss('system under responsibility of distributor'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request_from_authority/2, gloss('reasoned request from competent authority to distributor'), source('celex:32024R1689/oj#art_24').
:- pred relevant_competent_authority_for_system/2, gloss('authority competent for the high-risk AI system concerned'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    before_making_available(Distributor, S),
    ce_marking_bears(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    (provider_complied_with_obligations(S) ; true),
    (importer_applicable(S) -> importer_complied_with_obligations(S) ; true).

must_not_make_available_until_conformity(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S).

must_not_make_available_until_conformity(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S),
    presents_risk_within_meaning_art_79_1(S),
    must_inform_provider_or_importer_of_risk(Distributor, S).

must_inform_provider_or_importer_of_risk(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    presents_risk_within_meaning_art_79_1(S),
    considers_or_has_reason_to_consider(Distributor, S),
    \+ made_available_on_market(Distributor, S),
    (provider(P) ; importer(I)).

must_ensure_storage_transport_conditions(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    under_responsibility_of_distributor(Distributor, S),
    storage_or_transport_conditions_applicable(S),
    \+ jeopardises_compliance(S).

must_take_corrective_action(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    not_in_conformity_with_requirements(S),
    considers_or_has_reason_to_consider(Distributor, S),
    (take_corrective_actions(Distributor, S) ;
     ensure_provider_importer_or_operator_takes_actions(Distributor, S)).

must_inform_authorities_of_risk_and_corrective_action(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    presents_risk_within_meaning_art_79_1(S),
    considers_or_has_reason_to_consider(Distributor, S),
    relevant_competent_authority_for_system(Authority, S),
    must_inform(Distributor, risk_and_corrective_actions(S, Authority)).

must_provide_information_on_request(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    reasoned_request_from_authority(Authority, Distributor),
    relevant_competent_authority_for_system(Authority, S),
    must_provide(Distributor, information_and_documentation(S, actions_under_art_24)).

must_cooperate_with_authorities(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(Distributor, S),
    relevant_competent_authority_for_system(Authority, S),
    authority_takes_action(Authority, S).

% Helper predicates for conditions used in multiple rules
considers_or_has_reason_to_consider(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    basis_of_information_in_possession(Distributor, S).

importer_applicable(S) :-
    high_risk_ai_system(S),
    importer(_I).

before_making_available(Distributor, S) :-
    distributor(Distributor),
    high_risk_ai_system(S),
    \+ made_available_on_market(Distributor, S).

% Provenance facts
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_authorities_of_risk_and_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24').
provenance(ce_marking_bears/1, 'celex:32024R1689/oj#art_24').
provenance(accompanied_by_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_24').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_24').
provenance(provider_complied_with_obligations/1, 'celex:32024R1689/oj#art_24').
provenance(importer_complied_with_obligations/1, 'celex:32024R1689/oj#art_24').
provenance(not_in_conformity_with_requirements/1, 'celex:32024R1689/oj#art_24').
provenance(presents_risk_within_meaning_art_79_1/1, 'celex:32024R1689/oj#art_24').
provenance(storage_or_transport_conditions_applicable/1, 'celex:32024R1689/oj#art_24').
provenance(jeopardises_compliance/1, 'celex:32024R1689/oj#art_24').
provenance(made_available_on_market_by_distributor/2, 'celex:32024R1689/oj#art_24').
provenance(under_responsibility_of_distributor/2, 'celex:32024R1689/oj#art_24').
provenance(reasoned_request_from_authority/2, 'celex:32024R1689/oj#art_24').
provenance(relevant_competent_authority_for_system/2, 'celex:32024R1689/oj#art_24').
provenance(considers_or_has_reason_to_consider/2, 'celex:32024R1689/oj#art_24').
provenance(importer_applicable/1, 'celex:32024R1689/oj#art_24').
provenance(before_making_available/2, 'celex:32024R1689/oj#art_24').

% Reference facts
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').

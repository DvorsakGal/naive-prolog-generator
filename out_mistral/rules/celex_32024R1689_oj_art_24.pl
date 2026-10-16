% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : eda30d5d4aab7e923ece94709eeccfe7227f2796e50cb6713868662e3b696a4c
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_24').
:- pred bears_ce_marking/1, gloss('AI system bears the required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_eu_declaration_of_conformity/1, gloss('AI system is accompanied by a copy of the EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_instructions_for_use/1, gloss('AI system is accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred provider_complied_with_obligations/2, gloss('provider has complied with obligations under Article 16(b) and 16(c)'), source('celex:32024R1689/oj#art_24').
:- pred importer_complied_with_obligations/2, gloss('importer has complied with obligations under Article 23(3)'), source('celex:32024R1689/oj#art_24').
:- pred distributor_considers_non_conformity/2, gloss('distributor considers or has reason to consider system not in conformity'), source('celex:32024R1689/oj#art_24').
:- pred system_presents_risk/1, gloss('AI system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_conditions_jeopardise_compliance/2, gloss('storage or transport conditions jeopardise compliance of the system'), source('celex:32024R1689/oj#art_24').
:- pred corrective_actions_taken/2, gloss('corrective actions taken to bring system into conformity, withdraw or recall it'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request_from_competent_authority/2, gloss('reasoned request from a relevant competent authority'), source('celex:32024R1689/oj#art_24').
:- pred relevant_competent_authority/1, gloss('relevant competent authority for a high-risk AI system'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    before_placing_on_market(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    provider_complied_with_obligations(P, S),
    provider(P),
    importer_complied_with_obligations(I, S),
    importer(I).

must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    before_placing_on_market(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    provider_complied_with_obligations(P, S),
    provider(P),
    \+ importer(_I).

must_not_make_available_until_conformity(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    \+ in_conformity_with_requirements(S).

must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    provider(P),
    provider(P, S).

must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    importer(I),
    importer(I, S).

must_ensure_storage_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility_of(D, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(D, S).

must_take_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    corrective_actions_taken(D, S).

must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    provider(P),
    provider(P, S).

must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    importer(I),
    importer(I, S).

must_ensure_corrective_actions_by_others(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    \+ corrective_actions_taken(D, S),
    operator(O),
    relevant_operator(O, S).

must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    provider(P),
    provider(P, S).

must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    importer(I),
    importer(I, S).

must_immediately_inform_of_non_compliance_and_corrective_actions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    distributor_considers_non_conformity(D, S),
    system_presents_risk(S),
    relevant_competent_authority(A),
    authorities_competent_for(A, S).

must_provide_information_and_documentation(D, S, A) :-
    distributor(D),
    high_risk_ai_system(S),
    relevant_competent_authority(A),
    reasoned_request_from_competent_authority(A, D),
    actions_pursuant_to_paragraphs_1_to_4(D, S).

must_cooperate_with_competent_authorities(D, S, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by(D, S),
    relevant_competent_authority(A),
    action_taken_by_authority(A, S).

provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_corrective_actions_by_others/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_of_non_compliance_and_corrective_actions/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/3, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authorities/3, 'celex:32024R1689/oj#art_24').

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

% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1894981f0f5673f0399434a4aa17cb2fe17a35e9e1bebef235b59d09bcfb43b9
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred eu_declaration_of_conformity/1, gloss('declaration referred to in Article 47'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk/1, gloss('presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred non_conformity_with_section_2_requirements/1, gloss('not in conformity with requirements set out in Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_conditions_jeopardise_compliance/1, gloss('storage or transport conditions jeopardise compliance with Section 2 requirements'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S),
    ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    instructions_for_use(S),
    provider_complied_with_obligations(S),
    importer_complied_with_obligations(S).

must_not_make_available_if_non_conforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    non_conformity_with_section_2_requirements(S).

must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    \+ made_available_on_market_by_distributor(D, S).

must_ensure_storage_transport_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility(D, S),
    \+ storage_or_transport_conditions_jeopardise_compliance(S).

must_take_corrective_action_for_non_conforming_system(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S),
    non_conformity_with_section_2_requirements(S).

must_immediately_inform_authorities_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S),
    presents_risk(S).

must_provide_information_to_competent_authority(D, A, S) :-
    distributor(D),
    national_competent_authority(A),
    high_risk_ai_system(S),
    reasoned_request(A, S).

must_cooperate_with_competent_authority(D, A, S) :-
    distributor(D),
    national_competent_authority(A),
    high_risk_ai_system(S),
    made_available_on_market_by_distributor(D, S).

provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_if_non_conforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_for_non_conforming_system/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_to_competent_authority/3, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authority/3, 'celex:32024R1689/oj#art_24').

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

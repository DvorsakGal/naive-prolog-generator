% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : e2f756e201a167c177504880d50cceb8cfdb53ba43e03e3534e4909ce195e7ed
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred system_referred_to_in_annex_3/1, gloss('AI system referred to in Annex III'), source('celex:32024R1689/oj#art_6').
:- pred third_party_conformity_assessment_required/1, gloss('product or AI system required to undergo third-party conformity assessment under Annex I legislation'), source('celex:32024R1689/oj#art_6').
:- pred safety_component_of_annex_1_product/1, gloss('AI system intended to be used as a safety component of an Annex I product'), source('celex:32024R1689/oj#art_6').
:- pred exempt_annex_3_high_risk/1, gloss('Annex III AI system exempt from high-risk classification because it does not pose significant risk of harm'), source('celex:32024R1689/oj#art_6').
:- pred intended_for_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_improve_prior_human_result/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_to_detect_decision_patterns/1, gloss('AI system intended to detect patterns or deviations without replacing human assessment without review'), source('celex:32024R1689/oj#art_6').
:- pred intended_for_preparatory_task/1, gloss('AI system intended to perform a preparatory task for an assessment in Annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling_of_natural_persons/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred assessment_documented/2, gloss('provider has documented assessment of non-high-risk status before placing on market/putting into service'), source('celex:32024R1689/oj#art_6').
:- pred requested_documentation/2, gloss('national competent authority requested documentation of the assessment from provider'), source('celex:32024R1689/oj#art_6').
:- pred must_document_assessment/2, gloss('provider must document assessment before placing on market or putting into service'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_documentation/2, gloss('provider must provide documentation of assessment to authority'), source('celex:32024R1689/oj#art_6').
:- pred must_register/2, gloss('provider must register the AI system pursuant to Article 49(2)'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_guidelines/2, gloss('Commission must provide practical implementation guidelines'), source('celex:32024R1689/oj#art_6').

% Article 6(1): Annex I products and safety components
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_annex_1_product(S),
    third_party_conformity_assessment_required(S).

high_risk_ai_system(S) :-
    ai_system(S),
    system_covered_by_annex_1(S),
    third_party_conformity_assessment_required(S).

% Article 6(2) and 6(3): Annex III systems
high_risk_ai_system(S) :-
    ai_system(S),
    system_referred_to_in_annex_3(S),
    performs_profiling_of_natural_persons(S).

high_risk_ai_system(S) :-
    ai_system(S),
    system_referred_to_in_annex_3(S),
    \+ performs_profiling_of_natural_persons(S),
    \+ exempt_annex_3_high_risk(S).

% Article 6(3) conditions under which Annex III systems are not high-risk
exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_for_narrow_procedural_task(S).

exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_to_improve_prior_human_result(S).

exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_to_detect_decision_patterns(S).

exempt_annex_3_high_risk(S) :-
    system_referred_to_in_annex_3(S),
    intended_for_preparatory_task(S).

% Article 6(4): Obligations on provider considering Annex III system not high-risk
must_document_assessment(P, S) :-
    provider(P),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S).

must_register(P, registration(S, article_49_2)) :-
    provider(P),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S).

must_provide_documentation(P, documentation(S, NCA)) :-
    provider(P),
    national_competent_authority(NCA),
    system_referred_to_in_annex_3(S),
    exempt_annex_3_high_risk(S),
    \+ performs_profiling_of_natural_persons(S),
    requested_documentation(NCA, assessment(P, S)).

% Article 6(5): Commission guidelines deadline and scope
must_provide_guidelines(C, guidelines(practical_implementation_art_6, deadline(date(2026, 2, 2)))) :-
    commission(C).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_annex_1_product/1, 'celex:32024R1689/oj#art_6').
provenance(third_party_conformity_assessment_required/1, 'celex:32024R1689/oj#art_6').
provenance(system_referred_to_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_annex_3_high_risk/1, 'celex:32024R1689/oj#art_6').
provenance(intended_for_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_improve_prior_human_result/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_detect_decision_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(intended_for_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(assessment_documented/2, 'celex:32024R1689/oj#art_6').
provenance(requested_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6').

% References
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

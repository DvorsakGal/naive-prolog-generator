% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1b1716be79727fdacb95bc494f1e2816bd4f54b8aaddbfe5fabdf269816c2b06
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred significant_risk_of_harm/1, gloss('poses significant risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6/par_3').
:- pred profiling_of_natural_persons/1, gloss('performs profiling of natural persons'), source('celex:32024R1689/oj#art_6/par_3/unp_3').
:- pred narrow_procedural_task/1, gloss('intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
:- pred improves_previous_human_activity/1, gloss('intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
:- pred detects_decision_patterns/1, gloss('intended to detect decision-making patterns or deviations without replacing human assessment'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
:- pred preparatory_task/1, gloss('intended to perform a preparatory task to an assessment for Annex III use cases'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
:- pred must_document_assessment/2, gloss('provider must document assessment that Annex III system is not high-risk'), source('celex:32024R1689/oj#art_6/par_4').
:- pred must_provide_documentation/2, gloss('provider must provide documentation of assessment on request'), source('celex:32024R1689/oj#art_6/par_4').

% Paragraph 1: high-risk where both conditions hold
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_or_product_covered(S),
    requires_third_party_conformity_assessment(S).

safety_component_or_product_covered(S) :-
    safety_component(S),
    product_covered_by_annex_i(S).
safety_component_or_product_covered(S) :-
    ai_system(S),
    product_covered_by_annex_i(S).

requires_third_party_conformity_assessment(S) :-
    safety_component(S),
    product_covered_by_annex_i(P),
    component_of(S, P),
    requires_conformity_assessment(P).
requires_third_party_conformity_assessment(S) :-
    ai_system(S),
    product_covered_by_annex_i(S),
    requires_conformity_assessment(S).

% Paragraph 2: Annex III systems are high-risk
high_risk_ai_system(S) :-
    ai_system(S),
    annex_iii_system(S).

% Paragraph 3: derogation from paragraph 2
% An Annex III system is NOT high-risk if it does not pose significant risk of harm
% and meets one of the conditions (a)-(d), UNLESS it performs profiling.
high_risk_ai_system(S) :-
    annex_iii_system(S),
    profiling_of_natural_persons(S).

% The derogation: an Annex III system is not high-risk if it meets the conditions
% We express this by NOT having a high_risk_ai_system clause for systems that satisfy
% the derogation conditions, provided they do not perform profiling.
% The conditions that prevent high-risk classification:
exempt_from_high_risk(S) :-
    annex_iii_system(S),
    \+ profiling_of_natural_persons(S),
    \+ significant_risk_of_harm(S),
    derogation_condition_met(S).

derogation_condition_met(S) :-
    narrow_procedural_task(S).
derogation_condition_met(S) :-
    improves_previous_human_activity(S).
derogation_condition_met(S) :-
    detects_decision_patterns(S).
derogation_condition_met(S) :-
    preparatory_task(S).

% Paragraph 4: provider obligations for Annex III systems considered not high-risk
must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_iii_system(S),
    exempt_from_high_risk(S),
    \+ placed_on_market_or_put_into_service(S).

must_provide_documentation(Provider, S) :-
    provider(Provider),
    annex_iii_system(S),
    exempt_from_high_risk(S),
    requested_by_competent_authority(Provider, S).

% Auxiliary predicates
:- pred product_covered_by_annex_i/1, gloss('product covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
:- pred requires_conformity_assessment/1, gloss('required to undergo third-party conformity assessment'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
:- pred component_of/2, gloss('first is a safety component of the second'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
:- pred annex_iii_system/1, gloss('AI system referred to in Annex III'), source('celex:32024R1689/oj#art_6/par_2').
:- pred placed_on_market_or_put_into_service/1, gloss('system has been placed on the market or put into service'), source('celex:32024R1689/oj#art_6/par_4').
:- pred requested_by_competent_authority/2, gloss('national competent authority has requested documentation'), source('celex:32024R1689/oj#art_6/par_4').

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_or_product_covered/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(exempt_from_high_risk/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(derogation_condition_met/1, 'celex:32024R1689/oj#art_6/par_3/unp_2').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(product_covered_by_annex_i/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(component_of/2, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(annex_iii_system/1, 'celex:32024R1689/oj#art_6/par_2').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_6/par_4').
provenance(requested_by_competent_authority/2, 'celex:32024R1689/oj#art_6/par_4').

% References
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

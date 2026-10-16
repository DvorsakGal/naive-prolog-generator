% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 36f082219f7ac94552bbb1314717052ab11ddf131c2c19d4d0c526d4b0fad1f5
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').

:- pred significant_risk_of_harm/1, gloss('poses significant risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6/par_3').
:- pred narrow_procedural_task/1, gloss('intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6/par_3/unp_1/pnt_a').
:- pred improves_human_activity/1, gloss('intended to improve result of previously completed human activity'), source('celex:32024R1689/oj#art_6/par_3/unp_1/pnt_b').
:- pred detects_decision_patterns/1, gloss('detects decision-making patterns without replacing or influencing human assessment'), source('celex:32024R1689/oj#art_6/par_3/unp_1/pnt_c').
:- pred preparatory_task/1, gloss('intended to perform preparatory task to assessment for Annex III use cases'), source('celex:32024R1689/oj#art_6/par_3/unp_1/pnt_d').
:- pred profiling_of_natural_persons/1, gloss('performs profiling of natural persons'), source('celex:32024R1689/oj#art_6/par_3/unp_2').

:- pred must_document_assessment/2, gloss('provider must document assessment before placing on market or putting into service'), source('celex:32024R1689/oj#art_6/par_4').
:- pred must_provide_assessment/2, gloss('provider must provide documentation upon request'), source('celex:32024R1689/oj#art_6/par_4').

% Article 6(1) - High-risk: safety component or product under Annex I harmonisation legislation requiring third-party conformity assessment
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product_or_product(S),
    requires_third_party_conformity_assessment(S).

safety_component_of_product_or_product(S) :-
    safety_component(S),
    covered_by_annex_i_legislation(S).
safety_component_of_product_or_product(S) :-
    ai_system(S),
    product(S),
    covered_by_annex_i_legislation(S).

requires_third_party_conformity_assessment(S) :-
    conformity_assessment_required(S, third_party).

% Article 6(2) - Annex III systems are high-risk
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S).

% Article 6(3) - Derogation from paragraph 2: not high-risk if no significant risk and one of conditions (a)-(d)
exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    narrow_procedural_task(S).

exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    improves_human_activity(S).

exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    detects_decision_patterns(S).

exempt_high_risk(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_of_harm(S),
    preparatory_task(S).

% Override: always high-risk if profiling
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    profiling_of_natural_persons(S).

% Article 6(4) - Provider must document assessment for non-high-risk Annex III systems
must_document_assessment(P, assessment(S)) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    exempt_high_risk(S),
    (placing_on_market(S); putting_into_service(S)).

must_provide_assessment(P, assessment(S)) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    exempt_high_risk(S),
    request(national_competent_authority(_), P, assessment(S)).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product_or_product/1, 'celex:32024R1689/oj#art_6/par_1').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1').
provenance(exempt_high_risk/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_a').
provenance(improves_human_activity/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_b').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_c').
provenance(preparatory_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_1/pnt_d').
provenance(profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6/par_3/unp_2').

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
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').

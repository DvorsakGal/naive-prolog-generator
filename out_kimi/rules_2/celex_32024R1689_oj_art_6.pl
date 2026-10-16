% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 537f18e94b503cd0e28245908cba11f4be4479433502125d10c5dac18ca2ee77
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').

% Article 6(1): high-risk through safety component + third-party conformity assessment
high_risk_ai_system(S) :-
    ai_system(S),
    ai_safety_component(S),
    product_covered_by_harmonisation_legislation(S),
    conformity_assessment_procedure(S).

high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    \+ ai_safety_component(S),
    conformity_assessment_procedure(S).

% Article 6(2): Annex III systems are high-risk
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S).

% Article 6(3): derogation for Annex III systems - not high-risk if no significant risk and one of conditions (a)-(d)
not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    narrow_procedural_task(S).

not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    improves_prior_human_activity(S).

not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    detects_decision_patterns(S),
    not_replaces_or_influences_prior_assessment(S),
    proper_human_review(S).

not_high_risk_under_art_6_par_3(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    \+ significant_risk_health(S),
    \+ significant_risk_fundamental_rights(S),
    preparatory_task_to_annex_3_assessment(S).

% Article 6(3) second paragraph: profiling always high-risk despite derogation
high_risk_ai_system(S) :-
    ai_system(S),
    referred_to_in_annex_3(S),
    profiling(S).

% Article 6(4): provider assessment documentation obligation
must_document_assessment(P, S) :-
    provider(P),
    ai_system(S),
    referred_to_in_annex_3(S),
    not_high_risk_under_art_6_par_3(S),
    before_placing_on_market_or_putting_into_service(S).

must_provide_assessment_documentation(P, S) :-
    provider(P),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S),
    request_by(national_competent_authority(_), P, S).

% New predicates for Article 6(3) conditions
:- pred narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
:- pred improves_prior_human_activity/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
:- pred detects_decision_patterns/1, gloss('AI system intended to detect decision-making patterns or deviations'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
:- pred not_replaces_or_influences_prior_assessment/1, gloss('not meant to replace or influence the previously completed human assessment'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
:- pred proper_human_review/1, gloss('proper human review is in place'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
:- pred preparatory_task_to_annex_3_assessment/1, gloss('AI system intended to perform a preparatory task to an assessment relevant for Annex III use cases'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
:- pred significant_risk_health/1, gloss('significant risk of harm to health or safety'), source('celex:32024R1689/oj#art_6/par_3').
:- pred significant_risk_fundamental_rights/1, gloss('significant risk of harm to fundamental rights'), source('celex:32024R1689/oj#art_6/par_3').
:- pred request_by/3, gloss('request made by authority to provider for assessment documentation'), source('celex:32024R1689/oj#art_6/par_4').

% Article 6(5): Commission guidelines obligation
must_provide_guidelines(commission, art_6_guidelines) :-
    before(date(2026, 2, 2)).

:- pred before/1, gloss('condition that a date is before specified deadline'), source('celex:32024R1689/oj#art_6/par_5').

% Article 6(6): Commission delegated act power to add/modify conditions
power_to_adopt_delegated_acts(commission).

% Article 6(7): Commission delegated act obligation to delete conditions
must_adopt_delegated_act(commission, delete_condition(art_6_par_3_unp_2)) :-
    concrete_reliable_evidence_necessary_for_protection.

:- pred concrete_reliable_evidence_necessary_for_protection/0, gloss('concrete and reliable evidence that deletion is necessary to maintain protection level'), source('celex:32024R1689/oj#art_6/par_7').

% Article 6(8): constraints on amendments
amendment_constraint(no_decrease_protection).
amendment_constraint(consistency_with_art_7).
amendment_constraint(consider_market_technological_developments).

:- pred amendment_constraint/1, gloss('constraint applicable to amendments under Article 6(6)-(7)'), source('celex:32024R1689/oj#art_6/par_8').

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(not_high_risk_under_art_6_par_3/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6/par_5').
provenance(power_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_6/par_6').
provenance(must_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6/par_7').
provenance(amendment_constraint/1, 'celex:32024R1689/oj#art_6/par_8').

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

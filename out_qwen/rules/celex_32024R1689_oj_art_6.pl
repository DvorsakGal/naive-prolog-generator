% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8d4e57de7db62bae260f205a745ca5e60e4d9bd00fb7eb29b5a99cd4a3b8dc05
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_annex_i_legislation/1, gloss('product or AI system covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6').
:- pred requires_third_party_conformity_assessment/1, gloss('product required to undergo third-party conformity assessment pursuant to Annex I legislation'), source('celex:32024R1689/oj#art_6').
:- pred referred_to_in_annex_iii/1, gloss('AI system falling within the categories listed in Annex III'), source('celex:32024R1689/oj#art_6').
:- pred poses_significant_risk/1, gloss('poses a significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling/1, gloss('performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred narrow_procedural_task/1, gloss('intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred improves_human_activity_result/1, gloss('intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred detects_decision_patterns/1, gloss('intended to detect decision-making patterns without replacing human assessment'), source('celex:32024R1689/oj#art_6').
:- pred preparatory_task_for_annex_iii/1, gloss('intended to perform a preparatory task for an Annex III use case assessment'), source('celex:32024R1689/oj#art_6').
:- pred must_document_non_high_risk_assessment/2, gloss('provider must document assessment that Annex III system is not high-risk'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_assessment_documentation/2, gloss('provider must provide documentation of non-high-risk assessment upon request'), source('celex:32024R1689/oj#art_6').

high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_i_legislation(S),
    requires_third_party_conformity_assessment(S).

high_risk_ai_system(S) :-
    referred_to_in_annex_iii(S),
    \+ exempt_from_high_risk_classification(S).

exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    narrow_procedural_task(S).

exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    improves_human_activity_result(S).

exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    detects_decision_patterns(S).

exempt_from_high_risk_classification(S) :-
    referred_to_in_annex_iii(S),
    \+ poses_significant_risk(S),
    \+ performs_profiling(S),
    preparatory_task_for_annex_iii(S).

must_document_non_high_risk_assessment(P, S) :-
    provider(P),
    referred_to_in_annex_iii(S),
    \+ high_risk_ai_system(S),
    before_placing_on_market_or_service(S).

must_provide_assessment_documentation(P, S) :-
    provider(P),
    referred_to_in_annex_iii(S),
    \+ high_risk_ai_system(S),
    requested_by_national_competent_authority(S).

before_placing_on_market_or_service(S) :-
    \+ placing_on_market(S).
before_placing_on_market_or_service(S) :-
    \+ putting_into_service(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(covered_by_annex_i_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(referred_to_in_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(poses_significant_risk/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_for_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').

references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

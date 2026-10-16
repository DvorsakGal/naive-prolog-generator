% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 4511e71cdf7e404e461c5b7924caabdcb40f318ad4fe1ac809f87e745443fb95
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system_art_6_par_1/1, gloss('AI system classified as high-risk under Article 6(1)'), source('celex:32024R1689/oj#art_6').
:- pred requires_third_party_conformity_assessment/1, gloss('product or AI system required to undergo third-party conformity assessment'), source('celex:32024R1689/oj#art_6').
:- pred exempt_high_risk_annex_iii/1, gloss('AI system referred to in Annex III not considered high-risk due to limited risk'), source('celex:32024R1689/oj#art_6').
:- pred performs_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred improves_result_of_human_activity/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred detects_decision_patterns_without_replacement/1, gloss('AI system detecting decision patterns without replacing human assessment'), source('celex:32024R1689/oj#art_6').
:- pred performs_preparatory_task_for_annex_iii/1, gloss('AI system performing preparatory task for Annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred must_document_non_high_risk_assessment/2, gloss('provider must document assessment that Annex III system is not high-risk'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_assessment_documentation/2, gloss('provider must provide documentation of non-high-risk assessment upon request'), source('celex:32024R1689/oj#art_6').

high_risk_ai_system_art_6_par_1(S) :-
    ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    requires_third_party_conformity_assessment(S).

requires_third_party_conformity_assessment(S) :-
    ai_safety_component(S),
    covered_by_union_harmonisation_legislation(S).

requires_third_party_conformity_assessment(S) :-
    ai_system(S),
    covered_by_union_harmonisation_legislation(S).

high_risk_ai_system(S) :-
    high_risk_ai_system_art_6_par_1(S).

high_risk_ai_system(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ exempt_high_risk_annex_iii(S).

exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    performs_narrow_procedural_task(S).

exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    improves_result_of_human_activity(S).

exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    detects_decision_patterns_without_replacement(S).

exempt_high_risk_annex_iii(S) :-
    high_risk_ai_system_annex_iii(S),
    \+ profiling(S),
    performs_preparatory_task_for_annex_iii(S).

must_document_non_high_risk_assessment(P, S) :-
    provider(P),
    high_risk_ai_system_annex_iii(S),
    exempt_high_risk_annex_iii(S),
    before_placing_on_market_or_service(S).

must_provide_assessment_documentation(P, A) :-
    provider(P),
    national_competent_authority(A),
    high_risk_ai_system_annex_iii(S),
    exempt_high_risk_annex_iii(S),
    reasoned_request(A, S).

provenance(high_risk_ai_system_art_6_par_1/1, 'celex:32024R1689/oj#art_6').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(performs_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_result_of_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(performs_preparatory_task_for_annex_iii/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').

references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

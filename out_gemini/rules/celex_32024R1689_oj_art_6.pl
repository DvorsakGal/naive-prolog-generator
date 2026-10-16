% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a82d6619afc5e8c4998217b77f5c88bfa3ada9cc36e446322e67014b395f25f0
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_annex_one_legislation/1, gloss('Product or AI system is covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6').
:- pred safety_component_of/2, gloss('AI system is intended to be used as a safety component of a product'), source('celex:32024R1689/oj#art_6').
:- pred required_third_party_conformity_assessment/1, gloss('Product or AI system is required to undergo third-party conformity assessment under Annex I legislation'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_annex_three/1, gloss('AI system referred to in Annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred exempt_high_risk_annex_three/1, gloss('AI system referred to in Annex III exempted from high-risk classification by Article 6(3)'), source('celex:32024R1689/oj#art_6').
:- pred poses_significant_risk_of_harm/1, gloss('AI system poses a significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling_of_natural_persons/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred satisfies_article_6_paragraph_3_condition/1, gloss('AI system fulfills one of the specific procedural/task conditions of Article 6(3)'), source('celex:32024R1689/oj#art_6').
:- pred narrow_procedural_task/1, gloss('AI system is intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred improves_result_of_human_activity/1, gloss('AI system is intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred detects_decision_patterns/1, gloss('AI system is intended to detect decision-making patterns without replacing human assessment'), source('celex:32024R1689/oj#art_6').
:- pred preparatory_task_to_annex_three_assessment/1, gloss('AI system is intended to perform a preparatory task to an assessment for Annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred considers_not_high_risk/2, gloss('Provider considers an Annex III AI system is not high-risk'), source('celex:32024R1689/oj#art_6').
:- pred must_document(Actor, Object), gloss('Actor must document Object'), source('celex:32024R1689/oj#art_6').
:- pred must_register(Actor, Object), gloss('Actor must register Object'), source('celex:32024R1689/oj#art_6').
:- pred must_provide(Actor, Object), gloss('Actor must provide Object upon request'), source('celex:32024R1689/oj#art_6').
:- pred requested_by(Object, Authority), gloss('Object is requested by national competent authority'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_guidelines(Actor, Object), gloss('Actor must provide guidelines on high-risk classification'), source('celex:32024R1689/oj#art_6').

% Article 6(1): Safety component or product under Annex I legislation requiring third-party conformity assessment
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of(S, Product),
    covered_by_annex_one_legislation(Product),
    required_third_party_conformity_assessment(Product).

high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_one_legislation(S),
    required_third_party_conformity_assessment(S).

% Article 6(2) and 6(3): Systems referred to in Annex III, unless derogated under paragraph 3
high_risk_ai_system(S) :-
    ai_system(S),
    covered_by_annex_three(S),
    \+ exempt_high_risk_annex_three(S).

% Derogation under Article 6(3) does not apply if the AI system performs profiling
exempt_high_risk_annex_three(S) :-
    ai_system(S),
    covered_by_annex_three(S),
    satisfies_article_6_paragraph_3_condition(S),
    \+ poses_significant_risk_of_harm(S),
    \+ performs_profiling_of_natural_persons(S).

satisfies_article_6_paragraph_3_condition(S) :-
    narrow_procedural_task(S).

satisfies_article_6_paragraph_3_condition(S) :-
    improves_result_of_human_activity(S).

satisfies_article_6_paragraph_3_condition(S) :-
    detects_decision_patterns(S).

satisfies_article_6_paragraph_3_condition(S) :-
    preparatory_task_to_annex_three_assessment(S).

% Article 6(4): Documentation, registration, and provision obligations for providers claiming exemption
must_document(Provider, assessment(System)) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System).

must_register(Provider, System) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System).

must_provide(Provider, documentation(assessment(System))) :-
    provider(Provider),
    considers_not_high_risk(Provider, System),
    covered_by_annex_three(System),
    requested_by(documentation(assessment(System)), Authority),
    national_competent_authority(Authority).

% Article 6(5): Commission obligation to provide guidelines by 2 February 2026
must_provide_guidelines(commission, guidelines(article_6, deadline(date(2026, 2, 2)))).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_annex_three/1, 'celex:32024R1689/oj#art_6').
provenance(satisfies_article_6_paragraph_3_condition/1, 'celex:32024R1689/oj#art_6').
provenance(must_document/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/2, 'celex:32024R1689/oj#art_6').

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
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

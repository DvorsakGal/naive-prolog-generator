% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0dbf6081f4c3e02217ab11123788ba866b45cbdaa4e5b2730fa0993d7e54d22f
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred safety_component_of_product/2, gloss('AI system is safety component of a product'), source('celex:32024R1689/oj#art_6').
:- pred product_covered_by_union_harmonisation_legislation/1, gloss('product covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6').
:- pred required_third_party_conformity_assessment/1, gloss('product or AI system required to undergo third-party conformity assessment'), source('celex:32024R1689/oj#art_6').
:- pred ai_system_listed_in_annex_3/1, gloss('AI system referred to in Annex 3'), source('celex:32024R1689/oj#art_6').
:- pred poses_significant_risk_of_harm/1, gloss('AI system poses significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred does_not_pose_significant_risk_of_harm/1, gloss('AI system does not pose significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred materially_influences_decision_making/1, gloss('AI system materially influences outcome of decision making'), source('celex:32024R1689/oj#art_6').
:- pred narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred improves_previously_completed_human_activity/1, gloss('AI system intended to improve result of previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred detects_decision_making_patterns/1, gloss('AI system intended to detect decision-making patterns or deviations'), source('celex:32024R1689/oj#art_6').
:- pred replaces_or_influences_human_assessment/1, gloss('AI system meant to replace or influence previously completed human assessment'), source('celex:32024R1689/oj#art_6').
:- pred proper_human_review/1, gloss('proper human review is present'), source('celex:32024R1689/oj#art_6').
:- pred preparatory_task_to_assessment/1, gloss('AI system intended to perform preparatory task to an assessment relevant for Annex 3 use cases'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred documented_assessment/2, gloss('provider has documented assessment that AI system is not high-risk'), source('celex:32024R1689/oj#art_6').
:- pred subject_to_registration_obligation/1, gloss('provider subject to registration obligation under Article 49(2)'), source('celex:32024R1689/oj#art_6').
:- pred must_document_assessment/2, gloss('provider must document assessment before placing on market or putting into service'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_documentation/2, gloss('provider must provide documentation of assessment upon request of national competent authorities'), source('celex:32024R1689/oj#art_6').

% Article 6(1): AI system is high-risk if both conditions (a) and (b) are fulfilled
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product(S, _Product),
    product_covered_by_union_harmonisation_legislation(_Product),
    required_third_party_conformity_assessment(_Product).

high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_union_harmonisation_legislation(S),
    required_third_party_conformity_assessment(S).

% Article 6(1)(a): AI system intended to be used as safety component of a product covered by Union harmonisation legislation
safety_component_of_product(S, Product) :-
    ai_system(S),
    safety_component(S),
    product_covered_by_union_harmonisation_legislation(Product).

% Article 6(1)(b): product or AI system itself required to undergo third-party conformity assessment
required_third_party_conformity_assessment(Product) :-
    product_covered_by_union_harmonisation_legislation(Product),
    conformity_assessment_body(_Body),
    notified_body(_Body).

% Article 6(2): AI systems referred to in Annex 3 are high-risk
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S).

% Article 6(3): derogation - Annex 3 AI system not high-risk if no significant risk of harm
% The AI system is NOT high-risk (exemption from high-risk classification)
exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    narrow_procedural_task(S).

exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    improves_previously_completed_human_activity(S).

exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    detects_decision_making_patterns(S),
    \+ replaces_or_influences_human_assessment(S),
    proper_human_review(S).

exempt_high_risk_classification(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    does_not_pose_significant_risk_of_harm(S),
    \+ materially_influences_decision_making(S),
    preparatory_task_to_assessment(S).

% Article 6(3) notwithstanding: Annex 3 AI system always high-risk if it performs profiling
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    performs_profiling(S).

% Article 6(4): provider considering Annex 3 AI system not high-risk must document assessment
must_document_assessment(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).

before_placing_on_market_or_putting_into_service(S) :-
    placing_on_market(S).

before_placing_on_market_or_putting_into_service(S) :-
    putting_into_service(S).

% Article 6(4): such provider subject to registration obligation
subject_to_registration_obligation(Provider) :-
    provider(Provider),
    exists_system_not_high_risk(Provider).

exists_system_not_high_risk(Provider) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    must_document_assessment(Provider, S).

% Article 6(4): provider must provide documentation upon request
must_provide_documentation(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_system_listed_in_annex_3(S),
    \+ high_risk_ai_system(S),
    must_document_assessment(Provider, S),
    national_competent_authority(_Authority),
    request_for_documentation(_Authority, Provider, S).

request_for_documentation(Authority, Provider, S) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_system(S).

% Helper: AI system does not pose significant risk of harm
does_not_pose_significant_risk_of_harm(S) :-
    ai_system(S),
    \+ poses_significant_risk_of_harm(S).

% Provenance facts
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product/2, 'celex:32024R1689/oj#art_6').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(required_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(poses_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(does_not_pose_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(materially_influences_decision_making/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improves_previously_completed_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(detects_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(replaces_or_influences_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(proper_human_review/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_to_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(documented_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(subject_to_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_classification/1, 'celex:32024R1689/oj#art_6').

% References
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

% unit       : celex:32024R1689/oj#art_6
% title      : Classification rules for high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : gpt-oss:120b-cloud
% prompt sha : 7ac59ad0354f03f75a01b787a790f6dc0303d22c28299f03afb254ae0e458f4e
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_6').
:- pred annex_3_ai_system/1, gloss('AI system listed in annex III'), source('celex:32024R1689/oj#art_6').
:- pred intended_as_safety_component/1, gloss('AI system intended to be used as a safety component of a product'), source('celex:32024R1689/oj#art_6').
:- pred product/1, gloss('AI system that is itself a product'), source('celex:32024R1689/oj#art_6').
:- pred required_third_party_conformity_assessment/1, gloss('AI system for which a third‑party conformity assessment is required'), source('celex:32024R1689/oj#art_6').
:- pred low_risk_conditions/1, gloss('One of the conditions that allow derogation from high‑risk classification'), source('celex:32024R1689/oj#art_6').
:- pred intended_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_improve_human_activity/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_detect_decision_patterns_without_replacement/1, gloss('AI system intended to detect decision‑making patterns without replacing or influencing prior human assessment'), source('celex:32024R1689/oj#art_6').
:- pred intended_preparatory_task_for_assessment/1, gloss('AI system intended to perform a preparatory task for an assessment relevant to annex III use cases'), source('celex:32024R1689/oj#art_6').
:- pred performs_profiling/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6').
:- pred must_document_assessment/2, gloss('Provider must document its assessment of a non‑high‑risk AI system'), source('celex:32024R1689/oj#art_6').
:- pred required_registration_obligation/1, gloss('Provider is subject to the registration obligation'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_assessment_documentation/2, gloss('Provider must provide the assessment documentation on request of national competent authorities'), source('celex:32024R1689/oj#art_6').
:- pred before_market_or_service/1, gloss('AI system has not yet been placed on the market nor put into service'), source('celex:32024R1689/oj#art_6').
:- pred request_from_national_competent_authority/2, gloss('National competent authority requests documentation from provider'), source('celex:32024R1689/oj#art_6').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_6').
:- pred date_deadline/1, gloss('Deadline date for a Commission action'), source('celex:32024R1689/oj#art_6').
:- pred delegated_act_authorised_by/1, gloss('Delegated act authorised by a specific article'), source('celex:32024R1689/oj#art_6').
:- pred required_provide_guidelines/1, gloss('Commission must provide guidelines for the implementation of Article 6'), source('celex:32024R1689/oj#art_6').
:- pred required_adopt_delegated_act/2, gloss('Commission must adopt a delegated act for a specified purpose'), source('celex:32024R1689/oj#art_6').

high_risk_ai_system(S) :-
    (intended_as_safety_component(S) ; product(S)),
    required_third_party_conformity_assessment(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    (performs_profiling(S) ; \+ low_risk_conditions(S)).

low_risk_conditions(S) :-
    intended_narrow_procedural_task(S).

low_risk_conditions(S) :-
    intended_improve_human_activity(S).

low_risk_conditions(S) :-
    intended_detect_decision_patterns_without_replacement(S).

low_risk_conditions(S) :-
    intended_preparatory_task_for_assessment(S).

must_document_assessment(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S),
    before_market_or_service(S).

required_registration_obligation(P) :-
    provider(P),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).

must_provide_assessment_documentation(P, S) :-
    provider(P),
    annex_3_ai_system(S),
    request_from_national_competent_authority(P, S).

required_provide_guidelines(C) :-
    commission(C),
    date_deadline('2026-02-02').

required_adopt_delegated_act(C, amend_conditions) :-
    commission(C),
    delegated_act_authorised_by('art_97').

required_adopt_delegated_act(C, delete_conditions) :-
    commission(C),
    delegated_act_authorised_by('art_97').

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(intended_as_safety_component/1, 'celex:32024R1689/oj#art_6').
provenance(product/1, 'celex:32024R1689/oj#art_6').
provenance(required_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(low_risk_conditions/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_patterns_without_replacement/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(required_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(must_provide_assessment_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(before_market_or_service/1, 'celex:32024R1689/oj#art_6').
provenance(request_from_national_competent_authority/2, 'celex:32024R1689/oj#art_6').
provenance(commission/1, 'celex:32024R1689/oj#art_6').
provenance(date_deadline/1, 'celex:32024R1689/oj#art_6').
provenance(delegated_act_authorised_by/1, 'celex:32024R1689/oj#art_6').
provenance(required_provide_guidelines/1, 'celex:32024R1689/oj#art_6').
provenance(required_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').

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

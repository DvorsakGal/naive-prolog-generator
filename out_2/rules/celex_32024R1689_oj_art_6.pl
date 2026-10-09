% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 75c423e0ff56068c83d8a44923bf55387b2628f7465115307e595af2e0bbcd8c
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6').
:- pred annex_3_ai_system/1, gloss('AI system listed in annex 3'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_union_harmonisation_legislation/1, gloss('AI system covered by Union harmonisation legislation listed in annex 1'), source('celex:32024R1689/oj#art_6').
:- pred third_party_conformity_assessment_required/1, gloss('Product required to undergo third‑party conformity assessment'), source('celex:32024R1689/oj#art_6').
:- pred significant_risk_of_harm/1, gloss('AI system poses a significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6').
:- pred exempt_high_risk_ai_system/1, gloss('AI system exempt from high‑risk classification'), source('celex:32024R1689/oj#art_6').
:- pred art_6_par_3_unp_1_applies/1, gloss('Conditions of art 6 par 3 unp 1 apply'), source('celex:32024R1689/oj#art_6').
:- pred intended_narrow_procedural_task/1, gloss('AI system intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6').
:- pred intended_improve_human_activity_result/1, gloss('AI system intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6').
:- pred intended_detect_decision_making_patterns/1, gloss('AI system intended to detect decision‑making patterns without replacing human assessment'), source('celex:32024R1689/oj#art_6').
:- pred intended_preparatory_task_for_assessment/1, gloss('AI system intended to perform a preparatory task for an assessment relevant to annex 3 use cases'), source('celex:32024R1689/oj#art_6').
:- pred must_document_assessment/2, gloss('Provider must document its assessment of an AI system'), source('celex:32024R1689/oj#art_6').
:- pred must_register/2, gloss('Provider must be subject to the registration obligation'), source('celex:32024R1689/oj#art_6').
:- pred must_provide/2, gloss('Actor must provide the specified object'), source('celex:32024R1689/oj#art_6').
:- pred request_made_by/2, gloss('Request made by authority to actor'), source('celex:32024R1689/oj#art_6').
:- pred must_adopt/2, gloss('Commission must adopt the specified delegated act'), source('celex:32024R1689/oj#art_6').

high_risk_ai_system(S) :-
    ai_system(S),
    ( safety_component(S) ; covered_by_union_harmonisation_legislation(S) ),
    ( conformity_assessment(S) ; third_party_conformity_assessment_required(S) ),
    \+ exempt_high_risk_ai_system(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S).

high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    profiling(S).

exempt_high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    \+ significant_risk_of_harm(S).

art_6_par_3_unp_1_applies(S) :-
    annex_3_ai_system(S),
    ( intended_narrow_procedural_task(S)
    ; intended_improve_human_activity_result(S)
    ; intended_detect_decision_making_patterns(S)
    ; intended_preparatory_task_for_assessment(S)
    ).

must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

must_register(Provider, registration_obligation) :-
    provider(Provider),
    annex_3_ai_system(S),
    \+ high_risk_ai_system(S).

must_provide(Provider, assessment_documentation(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    request_made_by(national_competent_authority, Provider).

must_provide(commission, guidelines(art_6, deadline(date(2026,2,2)))).

must_adopt(commission, delegated_act(delete_conditions_art_6_par_3_unp_2)).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(annex_3_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(third_party_conformity_assessment_required/1, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(art_6_par_3_unp_1_applies/1, 'celex:32024R1689/oj#art_6').
provenance(intended_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_improve_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(intended_detect_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(intended_preparatory_task_for_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(request_made_by/2, 'celex:32024R1689/oj#art_6').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_6').

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

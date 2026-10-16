% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 0be3ca645d2c6e7aa7749d71e4ebc2ba463683431cd4547a612157d1f17c291e
% cached     : False
% title      : Classification rules for high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Article 6'), source('celex:32024R1689/oj#art_6').
:- pred safety_component_of_product/2, gloss('AI system is a safety component of a product'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
:- pred product_covered_by_annex_1/1, gloss('product covered by Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
:- pred requires_third_party_conformity_assessment/1, gloss('product required to undergo third-party conformity assessment under Annex I legislation'), source('celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
:- pred annex_3_system/1, gloss('AI system referred to in Annex III'), source('celex:32024R1689/oj#art_6/par_2').
:- pred significant_risk_of_harm/1, gloss('poses significant risk of harm to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_6/par_3').
:- pred materially_influences_decision_outcome/1, gloss('materially influences the outcome of decision making'), source('celex:32024R1689/oj#art_6/par_3').
:- pred narrow_procedural_task/1, gloss('intended to perform a narrow procedural task'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
:- pred improves_result_of_human_activity/1, gloss('intended to improve the result of a previously completed human activity'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
:- pred detects_decision_patterns/1, gloss('intended to detect decision-making patterns or deviations without replacing human assessment'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
:- pred preparatory_task_for_annex_3/1, gloss('intended to perform a preparatory task to an assessment relevant for Annex III use cases'), source('celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
:- pred performs_profiling/1, gloss('AI system performs profiling of natural persons'), source('celex:32024R1689/oj#art_6/par_3/unp_3').
:- pred must_document_non_high_risk_assessment/2, gloss('provider must document assessment that Annex III system is not high-risk'), source('celex:32024R1689/oj#art_6/par_4').
:- pred must_provide_documentation_on_request/2, gloss('provider must provide documentation of assessment upon request of national competent authorities'), source('celex:32024R1689/oj#art_6/par_4').

% Paragraph 1: high-risk where both conditions (a) and (b) are fulfilled
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product(S, P),
    product_covered_by_annex_1(P),
    requires_third_party_conformity_assessment(P).

high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_annex_1(S),
    requires_third_party_conformity_assessment(S).

% Paragraph 2: Annex III systems are high-risk
high_risk_ai_system(S) :-
    annex_3_system(S).

% Paragraph 3: derogation — Annex III system is not high-risk if it does not pose significant risk
% and falls within one of the conditions (a)-(d), unless it performs profiling
high_risk_ai_system(S) :-
    annex_3_system(S),
    performs_profiling(S).

high_risk_ai_system(S) :-
    annex_3_system(S),
    significant_risk_of_harm(S).

high_risk_ai_system(S) :-
    annex_3_system(S),
    materially_influences_decision_outcome(S).

high_risk_ai_system(S) :-
    annex_3_system(S),
    \+ narrow_procedural_task(S),
    \+ improves_result_of_human_activity(S),
    \+ detects_decision_patterns(S),
    \+ preparatory_task_for_annex_3(S),
    \+ performs_profiling(S).

% Paragraph 4: provider obligations for Annex III systems considered not high-risk
must_document_non_high_risk_assessment(Provider, S) :-
    provider(Provider),
    annex_3_system(S),
    \+ high_risk_ai_system(S).

must_provide_documentation_on_request(Provider, S) :-
    provider(Provider),
    annex_3_system(S),
    \+ high_risk_ai_system(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product/2, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(product_covered_by_annex_1/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(annex_3_system/1, 'celex:32024R1689/oj#art_6/par_2').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(materially_influences_decision_outcome/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
provenance(improves_result_of_human_activity/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
provenance(preparatory_task_for_annex_3/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6/par_3/unp_3').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_documentation_on_request/2, 'celex:32024R1689/oj#art_6/par_4').

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

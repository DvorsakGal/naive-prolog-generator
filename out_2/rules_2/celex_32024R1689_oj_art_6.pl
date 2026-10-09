% unit       : celex:32024R1689/oj#art_6
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : 2562bec17cf242da4de71aa65275c92c509141a240850f76b930355370778370
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 7d82132c5204806b8ed6881f7d9274e56e750277ce814e3eaae49b8c81044866
% cached     : False
% title      : Classification rules for high-risk AI systems
%--- Classification rules -------------------------------------------------

condition_a(S) :-
    safety_component_ai_system(S) ;
    union_harmonisation_legislation_applies(S).

required_conformity_assessment(S) :-
    conformity_assessment(S),
    union_harmonisation_legislation_applies(S).

condition_b(S) :-
    required_conformity_assessment(S).

high_risk_ai_system(S) :-
    condition_a(S),
    condition_b(S).

% annex 3 systems are high‑risk if they pose a significant risk,
% unless a low‑risk condition applies
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    significant_risk_of_harm(S),
    \+ low_risk_condition(S).

% annex 3 systems are always high‑risk when they perform profiling
high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    performs_profiling(S).

% low‑risk conditions (any one suffices)
low_risk_condition(S) :-
    narrow_procedural_task(S) ;
    improve_human_activity_result(S) ;
    detect_decision_patterns_without_replacing_human_assessment(S) ;
    preparatory_task_for_assessment_use_cases(S).

%--- Obligations for providers --------------------------------------------

must_document_assessment(Provider, assessment(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).

must_register(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).

must_provide_documentation(Provider, assessment(S)) :-
    provider(Provider),
    annex_3_ai_system(S),
    consider_not_high_risk(Provider, S).

%--- Commission obligations ------------------------------------------------

must_provide(commission, guidelines(art_6, deadline(date(2026,2,2)))).

must_adopt(commission, delegated_act(amend_paragraph_3_add_conditions)) :-
    concrete_reliable_evidence(S),
    annex_3_ai_system(S),
    \+ significant_risk_of_harm(S).

must_adopt(commission, delegated_act(amend_paragraph_3_delete_conditions)) :-
    concrete_reliable_evidence_of_necessity(S).

%--- Auxiliary predicates (adjectives / conditions) -------------------------

narrow_procedural_task(_).                     % placeholder: to be instantiated elsewhere
improve_human_activity_result(_).               % placeholder
detect_decision_patterns_without_replacing_human_assessment(_). % placeholder
preparatory_task_for_assessment_use_cases(_).  % placeholder
performs_profiling(_).                         % placeholder
significant_risk_of_harm(_).                   % placeholder
consider_not_high_risk(_, _).                   % placeholder
concrete_reliable_evidence(_).                 % placeholder
concrete_reliable_evidence_of_necessity(_).    % placeholder

%--- Provenance -----------------------------------------------------------

provenance(condition_a/1, 'celex:32024R1689/oj#art_6').
provenance(required_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(condition_b/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(low_risk_condition/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(improve_human_activity_result/1, 'celex:32024R1689/oj#art_6').
provenance(detect_decision_patterns_without_replacing_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(preparatory_task_for_assessment_use_cases/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_6').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(consider_not_high_risk/2, 'celex:32024R1689/oj#art_6').
provenance(concrete_reliable_evidence/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_reliable_evidence_of_necessity/1, 'celex:32024R1689/oj#art_6').

%--- References ------------------------------------------------------------

references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

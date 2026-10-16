% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e53f088067569a1a63a5ffb879a653219145a713c11a1ce8ed630ce7a671a7a2
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('high-risk AI system or general-purpose AI model presumed in conformity through harmonised standards'), source('celex:32024R1689/oj#art_40').

:- pred harmonised_standard_references_published/1, gloss('references of harmonised standards published in Official Journal'), source('celex:32024R1689/oj#art_40').
:- pred covers_requirements/2, gloss('standards cover the requirements or obligations'), source('celex:32024R1689/oj#art_40').

:- pred must_issue_standardisation_requests/1, gloss('Commission must issue standardisation requests'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request/1, gloss('request for standardisation to European standardisation organisations'), source('celex:32024R1689/oj#art_40').
:- pred covers_all_requirements/1, gloss('standardisation request covers all requirements'), source('celex:32024R1689/oj#art_40').
:- pred covers_reporting_documentation_resource_performance/1, gloss('standardisation request covers reporting and documentation on resource performance'), source('celex:32024R1689/oj#art_40').
:- pred consults_board_and_stakeholders/1, gloss('Commission consults Board and relevant stakeholders'), source('celex:32024R1689/oj#art_40').

:- pred clear_standards/1, gloss('standards must be clear'), source('celex:32024R1689/oj#art_40').
:- pred consistent_standards/1, gloss('standards must be consistent with sector standards'), source('celex:32024R1689/oj#art_40').
:- pred ensure_relevant_requirements_met/1, gloss('standards aim to ensure relevant requirements or obligations are met'), source('celex:32024R1689/oj#art_40').

:- pred request_evidence_best_efforts/1, gloss('Commission requests evidence of best efforts from European standardisation organisations'), source('celex:32024R1689/oj#art_40').

:- pred promote_investment_innovation/1, gloss('standardisation process promotes investment and innovation in AI'), source('celex:32024R1689/oj#art_40').
:- pred strengthen_global_cooperation/1, gloss('standardisation process strengthens global cooperation on standardisation'), source('celex:32024R1689/oj#art_40').
:- pred consider_international_standards/1, gloss('standardisation process considers existing international standards'), source('celex:32024R1689/oj#art_40').
:- pred enhance_multi_stakeholder_governance/1, gloss('standardisation process enhances multi-stakeholder governance'), source('celex:32024R1689/oj#art_40').

presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, requirements_chapter_3_section_2).
    
presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, obligations_chapter_5_section_2).
    
presumed_conformity(X) :-
    (high_risk_ai_system(X) ; general_purpose_ai_model(X)),
    harmonised_standard_references_published(X),
    covers_requirements(X, obligations_chapter_5_section_3).

must_issue_standardisation_requests(commission) :-
    \+ undue_delay(commission, standardisation_request).

standardisation_request(R) :-
    covers_all_requirements(R),
    covers_reporting_documentation_resource_performance(R).

covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, requirements_chapter_3_section_2).

covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, obligations_chapter_5_section_2).

covers_all_requirements(R) :-
    standardisation_request(R),
    covers(R, obligations_chapter_5_section_3).

covers_reporting_documentation_resource_performance(R) :-
    standardisation_request(R),
    covers(R, reporting_documentation_resource_performance).

consultation_completed(R) :-
    standardisation_request(R),
    consults(commission, board),
    consults(commission, relevant_stakeholders),
    consults(commission, advisory_forum).

clear_standards(R) :-
    standardisation_request(R),
    issued_to(european_standardisation_organisations, R).

consistent_standards(R) :-
    standardisation_request(R),
    consistent_with(R, sector_standards_annex_1).

ensure_relevant_requirements_met(R) :-
    standardisation_request(R),
    aims_to_ensure(R, high_risk_ai_systems_requirements_met).

ensure_relevant_requirements_met(R) :-
    standardisation_request(R),
    aims_to_ensure(R, general_purpose_ai_models_obligations_met).

must_request_evidence_best_efforts(commission, european_standardisation_organisations) :-
    standardisation_request(_R).

promote_investment_innovation(Process) :-
    standardisation_process(Process).

strengthen_global_cooperation(Process) :-
    standardisation_process(Process).

consider_international_standards(Process) :-
    standardisation_process(Process),
    consistent_with(considered_standards, union_values),
    consistent_with(considered_standards, fundamental_rights),
    consistent_with(considered_standards, union_interests).

enhance_multi_stakeholder_governance(Process) :-
    standardisation_process(Process),
    balanced_representation(Process),
    effective_participation(Process, all_relevant_stakeholders).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_references_published/1, 'celex:32024R1689/oj#art_40').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_requests/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request/1, 'celex:32024R1689/oj#art_40').
provenance(covers_all_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(covers_reporting_documentation_resource_performance/1, 'celex:32024R1689/oj#art_40').
provenance(consults_board_and_stakeholders/1, 'celex:32024R1689/oj#art_40').
provenance(clear_standards/1, 'celex:32024R1689/oj#art_40').
provenance(consistent_standards/1, 'celex:32024R1689/oj#art_40').
provenance(ensure_relevant_requirements_met/1, 'celex:32024R1689/oj#art_40').
provenance(request_evidence_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(promote_investment_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(strengthen_global_cooperation/1, 'celex:32024R1689/oj#art_40').
provenance(consider_international_standards/1, 'celex:32024R1689/oj#art_40').
provenance(enhance_multi_stakeholder_governance/1, 'celex:32024R1689/oj#art_40').

references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').

% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 1f92671be4632157c4cc0f19544485c34fa58f93c6ce9f1289b28ace73f233e6
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('presumed to be in conformity with requirements or obligations'), source('celex:32024R1689/oj#art_40').

presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, requirements_in_chapter_3_section_2(S)).

presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, obligations_chapter_5_section_2(M)).

presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(Std),
    reference_published_in_official_journal(Std),
    covers(Std, obligations_chapter_5_section_3(M)).

:- pred must_issue_standardisation_request/2, gloss('Commission shall issue standardisation requests'), source('celex:32024R1689/oj#art_40').

must_issue_standardisation_request(commission, requirements_chapter_3_section_2).

must_issue_standardisation_request(commission, obligations_chapter_5_section_2).

must_issue_standardisation_request(commission, obligations_chapter_5_section_3).

:- pred standardisation_request_covers/1, gloss('standardisation request covers resource performance and energy efficiency'), source('celex:32024R1689/oj#art_40').

standardisation_request_covers(resource_performance_reporting_documentation).

standardisation_request_covers(energy_consumption_reduction).

standardisation_request_covers(energy_efficient_development_general_purpose_ai_models).

:- pred must_consult_for_standardisation_request/2, gloss('Commission shall consult specified parties when preparing standardisation request'), source('celex:32024R1689/oj#art_40').

must_consult_for_standardisation_request(commission, board).

must_consult_for_standardisation_request(commission, advisory_forum).

:- pred standard_must_be/2, gloss('standards must have specified characteristics'), source('celex:32024R1689/oj#art_40').

standard_must_be(Std, clear) :-
    harmonised_standard(Std).

standard_must_be(Std, consistent) :-
    harmonised_standard(Std).

standard_must_be(Std, consistent_with_sector_standards) :-
    harmonised_standard(Std),
    product_covered_by_harmonisation_legislation(Prod),
    union_harmonisation_legislation(Prod).

standard_must_be(Std, ensure_relevant_requirements_met) :-
    harmonised_standard(Std).

:- pred must_request_evidence_best_efforts/2, gloss('Commission shall request evidence of best efforts from standardisation organisations'), source('celex:32024R1689/oj#art_40').

must_request_evidence_best_efforts(commission, european_standardisation_organisations).

:- pred standardisation_process_objective/1, gloss('objective to be promoted by standardisation process participants'), source('celex:32024R1689/oj#art_40').

standardisation_process_objective(promote_investment_innovation_ai).

standardisation_process_objective(increase_legal_certainty).

standardisation_process_objective(enhance_competitiveness_growth_union_market).

standardisation_process_objective(strengthen_global_cooperation_standardisation).

standardisation_process_objective(take_into_account_international_standards).

standardisation_process_objective(enhance_multi_stakeholder_governance).

standardisation_process_objective(balanced_representation_interests).

standardisation_process_objective(effective_participation_relevant_stakeholders).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/1, 'celex:32024R1689/oj#art_40').
provenance(must_consult_for_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standard_must_be/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_process_objective/1, 'celex:32024R1689/oj#art_40').

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

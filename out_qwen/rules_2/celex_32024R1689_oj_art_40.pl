% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 068ea190bf0f89f74dce75388c07c1cabf3529fb0dc2a18af38fde92c5fc0fc1
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity_with_requirements/1, gloss('high-risk AI system or general-purpose AI model presumed to be in conformity with requirements'), source('celex:32024R1689/oj#art_40').
:- pred must_issue_standardisation_request/2, gloss('Commission obligation to issue standardisation request covering requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred must_consult_on_standardisation_request/2, gloss('Commission obligation to consult Board and stakeholders when preparing standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred must_specify_clarity_and_consistency/2, gloss('Commission obligation to specify that standards must be clear and consistent'), source('celex:32024R1689/oj#art_40').
:- pred must_request_evidence_of_best_efforts/2, gloss('Commission obligation to request evidence of best efforts from standardisation organisations'), source('celex:32024R1689/oj#art_40').

presumed_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, S).

presumed_conformity_with_requirements(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, M).

must_issue_standardisation_request(commission, requirements(chapter_3_section_2)).
must_issue_standardisation_request(commission, obligations(chapter_5_section_2)).
must_issue_standardisation_request(commission, obligations(chapter_5_section_3)).

must_consult_on_standardisation_request(commission, board).
must_consult_on_standardisation_request(commission, relevant_stakeholders).
must_consult_on_standardisation_request(commission, advisory_forum).

must_specify_clarity_and_consistency(commission, european_standardisation_organisations).

must_request_evidence_of_best_efforts(commission, european_standardisation_organisations).

provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult_on_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify_clarity_and_consistency/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/2, 'celex:32024R1689/oj#art_40').

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

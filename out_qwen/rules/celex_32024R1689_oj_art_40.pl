% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fd78faaec22d000a537985d5d5cd022ec21c72623376d4861719cba2d4cf856a
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity_with_requirements(X, Requirements), gloss('X is presumed to conform to Requirements via harmonised standards'), source('celex:32024R1689/oj#art_40').
:- pred must_issue_standardisation_request(Actor, Object), gloss('Actor must issue standardisation request covering Object'), source('celex:32024R1689/oj#art_40').
:- pred must_consult_on_standardisation_request(Actor, Body), gloss('Actor must consult Body when preparing standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred must_specify_clarity_and_consistency(Actor, Request), gloss('Actor must specify clarity and consistency requirements in Request'), source('celex:32024R1689/oj#art_40').
:- pred must_request_evidence_of_best_efforts(Actor, Organisation), gloss('Actor must request evidence of best efforts from Organisation'), source('celex:32024R1689/oj#art_40').

presumed_conformity_with_requirements(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S),
    in_conformity_with_harmonised_standards(S).

presumed_conformity_with_requirements(M, obligations(chapter_5_section_2)) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).

presumed_conformity_with_requirements(M, obligations(chapter_5_section_3)) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).

must_issue_standardisation_request(commission, standardisation_request(requirements(chapter_3_section_2))).
must_issue_standardisation_request(commission, standardisation_request(obligations(chapter_5_section_2))).
must_issue_standardisation_request(commission, standardisation_request(obligations(chapter_5_section_3))).

must_consult_on_standardisation_request(commission, board).
must_consult_on_standardisation_request(commission, advisory_forum).
must_consult_on_standardisation_request(commission, relevant_stakeholders).

must_specify_clarity_and_consistency(commission, standardisation_request(_)).

must_request_evidence_of_best_efforts(commission, european_standardisation_organisations).

provenance(presumed_conformity_with_requirements/2, 'celex:32024R1689/oj#art_40').
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

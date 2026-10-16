% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4899d90c1b5632de8f580fb4f1c38713e21410c745b259fd12d124b87ce3d293
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('system or model presumed to conform to requirements'), source('reconciled').
:- pred must_issue_standardisation_requests/1, gloss('Commission must issue standardisation requests'), source('celex:32024R1689/oj#art_40').
:- pred must_consult_board_and_stakeholders/1, gloss('Commission must consult Board and stakeholders'), source('celex:32024R1689/oj#art_40').
:- pred must_specify_standards_clear_consistent/1, gloss('Commission must specify standards are clear and consistent'), source('celex:32024R1689/oj#art_40').
:- pred must_request_evidence_of_best_efforts/1, gloss('Commission must request evidence of best efforts'), source('celex:32024R1689/oj#art_40').
:- pred must_seek_to_promote_investment_and_innovation/1, gloss('participants must seek to promote investment and innovation'), source('celex:32024R1689/oj#art_40').

% Paragraph 1: Presumption of conformity
presumed_conformity(S) :-
    high_risk_ai_system(S),
    in_conformity_with_harmonised_standards(S).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).

in_conformity_with_harmonised_standards(X) :-
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, X).

% Paragraph 2: Commission obligations
must_issue_standardisation_requests(Commission) :-
    ai_office(Commission),
    standardisation_request_covers_requirements(R, celex:32024R1689/oj#chp_3/sec_2),
    standardisation_request_covers_obligations(R, celex:32024R1689/oj#chp_5/sec_2),
    standardisation_request_covers_obligations(R, celex:32024R1689/oj#chp_5/sec_3),
    standardisation_request_asks_for_resource_performance_deliverables(R).

must_consult_board_and_stakeholders(Commission) :-
    ai_office(Commission),
    preparing_standardisation_request(Commission).

must_specify_standards_clear_consistent(Commission) :-
    ai_office(Commission),
    issuing_standardisation_request(Commission).

must_request_evidence_of_best_efforts(Commission) :-
    ai_office(Commission),
    issuing_standardisation_request(Commission).

% Paragraph 3: Participants in standardisation process
must_seek_to_promote_investment_and_innovation(Participant) :-
    involved_in_standardisation_process(Participant).

% Provenance
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(in_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_requests/1, 'celex:32024R1689/oj#art_40').
provenance(must_consult_board_and_stakeholders/1, 'celex:32024R1689/oj#art_40').
provenance(must_specify_standards_clear_consistent/1, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(must_seek_to_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').

% References
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

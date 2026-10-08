% unit       : celex:32024R1689/oj#art_40
% title      : Harmonised standards and standardisation deliverables
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : gpt-oss:120b-cloud
% prompt sha : 51bbe386a2a3663dcff2bef0492a9a7e66c2830f27e31d81fe49852cdcc449ca
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred conforms_to_harmonised_standard/2, gloss('system conforms to a harmonised standard'), source('celex:32024R1689/oj#art_40').
:- pred published_in_official_journal/1, gloss('standard reference published in Official Journal'), source('celex:32024R1689/oj#art_40').
:- pred participant_in_standardisation/1, gloss('entity participating in standardisation process'), source('celex:32024R1689/oj#art_40').

:- pred required_issue_standardisation_request/2, gloss('Commission must issue a standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred required_consult/2, gloss('Commission must consult board or stakeholders'), source('celex:32024R1689/oj#art_40').
:- pred required_specify_standards/2, gloss('Commission must specify criteria for standards'), source('celex:32024R1689/oj#art_40').
:- pred required_request_evidence/3, gloss('Commission must request evidence of best efforts'), source('celex:32024R1689/oj#art_40').
:- pred required_promote_investment_and_innovation/1, gloss('Participants must promote investment and innovation'), source('celex:32024R1689/oj#art_40').
:- pred required_ensure_balanced_representation/1, gloss('Participants must ensure balanced representation'), source('celex:32024R1689/oj#art_40').

presumed_conformant(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    conforms_to_harmonised_standard(S, HS),
    harmonised_standard(HS),
    published_in_official_journal(HS).

required_issue_standardisation_request(C, all_requirements) :-
    ai_office(C),
    ai_office(C).

required_consult(C, board) :-
    ai_office(C),
    ai_office(C).

required_consult(C, stakeholder) :-
    ai_office(C),
    ai_office(C).

required_specify_standards(C, clear_consistent) :-
    ai_office(C),
    ai_office(C).

required_request_evidence(C, european_standardisation_organisation, objectives) :-
    ai_office(C),
    ai_office(C).

required_promote_investment_and_innovation(P) :-
    participant_in_standardisation(P),
    participant_in_standardisation(P).

required_ensure_balanced_representation(P) :-
    participant_in_standardisation(P),
    participant_in_standardisation(P).

provenance(presumed_conformant/1, 'celex:32024R1689/oj#art_40').
provenance(required_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(required_consult/2, 'celex:32024R1689/oj#art_40').
provenance(required_specify_standards/2, 'celex:32024R1689/oj#art_40').
provenance(required_request_evidence/3, 'celex:32024R1689/oj#art_40').
provenance(required_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(required_ensure_balanced_representation/1, 'celex:32024R1689/oj#art_40').

references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').

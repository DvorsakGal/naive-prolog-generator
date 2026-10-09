% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 725120e99fd26cb6fe1014959115c9e9e46b3a0c92a6027c0a86d3ed2eb9676f
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_40').
:- pred conforms_to/2, gloss('system conforms to standard'), source('celex:32024R1689/oj#art_40').
:- pred published_in_official_journal/1, gloss('standard reference published in Official Journal'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_process_participant/1, gloss('participant in standardisation process'), source('celex:32024R1689/oj#art_40').

presumed_conformity_applies(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    conforms_to(S, H),
    harmonised_standard(H),
    published_in_official_journal(H).

must_issue(commission, standardisation_request(covering(requirements(chapter_3, section_2), obligations(chapter_5, section_2)))).

must_consult(commission, board_and_relevant_stakeholders).

must_specify(commission, standards_characteristics(clear, consistent, aligned_with_union_harmonisation_legislation)).

must_promote(Participant, investment_and_innovation) :-
    standardisation_process_participant(Participant).

must_take_into_account(Participant, international_standards_consistent_with_union_values) :-
    standardisation_process_participant(Participant).

provenance(presumed_conformity_applies/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_promote/2, 'celex:32024R1689/oj#art_40').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_40').

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

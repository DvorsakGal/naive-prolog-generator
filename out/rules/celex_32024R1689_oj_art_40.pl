% unit       : celex:32024R1689/oj#art_40
% title      : Harmonised standards and standardisation deliverables
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : gpt-oss:120b-cloud
% prompt sha : 798392cdf7c45e79bdc8b59a5dcf82b1bad0bbf1658e0b3d233c461e281fa83d
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred conforms_to/2, gloss('AI system conforms to a standard'), source('celex:32024R1689/oj#art_40').
:- pred published_in_official_journal/1, gloss('Standard reference published in Official Journal'), source('celex:32024R1689/oj#art_40').
:- pred presumed_conformity_applies/1, gloss('Presumption that a system conforms with the requirements or obligations covered by a harmonised standard'), source('celex:32024R1689/oj#art_40').
:- pred must_issue/2, gloss('Commission must issue a standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred must_consult/2, gloss('Commission must consult the Board and relevant stakeholders'), source('celex:32024R1689/oj#art_40').
:- pred must_specify/2, gloss('Commission must specify the characteristics that standards have to meet'), source('celex:32024R1689/oj#art_40').
:- pred must_request_evidence/3, gloss('Commission must request evidence of best efforts to fulfil the objectives'), source('celex:32024R1689/oj#art_40').
:- pred participant_in_standardisation_process/1, gloss('Entity participating in the standardisation process'), source('celex:32024R1689/oj#art_40').
:- pred must_promote_investment_and_innovation/1, gloss('Participant must promote investment and innovation in AI'), source('celex:32024R1689/oj#art_40').

presumed_conformity_applies(S) :-
    (high_risk_ai_system(S) ; general_purpose_ai_system(S)),
    conforms_to(S, Std),
    harmonised_standard(Std),
    published_in_official_journal(Std).

must_issue(commission,
           standardisation_request(
               requirements(chapter_3_section_2),
               obligations(chapter_5_section_2),
               deliverables([reporting_processes, documentation_processes, energy_efficiency])
           )).

must_consult(commission, board_and_stakeholders).

must_specify(commission,
             standards_characteristics(
                 clear,
                 consistent,
                 aligned_with_existing_harmonised_legislation(anx_1),
                 meet_requirements_and_obligations
             )).

must_request_evidence(commission,
                      european_standardisation_organisation,
                      best_efforts_objectives).

must_promote_investment_and_innovation(P) :-
    participant_in_standardisation_process(P).

provenance(presumed_conformity_applies/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence/3, 'celex:32024R1689/oj#art_40').
provenance(must_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').

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
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').

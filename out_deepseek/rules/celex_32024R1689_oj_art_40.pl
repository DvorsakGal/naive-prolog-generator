% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 667d8312c584a882a0d0100aeccca90520a7cb92ed9fa47c4f0b59688f44772c
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('system or model presumed to conform to requirements'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_issued/1, gloss('Commission has issued a standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_covers/2, gloss('request covers a set of requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_asks_deliverables/2, gloss('request asks for deliverables on a topic'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_specifies/2, gloss('request specifies a requirement for standards'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_participants_seek/1, gloss('participants seek to promote an objective'), source('celex:32024R1689/oj#art_40').

presumed_conformity(X) :-
    ( high_risk_ai_system(X) ; general_purpose_ai_model(X) ),
    in_conformity_with_harmonised_standard(X),
    standard_covers_requirements(X).

in_conformity_with_harmonised_standard(X) :-
    harmonised_standard(S),
    reference_published_in_oj(S),
    conforms_to(X, S).

standard_covers_requirements(X) :-
    harmonised_standard(S),
    conforms_to(X, S),
    ( covers_requirements(S, 'celex:32024R1689/oj#chp_3/sec_2')
    ; covers_obligations(S, 'celex:32024R1689/oj#chp_5/sec_2')
    ; covers_obligations(S, 'celex:32024R1689/oj#chp_5/sec_3')
    ).

must_issue_standardisation_request(Commission) :-
    standardisation_request_issued(R),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_3/sec_2'),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_5/sec_2'),
    standardisation_request_covers(R, 'celex:32024R1689/oj#chp_5/sec_3'),
    standardisation_request_asks_deliverables(R, reporting_and_documentation(resource_performance)),
    standardisation_request_asks_deliverables(R, energy_efficient_development(general_purpose_ai_model)),
    standardisation_request_specifies(R, clear_consistent_standards),
    standardisation_request_specifies(R, meet_requirements('celex:32024R1689/oj')),
    consulted_board(Commission),
    consulted_relevant_stakeholders(Commission),
    requested_evidence_of_best_efforts(Commission).

standardisation_participants_seek(promote_investment_and_innovation).
standardisation_participants_seek(increase_legal_certainty).
standardisation_participants_seek(competitiveness_and_growth).
standardisation_participants_seek(strengthen_global_cooperation).
standardisation_participants_seek(take_into_account_international_standards).
standardisation_participants_seek(enhance_multistakeholder_governance).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(in_conformity_with_harmonised_standard/1, 'celex:32024R1689/oj#art_40').
provenance(standard_covers_requirements/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_participants_seek/1, 'celex:32024R1689/oj#art_40').

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

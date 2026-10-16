% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2d7d187710ac19acb718485270f877a7ffc19c0080fd91f133876c3fffa9bdcf
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('high-risk AI system or general-purpose AI model presumed to be in conformity with requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred harmonised_standard_covers/2, gloss('harmonised standard or part thereof covers the requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_issued/1, gloss('Commission issues standardisation request covering requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_covers/2, gloss('standardisation request covers specific requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_includes_deliverables/1, gloss('standardisation request asks for deliverables on reporting, documentation, resource performance, or energy-efficient development'), source('celex:32024R1689/oj#art_40').
:- pred commission_consults_board_and_stakeholders/0, gloss('Commission consults the Board and relevant stakeholders including the advisory forum when preparing standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred standards_must_be_clear_consistent/1, gloss('standards specified to be clear, consistent with sector standards for products under Union harmonisation legislation, and aiming to ensure conformity'), source('celex:32024R1689/oj#art_40').
:- pred commission_requests_evidence_of_best_efforts/1, gloss('Commission requests European standardisation organisations to provide evidence of best efforts to fulfil objectives'), source('celex:32024R1689/oj#art_40').
:- pred participants_promote_investment_innovation/1, gloss('participants in standardisation process seek to promote investment, innovation, legal certainty, competitiveness and growth'), source('celex:32024R1689/oj#art_40').
:- pred participants_strengthen_global_cooperation/1, gloss('participants contribute to strengthening global cooperation on standardisation'), source('celex:32024R1689/oj#art_40').
:- pred participants_take_into_account_international_standards/1, gloss('participants take into account existing international standards consistent with Union values, fundamental rights and interests'), source('celex:32024R1689/oj#art_40').
:- pred participants_enhance_multistakeholder_governance/1, gloss('participants enhance multi-stakeholder governance ensuring balanced representation and effective participation of all relevant stakeholders'), source('celex:32024R1689/oj#art_40').

presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    harmonised_standard_covers(S, requirements).

presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(M),
    reference_published_in_official_journal(M),
    harmonised_standard_covers(M, obligations).

harmonised_standard_covers(S, requirements) :-
    harmonised_standard(S),
    covers_requirements_set_out_in_chapter_3_section_2(S).

harmonised_standard_covers(M, obligations) :-
    harmonised_standard(M),
    covers_obligations_set_out_in_chapter_5_section_2(M).

harmonised_standard_covers(M, obligations) :-
    harmonised_standard(M),
    covers_obligations_set_out_in_chapter_5_section_3(M).

standardisation_request_issued(request(requirements, chapter_3_section_2)).

standardisation_request_issued(request(obligations, chapter_5_section_2)).

standardisation_request_issued(request(obligations, chapter_5_section_3)).

standardisation_request_covers(request(requirements, chapter_3_section_2), requirements).

standardisation_request_covers(request(obligations, chapter_5_section_2), obligations).

standardisation_request_covers(request(obligations, chapter_5_section_3), obligations).

standardisation_request_includes_deliverables(request(reporting_documentation_resource_performance)).

standardisation_request_includes_deliverables(request(energy_efficient_development_general_purpose_ai_models)).

commission_consults_board_and_stakeholders.

standards_must_be_clear_consistent(request).

commission_requests_evidence_of_best_efforts(request).

participants_promote_investment_innovation(participants).

participants_strengthen_global_cooperation(participants).

participants_take_into_account_international_standards(participants).

participants_enhance_multistakeholder_governance(participants).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_covers/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_issued/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_includes_deliverables/1, 'celex:32024R1689/oj#art_40').
provenance(commission_consults_board_and_stakeholders/0, 'celex:32024R1689/oj#art_40').
provenance(standards_must_be_clear_consistent/1, 'celex:32024R1689/oj#art_40').
provenance(commission_requests_evidence_of_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(participants_promote_investment_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(participants_strengthen_global_cooperation/1, 'celex:32024R1689/oj#art_40').
provenance(participants_take_into_account_international_standards/1, 'celex:32024R1689/oj#art_40').
provenance(participants_enhance_multistakeholder_governance/1, 'celex:32024R1689/oj#art_40').

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

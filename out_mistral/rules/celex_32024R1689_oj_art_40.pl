% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bf94046b4395c4c3c5c2ed74501736ac89ec9a0304c1b5a512e914aa17ed3ac9
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred presumed_conformity/1, gloss('high-risk AI system or general-purpose AI model presumed in conformity via harmonised standards'), source('celex:32024R1689/oj#art_40').
:- pred harmonised_standard_reference_published/1, gloss('reference of harmonised standard published in Official Journal of the European Union'), source('celex:32024R1689/oj#art_40').
:- pred standard_covers_requirement/2, gloss('harmonised standard or part thereof covers a requirement or obligation'), source('celex:32024R1689/oj#art_40').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_40').
:- pred requirement_set_out_in_chapter_3_section_2/1, gloss('requirement set out in Chapter III Section 2'), source('celex:32024R1689/oj#art_40').
:- pred obligation_set_out_in_chapter_5_section_2/1, gloss('obligation set out in Chapter V Section 2'), source('celex:32024R1689/oj#art_40').
:- pred obligation_set_out_in_chapter_5_section_3/1, gloss('obligation set out in Chapter V Section 3'), source('celex:32024R1689/oj#art_40').
:- pred must_issue_standardisation_request/2, gloss('Commission must issue standardisation request covering requirements or obligations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_request_covers/2, gloss('standardisation request covers a requirement or obligation'), source('celex:32024R1689/oj#art_40').
:- pred must_consult/2, gloss('Commission must consult a body when preparing standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred must_specify_standard_quality/2, gloss('Commission must specify quality criteria for standards'), source('celex:32024R1689/oj#art_40').
:- pred must_request_evidence_of_best_efforts/2, gloss('Commission must request evidence of best efforts from European standardisation organisations'), source('celex:32024R1689/oj#art_40').
:- pred standardisation_participant_objective/1, gloss('objective that participants in standardisation process shall seek to promote'), source('celex:32024R1689/oj#art_40').

presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, R),
    requirement_set_out_in_chapter_3_section_2(R).

presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_2(O).

presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_3(O).

presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_2(O).

presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard_reference_published(H),
    harmonised_standard(H),
    standard_covers_requirement(H, O),
    obligation_set_out_in_chapter_5_section_3(O).

must_issue_standardisation_request(commission, R) :-
    requirement_set_out_in_chapter_3_section_2(R).

must_issue_standardisation_request(commission, O) :-
    obligation_set_out_in_chapter_5_section_2(O).

must_issue_standardisation_request(commission, O) :-
    obligation_set_out_in_chapter_5_section_3(O).

must_consult(commission, board).
must_consult(commission, advisory_forum).
must_consult(commission, relevant_stakeholder).

must_specify_standard_quality(commission, clear).
must_specify_standard_quality(commission, consistent).
must_specify_standard_quality(commission, consistent_with_sectoral_product_standards).
must_specify_standard_quality(commission, ensures_high_risk_ai_systems_meet_requirements).
must_specify_standard_quality(commission, ensures_general_purpose_ai_models_meet_obligations).

must_request_evidence_of_best_efforts(commission, european_standardisation_organisation).

standardisation_participant_objective(promote_investment_and_innovation_in_ai).
standardisation_participant_objective(increase_legal_certainty).
standardisation_participant_objective(competitiveness_of_union_market).
standardisation_participant_objective(growth_of_union_market).
standardisation_participant_objective(strengthen_global_cooperation_on_standardisation).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_union_values).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_fundamental_rights).
standardisation_participant_objective(take_into_account_international_standards_consistent_with_union_interests).
standardisation_participant_objective(enhance_multi_stakeholder_governance).
standardisation_participant_objective(balanced_representation_of_interests).
standardisation_participant_objective(effective_participation_of_all_relevant_stakeholders).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_40').
provenance(standard_covers_requirement/2, 'celex:32024R1689/oj#art_40').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_40').
provenance(requirement_set_out_in_chapter_3_section_2/1, 'celex:32024R1689/oj#art_40').
provenance(obligation_set_out_in_chapter_5_section_2/1, 'celex:32024R1689/oj#art_40').
provenance(obligation_set_out_in_chapter_5_section_3/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_request/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify_standard_quality/2, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_participant_objective/1, 'celex:32024R1689/oj#art_40').

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

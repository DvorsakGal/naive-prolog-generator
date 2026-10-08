% unit       : celex:32024R1689/oj#art_112
% title      : Evaluation and review
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : gpt-oss:120b-cloud
% prompt sha : 2a34e231164de2484eb5e56b4e7bc1bbbe4e1a6148106a4df9e11c3eeac341b3
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_assess_amendment_need/1, gloss('Commission shall assess the need for amendment of the annexed lists'), source('celex:32024R1689/oj#art_112').
must_assess_amendment_need(commission).

:- pred must_submit_findings/1, gloss('Commission shall submit the findings of the assessment to the European Parliament and the Council'), source('celex:32024R1689/oj#art_112').
must_submit_findings(commission).

:- pred must_evaluate_amendment_area_headings/1, gloss('Commission shall evaluate the need for amendments extending existing area headings or adding new area headings in annex 3'), source('celex:32024R1689/oj#art_112').
must_evaluate_amendment_area_headings(commission).

:- pred must_evaluate_transparency_amendments/1, gloss('Commission shall evaluate amendments to the list of AI systems requiring additional transparency measures'), source('celex:32024R1689/oj#art_112').
must_evaluate_transparency_amendments(commission).

:- pred must_evaluate_supervision_effectiveness/1, gloss('Commission shall evaluate amendments enhancing the effectiveness of the supervision and governance system'), source('celex:32024R1689/oj#art_112').
must_evaluate_supervision_effectiveness(commission).

:- pred must_report_to_ep_and_council/1, gloss('Commission shall report to the European Parliament and the Council'), source('celex:32024R1689/oj#art_112').
must_report_to_ep_and_council(commission).

:- pred must_submit_evaluation_report/1, gloss('Commission shall submit a report on the evaluation and review of the Regulation'), source('celex:32024R1689/oj#art_112').
must_submit_evaluation_report(commission).

:- pred must_include_assessment_of_enforcement_structure/1, gloss('Report shall include an assessment of the structure of enforcement'), source('celex:32024R1689/oj#art_112').
must_include_assessment_of_enforcement_structure(commission).

:- pred must_propose_amendment_if_appropriate/1, gloss('Report shall, where appropriate, be accompanied by a proposal for amendment'), source('celex:32024R1689/oj#art_112').
must_propose_amendment_if_appropriate(commission).

:- pred must_make_report_public/1, gloss('Reports shall be made public'), source('celex:32024R1689/oj#art_112').
must_make_report_public(commission).

:- pred required_report_content/2, gloss('Reports shall pay specific attention to the listed topics'), source('celex:32024R1689/oj#art_112').
required_report_content(commission, resources_of_national_competent_authorities).
required_report_content(commission, state_of_penalties).
required_report_content(commission, adopted_harmonised_standards_and_common_specifications).
required_report_content(commission, number_of_undertakings_and_smes).

:- pred must_evaluate_ai_office/1, gloss('Commission shall evaluate the functioning, powers and competences of the AI Office'), source('celex:32024R1689/oj#art_112').
must_evaluate_ai_office(commission).

:- pred must_submit_ai_office_report/1, gloss('Commission shall submit a report on the AI Office evaluation to the European Parliament and the Council'), source('celex:32024R1689/oj#art_112').
must_submit_ai_office_report(commission).

:- pred must_report_standardisation_progress/1, gloss('Commission shall submit a report on the progress of standardisation deliverables on energy‑efficient development of general‑purpose AI models'), source('celex:32024R1689/oj#art_112').
must_report_standardisation_progress(commission).

:- pred must_assess_need_for_further_measures/1, gloss('Commission shall assess the need for further measures or actions, including binding measures'), source('celex:32024R1689/oj#art_112').
must_assess_need_for_further_measures(commission).

:- pred must_evaluate_voluntary_codes/1, gloss('Commission shall evaluate the impact and effectiveness of voluntary codes of conduct for AI systems other than high‑risk AI systems'), source('celex:32024R1689/oj#art_112').
must_evaluate_voluntary_codes(commission).

:- pred must_provide_information/2, gloss('Board, Member States and national competent authorities shall provide the Commission with information upon request without undue delay'), source('celex:32024R1689/oj#art_112').
must_provide_information(board, commission).
must_provide_information(member_state, commission).
must_provide_information(NCA, commission) :-
    national_competent_authority(NCA).

:- pred must_take_into_account/2, gloss('Commission shall take into account the positions and findings of the Board, the European Parliament, the Council and other relevant bodies'), source('celex:32024R1689/oj#art_112').
must_take_into_account(commission, board).
must_take_into_account(commission, european_parliament).
must_take_into_account(commission, council).
must_take_into_account(commission, other_relevant_bodies).

:- pred must_submit_proposals/1, gloss('Commission shall, if necessary, submit appropriate proposals to amend the Regulation'), source('celex:32024R1689/oj#art_112').
must_submit_proposals(commission).

:- pred must_develop_methodology/1, gloss('AI Office shall develop an objective and participative methodology for the evaluation of risk levels'), source('celex:32024R1689/oj#art_112').
must_develop_methodology(ai_office).

:- pred must_assess_enforcement/1, gloss('Commission shall carry out an assessment of the enforcement of the Regulation'), source('celex:32024R1689/oj#art_112').
must_assess_enforcement(commission).

:- pred must_report_assessment/1, gloss('Commission shall report on the enforcement assessment to the European Parliament, the Council and the European Economic and Social Committee'), source('celex:32024R1689/oj#art_112').
must_report_assessment(commission).

% Provenance for each predicate
provenance(must_assess_amendment_need/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_amendment_area_headings/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_transparency_amendments/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_supervision_effectiveness/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_to_ep_and_council/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_evaluation_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_include_assessment_of_enforcement_structure/1, 'celex:32024R1689/oj#art_112').
provenance(must_propose_amendment_if_appropriate/1, 'celex:32024R1689/oj#art_112').
provenance(must_make_report_public/1, 'celex:32024R1689/oj#art_112').
provenance(required_report_content/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_ai_office_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_standardisation_progress/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_need_for_further_measures/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(must_report_assessment/1, 'celex:32024R1689/oj#art_112').

% References
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').

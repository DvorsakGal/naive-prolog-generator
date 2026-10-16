% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5b1d59fce29f2275ae330d71165d6fe59eae89ae5912f4089aeecf7a0d517a26
% cached     : False
% title      : Evaluation and review
:- pred must_assess_need_for_amendment/2, gloss('Commission shall assess need for amendment of specified list'), source('celex:32024R1689/oj#art_112/par_1').
:- pred must_submit_findings/3, gloss('Commission shall submit findings to specified bodies'), source('celex:32024R1689/oj#art_112/par_1').
:- pred must_evaluate_and_report/3, gloss('Commission shall evaluate and report to specified bodies on specified matters'), source('celex:32024R1689/oj#art_112/par_2').
:- pred must_submit_report/3, gloss('Commission shall submit report on evaluation and review to specified bodies'), source('celex:32024R1689/oj#art_112/par_3').
:- pred report_made_public/1, gloss('report shall be made public'), source('celex:32024R1689/oj#art_112/par_3').
:- pred must_pay_attention_to/2, gloss('reports shall pay specific attention to specified matter'), source('celex:32024R1689/oj#art_112/par_4').
:- pred must_evaluate_functioning/2, gloss('Commission shall evaluate functioning of specified entity'), source('celex:32024R1689/oj#art_112/par_5').
:- pred must_submit_evaluation_report/3, gloss('Commission shall submit report on evaluation to specified bodies'), source('celex:32024R1689/oj#art_112/par_5').
:- pred must_submit_report_on_review/3, gloss('Commission shall submit report on review of progress to specified bodies'), source('celex:32024R1689/oj#art_112/par_6').
:- pred must_evaluate_impact_and_effectiveness/2, gloss('Commission shall evaluate impact and effectiveness of specified measures'), source('celex:32024R1689/oj#art_112/par_7').
:- pred must_provide_information_on_request/2, gloss('entity shall provide information upon request without undue delay'), source('celex:32024R1689/oj#art_112/par_8').
:- pred must_take_into_account_positions/2, gloss('Commission shall take into account positions and findings of specified bodies'), source('celex:32024R1689/oj#art_112/par_9').
:- pred must_submit_proposals_to_amend/2, gloss('Commission shall submit proposals to amend specified act'), source('celex:32024R1689/oj#art_112/par_10').
:- pred shall_undertake_to_develop/2, gloss('entity shall undertake to develop specified methodology'), source('celex:32024R1689/oj#art_112/par_11').
:- pred methodology_for_evaluation_of_risk_levels/1, gloss('objective and participative methodology for evaluation of risk levels'), source('celex:32024R1689/oj#art_112/par_11').
:- pred must_take_into_account_regulatory_specificities/1, gloss('amendment shall take into account regulatory specificities of sector'), source('celex:32024R1689/oj#art_112/par_12').
:- pred must_carry_out_assessment_of_enforcement/2, gloss('Commission shall carry out assessment of enforcement and report to specified bodies'), source('celex:32024R1689/oj#art_112/par_13').

must_assess_need_for_amendment(commission, list(annex_3)) :-
    once_a_year_after_entry_into_force,
    before_end_of_delegation_period(art_97).

must_assess_need_for_amendment(commission, list(prohibited_ai_practices)) :-
    once_a_year_after_entry_into_force,
    before_end_of_delegation_period(art_97).

must_submit_findings(commission, european_parliament, assessment(amendment_need, list(annex_3))) :-
    must_assess_need_for_amendment(commission, list(annex_3)).

must_submit_findings(commission, council, assessment(amendment_need, list(annex_3))) :-
    must_assess_need_for_amendment(commission, list(annex_3)).

must_submit_findings(commission, european_parliament, assessment(amendment_need, list(prohibited_ai_practices))) :-
    must_assess_need_for_amendment(commission, list(prohibited_ai_practices)).

must_submit_findings(commission, council, assessment(amendment_need, list(prohibited_ai_practices))) :-
    must_assess_need_for_amendment(commission, list(prohibited_ai_practices)).

must_evaluate_and_report(commission, european_parliament, matters([amendments_annex_3_area_headings, amendments_transparency_measures_art_50, supervision_governance_effectiveness])) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).

must_evaluate_and_report(commission, council, matters([amendments_annex_3_area_headings, amendments_transparency_measures_art_50, supervision_governance_effectiveness])) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).

must_submit_report(commission, european_parliament, evaluation_review(act)) :-
    by_date(2, august, 2029),
    every(years(4), thereafter).

must_submit_report(commission, council, evaluation_review(act)) :-
    by_date(2, august, 2029),
    every(years(4), thereafter).

report_made_public(report(evaluation_review, act)) :-
    must_submit_report(commission, european_parliament, evaluation_review(act)).

must_pay_attention_to(report(evaluation_review, par_2), status_resources(national_competent_authorities)) :-
    must_evaluate_and_report(commission, european_parliament, _).

must_pay_attention_to(report(evaluation_review, par_2), state_of_penalties(member_states)) :-
    must_evaluate_and_report(commission, european_parliament, _).

must_pay_attention_to(report(evaluation_review, par_2), adopted_harmonised_standards_and_common_specifications) :-
    must_evaluate_and_report(commission, european_parliament, _).

must_pay_attention_to(report(evaluation_review, par_2), market_entry_undertakings(smes)) :-
    must_evaluate_and_report(commission, european_parliament, _).

must_evaluate_functioning(commission, ai_office) :-
    by_date(2, august, 2028).

must_submit_evaluation_report(commission, european_parliament, evaluation(ai_office)) :-
    must_evaluate_functioning(commission, ai_office).

must_submit_evaluation_report(commission, council, evaluation(ai_office)) :-
    must_evaluate_functioning(commission, ai_office).

must_submit_report_on_review(commission, european_parliament, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).

must_submit_report_on_review(commission, council, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)) :-
    by_date(2, august, 2028),
    every(years(4), thereafter).

report_made_public(report(review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models))) :-
    must_submit_report_on_review(commission, european_parliament, review(standardisation_deliverables, energy_efficient_development, general_purpose_ai_models)).

must_evaluate_impact_and_effectiveness(commission, voluntary_codes_of_conduct(chapter_3_section_2, non_high_risk_ai_systems)) :-
    by_date(2, august, 2028),
    every(years(3), thereafter).

must_provide_information_on_request(board, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).

must_provide_information_on_request(member_state, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).

must_provide_information_on_request(national_competent_authority, commission) :-
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).

must_take_into_account_positions(commission, board) :-
    carrying_out_evaluations_and_reviews.

must_take_into_account_positions(commission, european_parliament) :-
    carrying_out_evaluations_and_reviews.

must_take_into_account_positions(commission, council) :-
    carrying_out_evaluations_and_reviews.

must_take_into_account_positions(commission, other_relevant_bodies) :-
    carrying_out_evaluations_and_reviews.

must_submit_proposals_to_amend(commission, act) :-
    necessary,
    taking_into_account([technology_developments, effect_on_health_safety, effect_on_fundamental_rights, state_of_progress_information_society]).

shall_undertake_to_develop(ai_office, methodology_for_evaluation_of_risk_levels(M)) :-
    methodology_for_evaluation_of_risk_levels(M),
    evaluation_purpose([par_1, par_2, par_3, par_4, par_5, par_6, par_7]).

methodology_for_evaluation_of_risk_levels(M) :-
    objective(M),
    participative(M),
    based_on_criteria(relevant_articles),
    inclusion_of_new_systems([annex_3_list, prohibited_practices_list, transparency_measures_list]).

must_take_into_account_regulatory_specificities(amendment(act)) :-
    concerns_sectoral_legislation(annex_1_section_2).

must_carry_out_assessment_of_enforcement(commission, european_parliament) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).

must_carry_out_assessment_of_enforcement(commission, council) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).

must_carry_out_assessment_of_enforcement(commission, european_economic_and_social_committee) :-
    by_date(2, august, 2031),
    taking_into_account(first_years_of_application).

provenance(must_assess_need_for_amendment/2, 'celex:32024R1689/oj#art_112/par_1').
provenance(must_submit_findings/3, 'celex:32024R1689/oj#art_112/par_1').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112/par_2').
provenance(must_submit_report/3, 'celex:32024R1689/oj#art_112/par_3').
provenance(report_made_public/1, 'celex:32024R1689/oj#art_112/par_3').
provenance(must_pay_attention_to/2, 'celex:32024R1689/oj#art_112/par_4').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112/par_5').
provenance(must_submit_evaluation_report/3, 'celex:32024R1689/oj#art_112/par_5').
provenance(must_submit_report_on_review/3, 'celex:32024R1689/oj#art_112/par_6').
provenance(must_evaluate_impact_and_effectiveness/2, 'celex:32024R1689/oj#art_112/par_7').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_112/par_8').
provenance(must_take_into_account_positions/2, 'celex:32024R1689/oj#art_112/par_9').
provenance(must_submit_proposals_to_amend/2, 'celex:32024R1689/oj#art_112/par_10').
provenance(shall_undertake_to_develop/2, 'celex:32024R1689/oj#art_112/par_11').
provenance(methodology_for_evaluation_of_risk_levels/1, 'celex:32024R1689/oj#art_112/par_11').
provenance(must_take_into_account_regulatory_specificities/1, 'celex:32024R1689/oj#art_112/par_12').
provenance(must_carry_out_assessment_of_enforcement/2, 'celex:32024R1689/oj#art_112/par_13').

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').

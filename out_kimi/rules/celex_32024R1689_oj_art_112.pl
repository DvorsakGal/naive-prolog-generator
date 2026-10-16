% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 11edc6af5d6bf1fc9d47a4e60611d49ff42715fa322d55bfcf2b26f30175bf94
% cached     : False
% title      : Evaluation and review
:- pred must_assess/2, gloss('obligation to assess need for amendment'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_and_report/2, gloss('obligation to evaluate and report to Parliament and Council'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_report/2, gloss('obligation to submit a report'), source('celex:32024R1689/oj#art_112').
:- pred report_shall_include/2, gloss('content required in a report'), source('celex:32024R1689/oj#art_112').
:- pred report_shall_be_made_public/1, gloss('obligation to make report publicly available'), source('celex:32024R1689/oj#art_112').
:- pred report_shall_pay_attention_to/2, gloss('specific attention required in a report'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information/2, gloss('obligation to provide information upon request'), source('celex:32024R1689/oj#art_112').
:- pred shall_take_into_account/2, gloss('obligation to consider positions and findings'), source('celex:32024R1689/oj#art_112').
:- pred shall_submit_proposals/2, gloss('obligation to submit amendment proposals'), source('celex:32024R1689/oj#art_112').
:- pred shall_undertake/2, gloss('obligation to undertake development of methodology'), source('celex:32024R1689/oj#art_112').
:- pred methodology_for/2, gloss('methodology subject matter'), source('celex:32024R1689/oj#art_112').
:- pred amendment_shall_take_into_account/2, gloss('conditions for amendments concerning sectoral legislation'), source('celex:32024R1689/oj#art_112').
:- pred must_carry_out_assessment/2, gloss('obligation to carry out assessment and report'), source('celex:32024R1689/oj#art_112').

must_assess(commission, amendment_of_lists) :-
    once_per_year_following_entry_into_force,
    until_end_of_delegation_period(art_97).

must_submit_findings(commission, european_parliament_and_council) :-
    must_assess(commission, amendment_of_lists).

must_evaluate_and_report(commission, evaluation_subject(annex_3_area_headings)) :-
    by_date(years(4), after(2_august_2028)).

must_evaluate_and_report(commission, evaluation_subject(art_50_transparency_measures)) :-
    by_date(years(4), after(2_august_2028)).

must_evaluate_and_report(commission, evaluation_subject(supervision_governance_effectiveness)) :-
    by_date(years(4), after(2_august_2028)).

must_submit_report(commission, evaluation_and_review_of_regulation) :-
    by_date(years(4), after(2_august_2029)).

report_shall_include(commission, assessment(enforcement_structure_and_union_agency_need)) :-
    must_submit_report(commission, evaluation_and_review_of_regulation).

report_shall_be_accompanied_by(commission, proposal_for_amendment) :-
    must_submit_report(commission, evaluation_and_review_of_regulation),
    appropriate_based_on_findings.

report_shall_be_made_public(commission, evaluation_and_review_of_regulation) :-
    must_submit_report(commission, evaluation_and_review_of_regulation).

report_shall_pay_attention_to(commission, status_of_national_competent_authorities_resources) :-
    must_evaluate_and_report(commission, _).

report_shall_pay_attention_to(commission, state_of_penalties_and_administrative_fines) :-
    must_evaluate_and_report(commission, _).

report_shall_pay_attention_to(commission, adopted_harmonised_standards_and_common_specifications) :-
    must_evaluate_and_report(commission, _).

report_shall_pay_attention_to(commission, number_of_market_entrants_and_smes) :-
    must_evaluate_and_report(commission, _).

must_evaluate(commission, functioning_of_ai_office) :-
    by_date(2_august_2028).

must_evaluate(commission, ai_office_powers_and_competences) :-
    must_evaluate(commission, functioning_of_ai_office).

must_evaluate(commission, need_to_upgrade_ai_office) :-
    must_evaluate(commission, functioning_of_ai_office).

must_submit_report(commission, ai_office_evaluation) :-
    must_evaluate(commission, functioning_of_ai_office).

must_submit_report(commission, standardisation_deliverables_energy_efficiency) :-
    by_date(years(4), after(2_august_2028)).

report_shall_be_made_public(commission, standardisation_deliverables_energy_efficiency) :-
    must_submit_report(commission, standardisation_deliverables_energy_efficiency).

must_assess(commission, need_for_further_measures_energy_efficiency) :-
    must_submit_report(commission, standardisation_deliverables_energy_efficiency).

must_evaluate(commission, impact_and_effectiveness_voluntary_codes_of_conduct) :-
    by_date(years(3), after(2_august_2028)).

must_provide_information(Board, commission) :-
    board(Board).

must_provide_information(MemberState, commission) :-
    member_state(MemberState).

must_provide_information(Authority, commission) :-
    national_competent_authority(Authority).

shall_take_into_account(commission, positions_and_findings(Board)) :-
    carrying_out_evaluations_and_reviews(commission).

shall_take_into_account(commission, positions_and_findings(european_parliament)) :-
    carrying_out_evaluations_and_reviews(commission).

shall_take_into_account(commission, positions_and_findings(council)) :-
    carrying_out_evaluations_and_reviews(commission).

shall_take_into_account(commission, positions_and_findings(other_relevant_bodies)) :-
    carrying_out_evaluations_and_reviews(commission).

shall_submit_proposals(commission, amendment_of_regulation) :-
    necessary,
    taking_into_account(technological_developments),
    taking_into_account(effect_on_health_safety_fundamental_rights),
    taking_into_account(state_of_progress_information_society).

shall_undertake(ai_office, develop_methodology) :-
    methodology_for(evaluation_of_risk_levels, _).

methodology_for(evaluation_of_risk_levels, annex_3_inclusion).

methodology_for(evaluation_of_risk_levels, prohibited_practices_inclusion).

methodology_for(evaluation_of_risk_levels, art_50_transparency_measures_inclusion).

amendment_shall_take_into_account(Amendment, regulatory_specificities_of_sector) :-
    concerns_sectoral_harmonisation_legislation(Amendment),
    listed_in(annex_1_section_2).

amendment_shall_take_into_account(Amendment, existing_governance_conformity_assessment_enforcement) :-
    concerns_sectoral_harmonisation_legislation(Amendment),
    listed_in(annex_1_section_2).

must_carry_out_assessment(commission, enforcement_of_regulation) :-
    by_date(2_august_2031).

must_report(commission, european_parliament_council_eesc) :-
    must_carry_out_assessment(commission, enforcement_of_regulation),
    taking_into_account(first_years_of_application).

report_shall_be_accompanied_by(commission, proposal_for_amendment_enforcement_structure_and_union_agency) :-
    must_carry_out_assessment(commission, enforcement_of_regulation),
    appropriate_based_on_findings.

provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_include/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_be_accompanied_by/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_be_made_public/1, 'celex:32024R1689/oj#art_112').
provenance(report_shall_pay_attention_to/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(shall_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(shall_submit_proposals/2, 'celex:32024R1689/oj#art_112').
provenance(shall_undertake/2, 'celex:32024R1689/oj#art_112').
provenance(methodology_for/2, 'celex:32024R1689/oj#art_112').
provenance(amendment_shall_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(must_report/2, 'celex:32024R1689/oj#art_112').

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').

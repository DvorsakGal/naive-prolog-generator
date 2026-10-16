% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 5aa89f81f5739a2662d2b7309cb137bf69cfc5c014e22b5f6b767fa99479c889
% cached     : False
% title      : Evaluation and review
:- pred must_assess_amendment_need/2, gloss('Commission must assess need for amendment of list'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_findings/2, gloss('Commission must submit findings of assessment'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_and_report/3, gloss('Commission must evaluate and report on specified matters'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_report/2, gloss('Commission must submit report on evaluation and review'), source('celex:32024R1689/oj#art_112').
:- pred report_must_include_assessment/1, gloss('report must include assessment of enforcement structure'), source('celex:32024R1689/oj#art_112').
:- pred report_must_be_public/1, gloss('report must be made public'), source('celex:32024R1689/oj#art_112').
:- pred report_must_pay_attention/2, gloss('report must pay specific attention to matters'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_functioning/2, gloss('Commission must evaluate functioning of AI Office'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_progress_report/2, gloss('Commission must submit report on progress of standardisation'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_impact/2, gloss('Commission must evaluate impact of voluntary codes of conduct'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information/2, gloss('entities must provide Commission with information on request'), source('celex:32024R1689/oj#art_112').
:- pred must_take_into_account/2, gloss('Commission must take into account positions and findings'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_amendment_proposals/1, gloss('Commission must submit appropriate proposals to amend regulation'), source('celex:32024R1689/oj#art_112').
:- pred must_develop_methodology/2, gloss('AI Office must develop methodology for evaluation of risk levels'), source('celex:32024R1689/oj#art_112').
:- pred must_take_into_account_sectoral_specificities/1, gloss('amendment must take into account sectoral specificities'), source('celex:32024R1689/oj#art_112').
:- pred must_carry_out_assessment/2, gloss('Commission must carry out assessment of enforcement'), source('celex:32024R1689/oj#art_112').

% Paragraph 1
must_assess_amendment_need(Commission, amendment_need(annex_3_list)) :-
    ai_office(Commission).
must_assess_amendment_need(Commission, amendment_need(prohibited_practices_list)) :-
    ai_office(Commission).

must_submit_findings(Commission, findings(amendment_need)) :-
    must_assess_amendment_need(Commission, _).

% Paragraph 2
must_evaluate_and_report(Commission, evaluation(amendment_need(area_headings)), deadline(august_2, 2028)) :-
    ai_office(Commission).
must_evaluate_and_report(Commission, evaluation(amendment_need(transparency_measures_list)), deadline(august_2, 2028)) :-
    ai_office(Commission).
must_evaluate_and_report(Commission, evaluation(enhancing_supervision_governance), deadline(august_2, 2028)) :-
    ai_office(Commission).

% Paragraph 3
must_submit_report(Commission, report(evaluation_review_regulation)) :-
    ai_office(Commission).

report_must_include_assessment(Report) :-
    must_submit_report(_, Report).

report_must_be_public(Report) :-
    must_submit_report(_, Report).

% Paragraph 4
report_must_pay_attention(Report, status(national_competent_authority_resources)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, state(penalties)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, adopted(harmonised_standards_and_common_specifications)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, number(undertakings_entering_market)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).

% Paragraph 5
must_evaluate_functioning(Commission, functioning(ai_office)) :-
    ai_office(Commission).

must_submit_report(Commission, report(evaluation(ai_office_functioning))) :-
    must_evaluate_functioning(Commission, _).

% Paragraph 6
must_submit_progress_report(Commission, progress(standardisation_energy_efficient_gpai)) :-
    ai_office(Commission).

report_must_be_public(Report) :-
    must_submit_progress_report(_, Report).

% Paragraph 7
must_evaluate_impact(Commission, impact(voluntary_codes_of_conduct)) :-
    ai_office(Commission).

% Paragraph 8
must_provide_information(Entity, Commission) :-
    (   operator(Entity)
    ;   national_competent_authority(Entity)
    ),
    ai_office(Commission).

% Paragraph 9
must_take_into_account(Commission, positions_and_findings) :-
    ai_office(Commission).

% Paragraph 10
must_submit_amendment_proposals(Commission) :-
    ai_office(Commission).

% Paragraph 11
must_develop_methodology(AI_Office, methodology(risk_level_evaluation)) :-
    ai_office(AI_Office).

% Paragraph 12
must_take_into_account_sectoral_specificities(amendment) :-
    must_submit_amendment_proposals(_).

% Paragraph 13
must_carry_out_assessment(Commission, assessment(enforcement_regulation)) :-
    ai_office(Commission).

must_submit_report(Commission, report(assessment(enforcement_regulation))) :-
    must_carry_out_assessment(Commission, _).

% Provenance
provenance(must_assess_amendment_need/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(report_must_include_assessment/1, 'celex:32024R1689/oj#art_112').
provenance(report_must_be_public/1, 'celex:32024R1689/oj#art_112').
provenance(report_must_pay_attention/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_progress_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_impact/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_amendment_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account_sectoral_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_assessment/2, 'celex:32024R1689/oj#art_112').

% References
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dbd41841ebaf5a981ae7d9e3722745f1f0044c647ba594fa87d09c80c501b6cd
% cached     : False
% title      : Evaluation and review
:- pred must_assess_amendment_need/2, gloss('Commission must assess need for amendment of a list'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_findings/2, gloss('Commission must submit findings of assessment'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_and_report/3, gloss('Commission must evaluate and report on a topic by a deadline'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_report/3, gloss('Commission must submit a report on evaluation and review'), source('celex:32024R1689/oj#art_112').
:- pred report_must_pay_attention/2, gloss('Report must pay specific attention to a topic'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_functioning/2, gloss('Commission must evaluate functioning of an entity'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_review_report/2, gloss('Commission must submit a report on review of progress'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_impact/2, gloss('Commission must evaluate impact and effectiveness'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information/2, gloss('Entity must provide information to the Commission upon request'), source('celex:32024R1689/oj#art_112').
:- pred must_take_into_account/2, gloss('Commission must take into account positions and findings'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_amendment_proposals/1, gloss('Commission must submit appropriate proposals to amend the regulation'), source('celex:32024R1689/oj#art_112').
:- pred must_develop_methodology/2, gloss('AI Office must develop methodology for evaluation of risk levels'), source('celex:32024R1689/oj#art_112').
:- pred must_take_into_account_sectoral_specificities/1, gloss('Amendment must take into account regulatory specificities of each sector'), source('celex:32024R1689/oj#art_112').
:- pred must_carry_out_enforcement_assessment/1, gloss('Commission must carry out assessment of enforcement'), source('celex:32024R1689/oj#art_112').

% Paragraph 1
must_assess_amendment_need(Commission, list(annex_iii)) :-
    commission(Commission).
must_assess_amendment_need(Commission, list(prohibited_practices)) :-
    commission(Commission).

must_submit_findings(Commission, assessment(amendment_need)) :-
    commission(Commission).

% Paragraph 2
must_evaluate_and_report(Commission, topic(extending_or_adding_area_headings(annex_iii)), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_evaluate_and_report(Commission, topic(amendments_to_transparency_list(art_50)), deadline(date(2028, 8, 2))) :-
    commission(Commission).
must_evaluate_and_report(Commission, topic(enhancing_supervision_and_governance), deadline(date(2028, 8, 2))) :-
    commission(Commission).

% Paragraph 3
must_submit_report(Commission, report(evaluation_and_review(regulation)), deadline(date(2029, 8, 2))) :-
    commission(Commission).

% Paragraph 4
report_must_pay_attention(report(paragraph_2), topic(status_of_resources(national_competent_authorities))).
report_must_pay_attention(report(paragraph_2), topic(state_of_penalties(administrative_fines))).
report_must_pay_attention(report(paragraph_2), topic(adopted_harmonised_standards_and_common_specifications)).
report_must_pay_attention(report(paragraph_2), topic(number_of_undertakings_entering_market)).

% Paragraph 5
must_evaluate_functioning(Commission, entity(ai_office)) :-
    commission(Commission).

must_submit_report(Commission, report(evaluation(ai_office)), deadline(date(2028, 8, 2))) :-
    commission(Commission).

% Paragraph 6
must_submit_review_report(Commission, report(progress_on_energy_efficient_development(general_purpose_ai_models))) :-
    commission(Commission).

% Paragraph 7
must_evaluate_impact(Commission, impact(voluntary_codes_of_conduct)) :-
    commission(Commission).

% Paragraph 8
must_provide_information(Entity, Commission) :-
    (   board(Entity)
    ;   member_state(Entity)
    ;   national_competent_authority(Entity)
    ),
    commission(Commission).

% Paragraph 9
must_take_into_account(Commission, positions_and_findings) :-
    commission(Commission).

% Paragraph 10
must_submit_amendment_proposals(Commission) :-
    commission(Commission).

% Paragraph 11
must_develop_methodology(ai_office, methodology(evaluation_of_risk_levels)) :-
    ai_office(ai_office).

% Paragraph 12
must_take_into_account_sectoral_specificities(amendment(regulation)) :-
    true.

% Paragraph 13
must_carry_out_enforcement_assessment(Commission) :-
    commission(Commission).

must_submit_report(Commission, report(enforcement_assessment), deadline(date(2031, 8, 2))) :-
    commission(Commission).

% Provenance
provenance(must_assess_amendment_need/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/3, 'celex:32024R1689/oj#art_112').
provenance(report_must_pay_attention/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_review_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_impact/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_amendment_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account_sectoral_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_enforcement_assessment/1, 'celex:32024R1689/oj#art_112').

% References
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

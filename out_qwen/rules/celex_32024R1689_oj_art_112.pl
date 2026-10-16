% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8bb40922a6a7809a24a634d3e6d2ce43c12d592b2372c64274c33c87127b6c95
% cached     : False
% title      : Evaluation and review
:- pred must_assess_annex_three_and_prohibited_practices(Actor, Frequency), gloss('assess need for amendment of annex 3 and article 5 lists'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_regulation(Actor, Deadline), gloss('evaluate and report on regulation including enforcement structure'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_ai_office(Actor, Deadline), gloss('evaluate functioning powers and competences of ai office'), source('celex:32024R1689/oj#art_112').
:- pred must_review_energy_efficiency_standardisation(Actor, Deadline), gloss('review progress on energy efficient development of general purpose ai models'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_voluntary_codes_of_conduct(Actor, Deadline), gloss('evaluate impact and effectiveness of voluntary codes of conduct'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information_to_commission(Actor, Object), gloss('provide information to commission upon request without undue delay'), source('celex:32024R1689/oj#art_112').
:- pred must_develop_evaluation_methodology(Actor, Object), gloss('develop objective and participative methodology for evaluation of risk levels'), source('celex:32024R1689/oj#art_112').
:- pred must_assess_enforcement_by_2031(Actor, Deadline), gloss('carry out assessment of enforcement by 2 august 2031'), source('celex:32024R1689/oj#art_112').

must_assess_annex_three_and_prohibited_practices(commission, annually) :-
    true.

must_evaluate_regulation(commission, date(2028, 8, 2)) :-
    true.

must_evaluate_regulation(commission, every_four_years_after(date(2028, 8, 2))) :-
    true.

must_evaluate_ai_office(commission, date(2028, 8, 2)) :-
    true.

must_review_energy_efficiency_standardisation(commission, date(2028, 8, 2)) :-
    true.

must_review_energy_efficiency_standardisation(commission, every_four_years_after(date(2028, 8, 2))) :-
    true.

must_evaluate_voluntary_codes_of_conduct(commission, date(2028, 8, 2)) :-
    true.

must_evaluate_voluntary_codes_of_conduct(commission, every_three_years_after(date(2028, 8, 2))) :-
    true.

must_provide_information_to_commission(board, upon_request(commission)).
must_provide_information_to_commission(member_states, upon_request(commission)).
must_provide_information_to_commission(national_competent_authority, upon_request(commission)).

must_develop_evaluation_methodology(ai_office, methodology(risk_levels, objective_and_participative)).

must_assess_enforcement_by_2031(commission, date(2031, 8, 2)) :-
    true.

provenance(must_assess_annex_three_and_prohibited_practices/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_regulation/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/2, 'celex:32024R1689/oj#art_112').
provenance(must_review_energy_efficiency_standardisation/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes_of_conduct/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information_to_commission/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_evaluation_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement_by_2031/2, 'celex:32024R1689/oj#art_112').

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

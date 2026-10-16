% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : ebfcdf9d44dccc6de95ea9931bf8a8e915b7f4caab4e9e41a24d8509cc9147b8
% cached     : False
% title      : Codes of practice
:- pred must_encourage_codes_of_practice/1, gloss('AI Office obligation to encourage and facilitate drawing up of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_covers_obligations/1, gloss('code of practice covers obligations in Articles 53 and 55'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_addresses_issue/2, gloss('code of practice addresses specific issue listed in Article 56(2)'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_participant_to_draw_up_code/2, gloss('AI Office may invite entity to participate in drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_meets_objective_requirements/1, gloss('code of practice sets out objectives and contains commitments or measures'), source('celex:32024R1689/oj#art_56').
:- pred must_report_on_implementation/2, gloss('participant must report regularly to AI Office on implementation of code of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate_code/2, gloss('AI Office and Board must monitor and evaluate achievement of code objectives'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_adequacy_assessment/1, gloss('AI Office and Board must publish assessment of adequacy of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred may_approve_code_by_implementing_act/1, gloss('Commission may approve code of practice by implementing act giving general validity'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_adherence_to_code/2, gloss('AI Office may invite provider to adhere to codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred adherence_limited_to_art_53/2, gloss('adherence for non-systemic risk provider limited to Article 53 obligations'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_review_of_code/1, gloss('AI Office must encourage and facilitate review and adaptation of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred code_ready_deadline_applies/1, gloss('codes of practice shall be ready at latest by 2 May 2025'), source('celex:32024R1689/oj#art_56').

must_encourage_codes_of_practice(ai_office).
provenance(must_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_56').

code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, keeping_information_up_to_date).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, training_content_summary_detail).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, systemic_risk_identification).
code_of_practice_covers_obligations(C) :-
    code_of_practice_addresses_issue(C, systemic_risk_assessment_and_management).
provenance(code_of_practice_covers_obligations/1, 'celex:32024R1689/oj#art_56').

may_invite_participant_to_draw_up_code(ai_office, general_purpose_ai_model_provider).
may_invite_participant_to_draw_up_code(ai_office, national_competent_authority).
provenance(may_invite_participant_to_draw_up_code/2, 'celex:32024R1689/oj#art_56').

code_of_practice_meets_objective_requirements(C) :-
    code_of_practice_sets_out_objectives(C),
    code_of_practice_contains_commitments_or_measures(C).
provenance(code_of_practice_meets_objective_requirements/1, 'celex:32024R1689/oj#art_56').

must_report_on_implementation(P, ai_office) :-
    participant_in_code_of_practice(P).
provenance(must_report_on_implementation/2, 'celex:32024R1689/oj#art_56').

must_monitor_and_evaluate_code(ai_office, C) :-
    code_of_practice(C).
must_monitor_and_evaluate_code(board, C) :-
    code_of_practice(C).
provenance(must_monitor_and_evaluate_code/2, 'celex:32024R1689/oj#art_56').

must_publish_adequacy_assessment(ai_office).
must_publish_adequacy_assessment(board).
provenance(must_publish_adequacy_assessment/1, 'celex:32024R1689/oj#art_56').

may_approve_code_by_implementing_act(commission).
provenance(may_approve_code_by_implementing_act/1, 'celex:32024R1689/oj#art_56').

may_invite_adherence_to_code(ai_office, P) :-
    general_purpose_ai_model_provider(_, P).
provenance(may_invite_adherence_to_code/2, 'celex:32024R1689/oj#art_56').

adherence_limited_to_art_53(P, C) :-
    general_purpose_ai_model_provider(_, P),
    \+ presents_systemic_risk(P),
    \+ declared_interest_in_full_code(P).
provenance(adherence_limited_to_art_53/2, 'celex:32024R1689/oj#art_56').

must_encourage_review_of_code(ai_office).
provenance(must_encourage_review_of_code/1, 'celex:32024R1689/oj#art_56').

code_ready_deadline_applies(C) :-
    code_of_practice(C).
provenance(code_ready_deadline_applies/1, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4265c94dc4cba71f0766452b34e1bf23a7094efdb008667f64433ffff0645bd5
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('code of practice for general-purpose AI models'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_and_facilitate/2, gloss('obligation to encourage and facilitate an activity'), source('celex:32024R1689/oj#art_56').
:- pred must_aim_to_ensure/2, gloss('obligation to aim to ensure a condition'), source('celex:32024R1689/oj#art_56').
:- pred may_invite/2, gloss('permission to invite participation'), source('celex:32024R1689/oj#art_56').
:- pred must_report_regularly/2, gloss('obligation to report on implementation'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate/2, gloss('obligation to monitor and evaluate'), source('celex:32024R1689/oj#art_56').
:- pred may_approve/2, gloss('permission to approve with general validity'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_to_adhere/2, gloss('permission to invite adherence to codes'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_review/2, gloss('obligation to encourage review and adaptation'), source('celex:32024R1689/oj#art_56').
:- pred deadline_for_codes/1, gloss('deadline by which codes of practice must be ready'), source('celex:32024R1689/oj#art_56').
:- pred may_provide_common_rules/2, gloss('permission to provide common rules by implementing act'), source('celex:32024R1689/oj#art_56').
:- pred adequate/1, gloss('assessed as adequate by the AI Office'), source('celex:32024R1689/oj#art_56').
:- pred finalised/1, gloss('code of practice has been finalised'), source('celex:32024R1689/oj#art_56').
:- pred systemic_risk_present/1, gloss('general-purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_56').

must_encourage_and_facilitate(ai_office(AI_Office), drawing_up(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), covers_obligations(code_of_practice(C), [art_53, art_55])) :-
    ai_office(AI_Office),
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), covers_issues(code_of_practice(C), [up_to_date_information, adequate_detail_training_summary, systemic_risk_identification, systemic_risk_assessment_and_management])) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

may_invite(ai_office(AI_Office), participation(drawing_up(code_of_practice(C)), general_purpose_ai_model_provider(P))) :-
    ai_office(AI_Office),
    code_of_practice(C),
    provider(P),
    general_purpose_ai_model_provider(P).

may_invite(ai_office(AI_Office), participation(drawing_up(code_of_practice(C)), national_competent_authority(A))) :-
    ai_office(AI_Office),
    code_of_practice(C),
    national_competent_authority(A).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), clear_objectives(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), contains_commitments_and_measures(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), contains_key_performance_indicators(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_aim_to_ensure(ai_office_and_board(AI_Office, Board), takes_account_of_needs_and_interests(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_report_regularly(participant(P), implementation_to(ai_office(AI_Office), code_of_practice(C))) :-
    participant(P),
    code_of_practice(C),
    ai_office(AI_Office).

must_monitor_and_evaluate(ai_office_and_board(AI_Office, Board), achievement_of_objectives(code_of_practice(C), participant(P))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C),
    participant(P).

must_monitor_and_evaluate(ai_office_and_board(AI_Office, Board), contribution_to_proper_application(code_of_practice(C), regulation)) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_assess(ai_office_and_board(AI_Office, Board), covers_obligations(code_of_practice(C), [art_53, art_55])) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

must_assess(ai_office_and_board(AI_Office, Board), adequacy(code_of_practice(C))) :-
    ai_office(AI_Office),
    board(Board),
    code_of_practice(C).

may_approve(commission, general_validity(code_of_practice(C))) :-
    code_of_practice(C).

may_invite_to_adhere(ai_office(AI_Office), code_of_practice(C), general_purpose_ai_model_provider(P)) :-
    ai_office(AI_Office),
    code_of_practice(C),
    provider(P),
    general_purpose_ai_model_provider(P).

permitted_adherence_scope(general_purpose_ai_model_provider(P), code_of_practice(C), obligations(art_53)) :-
    provider(P),
    general_purpose_ai_model_provider(P),
    code_of_practice(C),
    \+ systemic_risk_present(P).

permitted_adherence_scope(general_purpose_ai_model_provider(P), code_of_practice(C), full_code) :-
    provider(P),
    general_purpose_ai_model_provider(P),
    code_of_practice(C),
    declares_explicit_interest(P, full_code).

must_encourage_review(ai_office(AI_Office), adaptation_of(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).

must_assist(ai_office(AI_Office), assessment_of(available_standards)) :-
    ai_office(AI_Office).

deadline_for_codes(ready_by(date(2025, 5, 2))).

must_take_necessary_steps(ai_office(AI_Office), preparation_of(code_of_practice(C))) :-
    ai_office(AI_Office),
    code_of_practice(C).

may_provide_common_rules(commission, implementation_of(obligations([art_53, art_55]))) :-
    \+ finalised(code_of_practice(_)),
    deadline_passed(date(2025, 8, 2)).

may_provide_common_rules(commission, implementation_of(obligations([art_53, art_55]))) :-
    code_of_practice(C),
    \+ adequate(C),
    deadline_passed(date(2025, 8, 2)).

may_provide_common_rules(commission, issues_set_out_in(art_56_par_2)) :-
    \+ finalised(code_of_practice(_)),
    deadline_passed(date(2025, 8, 2)).

may_provide_common_rules(commission, issues_set_out_in(art_56_par_2)) :-
    code_of_practice(C),
    \+ adequate(C),
    deadline_passed(date(2025, 8, 2)).

provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite/2, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_adhere/3, 'celex:32024R1689/oj#art_56').
provenance(permitted_adherence_scope/3, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').
provenance(deadline_for_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess/2, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').

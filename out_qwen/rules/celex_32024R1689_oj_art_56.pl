% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2fb6bf509f84424750a4414fcefe8e5f5ae678bad6d82f2d1f5aba78a2d1f1be
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('code of practice at Union level for general-purpose AI models'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_code_of_practice/2, gloss('AI Office encourages and facilitates drawing up of codes'), source('celex:32024R1689/oj#art_56').
:- pred must_ensure_code_coverage/2, gloss('AI Office and Board ensure code covers obligations'), source('celex:32024R1689/oj#art_56').
:- pred must_ensure_code_objectives/2, gloss('AI Office and Board ensure code sets out objectives and measures'), source('celex:32024R1689/oj#art_56').
:- pred must_ensure_reporting/2, gloss('AI Office ensures participants report on implementation'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate_code/2, gloss('AI Office and Board monitor and evaluate code achievement'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_adequacy_assessment/2, gloss('AI Office and Board publish assessment of code adequacy'), source('celex:32024R1689/oj#art_56').
:- pred may_approve_code/2, gloss('Commission may approve code by implementing act'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_adherence/2, gloss('AI Office may invite providers to adhere to code'), source('celex:32024R1689/oj#art_56').
:- pred limited_adherence_applies/2, gloss('adherence limited to Article 53 obligations for non-systemic risk providers'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_review/2, gloss('AI Office encourages review and adaptation of codes'), source('celex:32024R1689/oj#art_56').
:- pred code_ready_deadline/1, gloss('deadline by which codes of practice must be ready'), source('celex:32024R1689/oj#art_56').

must_encourage_code_of_practice(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_ensure_code_coverage(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_ensure_code_coverage(board, code_of_practice(C)) :-
    code_of_practice(C).

must_ensure_code_objectives(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_ensure_code_objectives(board, code_of_practice(C)) :-
    code_of_practice(C).

must_ensure_reporting(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_monitor_and_evaluate_code(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_monitor_and_evaluate_code(board, code_of_practice(C)) :-
    code_of_practice(C).

must_publish_adequacy_assessment(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

must_publish_adequacy_assessment(board, code_of_practice(C)) :-
    code_of_practice(C).

may_approve_code(commission, code_of_practice(C)) :-
    code_of_practice(C).

may_invite_adherence(ai_office, provider(P)) :-
    provider(P),
    general_purpose_ai_model(_M).

limited_adherence_applies(provider(P), code_of_practice(C)) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ systemic_risk(M),
    code_of_practice(C).

must_encourage_review(ai_office, code_of_practice(C)) :-
    code_of_practice(C).

code_ready_deadline(date(2025, 5, 2)).

provenance(must_encourage_code_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_code_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_code_objectives/2, 'celex:32024R1689/oj#art_56').
provenance(must_ensure_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_code/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_adequacy_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(limited_adherence_applies/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review/2, 'celex:32024R1689/oj#art_56').
provenance(code_ready_deadline/1, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

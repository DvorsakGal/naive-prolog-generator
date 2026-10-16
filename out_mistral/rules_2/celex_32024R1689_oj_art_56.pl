% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 670f9a350f8f80d2a9c066bcdd2d7ce40516f78f69ea537e4839d7cf184db760
% cached     : False
% title      : Codes of practice
:- pred must_encourage_and_facilitate_codes_of_practice/1, gloss('AI Office encourages and facilitates drawing up of codes of practice at Union level'), source('celex:32024R1689/oj#art_56').
:- pred must_aim_to_ensure_codes_cover_obligations/2, gloss('AI Office and Board aim to ensure codes of practice cover obligations from specified articles'), source('celex:32024R1689/oj#art_56').
:- pred codes_of_practice_cover_issue/2, gloss('codes of practice cover a specific issue'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_participants/1, gloss('AI Office may invite providers and national competent authorities to participate in drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred may_support_process/1, gloss('stakeholder may support the process of drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_aim_to_ensure_codes_set_objectives/1, gloss('AI Office and Board aim to ensure codes clearly set out specific objectives with commitments and key performance indicators'), source('celex:32024R1689/oj#art_56').
:- pred must_aim_to_ensure_regular_reporting/1, gloss('AI Office aims to ensure participants report regularly on implementation of commitments'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate_codes/1, gloss('AI Office and Board regularly monitor and evaluate achievement of objectives of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_assessment/1, gloss('AI Office and Board publish their assessment of adequacy of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred may_approve_code_of_practice/1, gloss('Commission may approve a code of practice and give it general validity within the Union'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_providers_to_adhere/1, gloss('AI Office may invite providers of general-purpose AI models to adhere to codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred adherence_limited_to_obligations/2, gloss('adherence of provider without systemic risks may be limited to obligations of specified article'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_review_and_adaptation/1, gloss('AI Office encourages and facilitates review and adaptation of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_assist_assessment_of_standards/1, gloss('AI Office assists in assessment of available standards'), source('celex:32024R1689/oj#art_56').
:- pred codes_of_practice_ready_by/1, gloss('codes of practice ready by specified deadline'), source('celex:32024R1689/oj#art_56').
:- pred must_take_necessary_steps_for_codes/1, gloss('AI Office takes necessary steps including inviting providers to ensure codes are ready'), source('celex:32024R1689/oj#art_56').
:- pred may_provide_common_rules/1, gloss('Commission may provide common rules by implementing acts if code cannot be finalised or is not adequate'), source('celex:32024R1689/oj#art_56').

must_encourage_and_facilitate_codes_of_practice(ai_office).

must_aim_to_ensure_codes_cover_obligations(ai_office, obligations(art_53, art_55)).
must_aim_to_ensure_codes_cover_obligations(board, obligations(art_53, art_55)).

codes_of_practice_cover_issue(C, information_kept_up_to_date) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, adequate_detail_training_summary) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, identification_systemic_risks_union_level) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, measures_assessment_management_systemic_risks) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).

may_invite_participants(ai_office).

may_support_process(civil_society_organisation).
may_support_process(industry).
may_support_process(academia).
may_support_process(downstream_provider).
may_support_process(independent_expert).

must_aim_to_ensure_codes_set_objectives(ai_office).
must_aim_to_ensure_codes_set_objectives(board).

must_aim_to_ensure_regular_reporting(ai_office).

must_monitor_and_evaluate_codes(ai_office).
must_monitor_and_evaluate_codes(board).

must_publish_assessment(ai_office).
must_publish_assessment(board).

may_approve_code_of_practice(commission).

may_invite_providers_to_adhere(ai_office).

adherence_limited_to_obligations(P, art_53) :-
    general_purpose_ai_model_provider(P),
    \+ presents_systemic_risk(P).

must_encourage_review_and_adaptation(ai_office).

must_assist_assessment_of_standards(ai_office).

codes_of_practice_ready_by(date(2025, may, 2)).

must_take_necessary_steps_for_codes(ai_office).

may_provide_common_rules(commission).

provenance(must_encourage_and_facilitate_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_codes_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_cover_issue/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_participants/1, 'celex:32024R1689/oj#art_56').
provenance(may_support_process/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_codes_set_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_regular_reporting/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_providers_to_adhere/1, 'celex:32024R1689/oj#art_56').
provenance(adherence_limited_to_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_and_adaptation/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_ready_by/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps_for_codes/1, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/1, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

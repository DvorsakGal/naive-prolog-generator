% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1959dbd12a5d6ef86de1a5f8b39df105df788b96ff37951aa0c1ad7da65cd35d
% cached     : False
% title      : Codes of practice
:- pred code_of_practice/1, gloss('code of practice drawn up under Article 56'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_participant/1, gloss('entity participating in a code of practice'), source('celex:32024R1689/oj#art_56').
:- pred systemic_risk_at_union_level/1, gloss('systemic risk identified at Union level'), source('celex:32024R1689/oj#art_56').

must_encourage_and_facilitate(ai_office, drawing_up_of_codes_of_practice) :-
    code_of_practice(_).

must_aim_to_cover(ai_office, obligations(art_53)) :-
    code_of_practice(_).
must_aim_to_cover(ai_office, obligations(art_55)) :-
    code_of_practice(_).
must_aim_to_cover(board, obligations(art_53)) :-
    code_of_practice(_).
must_aim_to_cover(board, obligations(art_55)) :-
    code_of_practice(_).

must_aim_to_cover_issue(ai_office, information_kept_up_to_date) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, adequate_detail_for_training_content_summary) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, identification_of_systemic_risks) :-
    code_of_practice(_).
must_aim_to_cover_issue(ai_office, measures_for_systemic_risk_management) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, information_kept_up_to_date) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, adequate_detail_for_training_content_summary) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, identification_of_systemic_risks) :-
    code_of_practice(_).
must_aim_to_cover_issue(board, measures_for_systemic_risk_management) :-
    code_of_practice(_).

may_invite(ai_office, provider_of_general_purpose_ai_model(P)) :-
    provider(P),
    general_purpose_ai_model(_M).
may_invite(ai_office, national_competent_authority(A)) :-
    national_competent_authority(A).

may_support(civil_society_organisation, drawing_up_of_codes_of_practice).
may_support(industry, drawing_up_of_codes_of_practice).
may_support(academia, drawing_up_of_codes_of_practice).
may_support(downstream_provider, drawing_up_of_codes_of_practice).
may_support(independent_expert, drawing_up_of_codes_of_practice).

must_aim_to_ensure(ai_office, clear_objectives_and_commitments(C)) :-
    code_of_practice(C).
must_aim_to_ensure(board, clear_objectives_and_commitments(C)) :-
    code_of_practice(C).

must_aim_to_ensure_reporting(ai_office, C) :-
    code_of_practice(C).

must_reflect_differences_in_size_and_capacity(C) :-
    code_of_practice(C).

must_monitor_and_evaluate(ai_office, achievement_of_objectives(C)) :-
    code_of_practice(C).
must_monitor_and_evaluate(board, achievement_of_objectives(C)) :-
    code_of_practice(C).

must_assess_coverage(ai_office, C) :-
    code_of_practice(C).
must_assess_coverage(board, C) :-
    code_of_practice(C).

must_publish_assessment(ai_office, adequacy(C)) :-
    code_of_practice(C).
must_publish_assessment(board, adequacy(C)) :-
    code_of_practice(C).

may_approve(commission, code_of_practice(C)) :-
    code_of_practice(C).

may_invite_adherence(ai_office, provider_of_general_purpose_ai_model(P)) :-
    provider(P),
    general_purpose_ai_model(_M).

permitted_limited_adherence(P, obligations(art_53)) :-
    provider(P),
    general_purpose_ai_model(_M),
    \+ systemic_risk(_M),
    \+ declared_interest_in_full_code(P).

must_encourage_and_facilitate_review(ai_office, C) :-
    code_of_practice(C).

must_assist_in_assessment_of_standards(ai_office).

must_be_ready_by(C, date(2025, 5, 2)) :-
    code_of_practice(C).

must_take_necessary_steps(ai_office, inviting_providers).

may_provide_common_rules(commission, obligations(art_53)) :-
    \+ code_of_practice_finalised_by(date(2025, 8, 2)).
may_provide_common_rules(commission, obligations(art_55)) :-
    \+ code_of_practice_finalised_by(date(2025, 8, 2)).
may_provide_common_rules(commission, obligations(art_53)) :-
    code_of_practice_deemed_inadequate.
may_provide_common_rules(commission, obligations(art_55)) :-
    code_of_practice_deemed_inadequate.

:- pred code_of_practice_finalised_by/1, gloss('a code of practice has been finalised by the given date'), source('celex:32024R1689/oj#art_56').
:- pred code_of_practice_deemed_inadequate/0, gloss('the AI Office deems the code of practice inadequate'), source('celex:32024R1689/oj#art_56').
:- pred declared_interest_in_full_code/1, gloss('provider explicitly declares interest in joining the full code'), source('celex:32024R1689/oj#art_56').

provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_cover/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_cover_issue/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite/2, 'celex:32024R1689/oj#art_56').
provenance(may_support/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_reporting/2, 'celex:32024R1689/oj#art_56').
provenance(must_reflect_differences_in_size_and_capacity/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(may_approve/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_limited_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate_review/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist_in_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/2, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_participant/1, 'celex:32024R1689/oj#art_56').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_finalised_by/1, 'celex:32024R1689/oj#art_56').
provenance(code_of_practice_deemed_inadequate/0, 'celex:32024R1689/oj#art_56').
provenance(declared_interest_in_full_code/1, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').

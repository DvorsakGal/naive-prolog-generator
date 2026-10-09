% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ac4ca005ab97b32af1a3a14312baa6a7f3edc42367ebda5d9c6e853501af9d8
% cached     : False
% title      : Codes of practice
:- pred must_encourage/2, gloss('obligation to encourage'), source('celex:32024R1689/oj#art_56').
:- pred must_facilitate/2, gloss('obligation to facilitate'), source('celex:32024R1689/oj#art_56').
:- pred must_aim_to_ensure/2, gloss('obligation to aim to ensure'), source('celex:32024R1689/oj#art_56').
:- pred permitted_invite/1, gloss('permission to invite'), source('celex:32024R1689/oj#art_56').
:- pred permitted_support/1, gloss('permission to support'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate/2, gloss('obligation to monitor and evaluate'), source('celex:32024R1689/oj#art_56').
:- pred must_assess_coverage/2, gloss('obligation to assess coverage'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_assessment/2, gloss('obligation to publish assessment'), source('celex:32024R1689/oj#art_56').
:- pred required_codes_of_practice_ready_by/1, gloss('deadline for codes of practice to be ready'), source('celex:32024R1689/oj#art_56').
:- pred must_take_steps/2, gloss('obligation to take necessary steps'), source('celex:32024R1689/oj#art_56').
:- pred permitted_provide_common_rules/1, gloss('permission for Commission to provide common rules'), source('celex:32024R1689/oj#art_56').
:- pred permitted_adherence/1, gloss('permission to adhere to codes of practice'), source('celex:32024R1689/oj#art_56').

must_encourage(ai_office, drawing_up(codes_of_practice)).
must_facilitate(ai_office, drawing_up(codes_of_practice)).
must_aim_to_ensure(ai_office, codes_of_practice_covers_obligations([art_53, art_55])).
must_aim_to_ensure(board, codes_of_practice_covers_obligations([art_53, art_55])).
must_aim_to_ensure(ai_office, codes_of_practice_sets_objectives_and_measures).
must_aim_to_ensure(board, codes_of_practice_sets_objectives_and_measures).
must_aim_to_ensure(ai_office, participants_report_regularly).
must_monitor_and_evaluate(ai_office, codes_of_practice_objectives_achievement).
must_monitor_and_evaluate(board, codes_of_practice_objectives_achievement).
must_assess_coverage(ai_office, codes_of_practice_covers_obligations([art_53, art_55])).
must_assess_coverage(board, codes_of_practice_covers_obligations([art_53, art_55])).
must_publish_assessment(ai_office, adequacy_of_codes_of_practice).
must_publish_assessment(board, adequacy_of_codes_of_practice).
required_codes_of_practice_ready_by(date(2025,5,2)).
must_take_steps(ai_office, prepare_codes_of_practice).
must_encourage_and_facilitate(ai_office, review_and_adaptation_of_codes_of_practice) :-
    true.
must_assist(ai_office, assessment_of_available_standards).

permitted_invite(invite(ai_office, providers_of_general_purpose_ai_models)).
permitted_invite(invite(ai_office, national_competent_authorities)).
permitted_support(support(civil_society_organisations, drawing_up_codes_of_practice)).
permitted_support(support(industry, drawing_up_codes_of_practice)).
permitted_support(support(academia, drawing_up_codes_of_practice)).
permitted_support(support(downstream_providers, drawing_up_codes_of_practice)).
permitted_support(support(independent_experts, drawing_up_codes_of_practice)).

permitted_adherence(adherence(ai_office, providers_of_general_purpose_ai_models)).
permitted_provide_common_rules(commission).

provenance(must_encourage/2, 'celex:32024R1689/oj#art_56').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_invite/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_support/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/2, 'celex:32024R1689/oj#art_56').
provenance(required_codes_of_practice_ready_by/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_steps/2, 'celex:32024R1689/oj#art_56').
provenance(permitted_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
provenance(permitted_adherence/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_56').
provenance(must_assist/2, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

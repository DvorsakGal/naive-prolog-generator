% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 989264cef7acb0313b94eb659c67328e75f10965d80cbbb4b5a780a411f719ef
% cached     : False
% title      : Codes of practice
:- pred must_encourage_and_facilitate_drawing_up/2, gloss('AI Office must encourage and facilitate drawing up of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_cover_obligations/2, gloss('codes of practice must cover obligations from specified articles'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_to_participate/2, gloss('AI Office may invite entities to participate in drawing up codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred may_support_process/1, gloss('entity may support the drawing-up process'), source('celex:32024R1689/oj#art_56').
:- pred must_set_out_objectives/1, gloss('codes of practice must clearly set out specific objectives'), source('celex:32024R1689/oj#art_56').
:- pred must_contain_commitments_or_measures/1, gloss('codes of practice must contain commitments or measures'), source('celex:32024R1689/oj#art_56').
:- pred must_take_account_of_interests/1, gloss('codes of practice must take due account of needs and interests of all interested parties'), source('celex:32024R1689/oj#art_56').
:- pred must_report_regularly/2, gloss('participants must report regularly on implementation'), source('celex:32024R1689/oj#art_56').
:- pred must_reflect_differences_in_size_and_capacity/1, gloss('KPIs and reporting commitments must reflect differences in size and capacity'), source('celex:32024R1689/oj#art_56').
:- pred must_monitor_and_evaluate_achievement/2, gloss('AI Office and Board must regularly monitor and evaluate achievement of objectives'), source('celex:32024R1689/oj#art_56').
:- pred must_assess_coverage/2, gloss('AI Office and Board must assess whether codes cover obligations'), source('celex:32024R1689/oj#art_56').
:- pred must_publish_assessment/1, gloss('AI Office and Board must publish assessment of adequacy'), source('celex:32024R1689/oj#art_56').
:- pred may_approve_code_of_practice/1, gloss('Commission may approve a code of practice by implementing act'), source('celex:32024R1689/oj#art_56').
:- pred may_invite_to_adhere/2, gloss('AI Office may invite providers to adhere to codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred adherence_may_be_limited/2, gloss('adherence may be limited to obligations in Article 53'), source('celex:32024R1689/oj#art_56').
:- pred must_encourage_review_and_adaptation/1, gloss('AI Office must encourage and facilitate review and adaptation of codes of practice'), source('celex:32024R1689/oj#art_56').
:- pred must_assist_in_assessment_of_standards/1, gloss('AI Office must assist in assessment of available standards'), source('celex:32024R1689/oj#art_56').
:- pred must_be_ready_by/2, gloss('codes of practice must be ready by a specified date'), source('celex:32024R1689/oj#art_56').
:- pred must_take_necessary_steps/1, gloss('AI Office must take necessary steps including inviting providers'), source('celex:32024R1689/oj#art_56').
:- pred may_provide_common_rules/1, gloss('Commission may provide common rules by implementing acts'), source('celex:32024R1689/oj#art_56').

must_encourage_and_facilitate_drawing_up(ai_office, codes_of_practice) :-
    ai_office(ai_office).

must_cover_obligations(codes_of_practice, obligations(art_53, art_55)) :-
    true.

may_invite_to_participate(ai_office, providers_of_general_purpose_ai_models) :-
    ai_office(ai_office).
may_invite_to_participate(ai_office, national_competent_authorities) :-
    ai_office(ai_office).

may_support_process(Entity) :-
    (   civil_society_organisation(Entity)
    ;   industry(Entity)
    ;   academia(Entity)
    ;   downstream_provider(Entity)
    ;   independent_expert(Entity)
    ).

must_set_out_objectives(codes_of_practice).

must_contain_commitments_or_measures(codes_of_practice).

must_take_account_of_interests(codes_of_practice).

must_report_regularly(Participant, implementation_report) :-
    participant_to_codes_of_practice(Participant).

must_reflect_differences_in_size_and_capacity(codes_of_practice).

must_monitor_and_evaluate_achievement(ai_office_and_board, objectives_of_codes_of_practice).

must_assess_coverage(ai_office_and_board, obligations(art_53, art_55)).

must_publish_assessment(assessment_of_adequacy).

may_approve_code_of_practice(commission) :-
    true.

may_invite_to_adhere(ai_office, providers_of_general_purpose_ai_models) :-
    ai_office(ai_office).

adherence_may_be_limited(Provider, obligations(art_53)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ systemic_risk_classification_applies(Model).

must_encourage_review_and_adaptation(ai_office) :-
    ai_office(ai_office).

must_assist_in_assessment_of_standards(ai_office) :-
    ai_office(ai_office).

must_be_ready_by(codes_of_practice, date(2025, 5, 2)).

must_take_necessary_steps(ai_office) :-
    ai_office(ai_office).

may_provide_common_rules(commission) :-
    \+ codes_of_practice_finalised_by(date(2025, 8, 2)),
    \+ codes_of_practice_adequate.

provenance(must_encourage_and_facilitate_drawing_up/2, 'celex:32024R1689/oj#art_56').
provenance(must_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_participate/2, 'celex:32024R1689/oj#art_56').
provenance(may_support_process/1, 'celex:32024R1689/oj#art_56').
provenance(must_set_out_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(must_contain_commitments_or_measures/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_account_of_interests/1, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_reflect_differences_in_size_and_capacity/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_achievement/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(adherence_may_be_limited/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_and_adaptation/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_in_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/1, 'celex:32024R1689/oj#art_56').
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

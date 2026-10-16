% unit       : celex:32024R1689/oj#art_56
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 4 Codes of practice
% slice sha  : 442f40b843deb87b2a7bf82f040014f08402a6531cdf70e359f5bd38f63174df
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : bb6544a300c751250e675eaecc55c425bc722745507b0553da62d56d92f67e9f
% cached     : False
% title      : Codes of practice
:- pred must_encourage_and_facilitate_codes_of_practice/2, gloss('AI Office shall encourage and facilitate drawing up of codes of practice'), source('celex:32024R1689/oj#art_56/par_1').
:- pred codes_of_practice_cover_obligations/1, gloss('codes of practice cover obligations in Articles 53 and 55'), source('celex:32024R1689/oj#art_56/par_2').
:- pred may_invite_participation/2, gloss('AI Office may invite participation in drawing-up codes of practice'), source('celex:32024R1689/oj#art_56/par_3').
:- pred stakeholders_may_support_codes_of_practice/1, gloss('stakeholders may support codes of practice process'), source('celex:32024R1689/art_56/par_3').
:- pred codes_of_practice_set_objectives/1, gloss('codes of practice clearly set out specific objectives with commitments and KPIs'), source('celex:32024R1689/oj#art_56/par_4').
:- pred participants_report_implementation/1, gloss('participants report regularly on implementation of commitments'), source('celex:32024R1689/oj#art_56/par_5').
:- pred monitor_evaluate_codes_of_practice/1, gloss('AI Office and Board monitor and evaluate codes of practice'), source('celex:32024R1689/oj#art_56/par_6').
:- pred may_approve_code_of_practice/1, gloss('Commission may approve code of practice by implementing act'), source('celex:32024R1689/oj#art_56/par_6').
:- pred may_invite_adherence/2, gloss('AI Office may invite providers to adhere to codes of practice'), source('celex:32024R1689/oj#art_56/par_7').
:- pred limited_adherence_for_non_systemic_risk_providers/1, gloss('non-systemic risk providers may adhere only to Article 53 obligations'), source('celex:32024R1689/oj#art_56/par_7').
:- pred must_encourage_review_adaptation/2, gloss('AI Office shall encourage and facilitate review and adaptation of codes of practice'), source('celex:32024R1689/oj#art_56/par_8').
:- pred codes_of_practice_deadline/1, gloss('codes of practice shall be ready by 2 May 2025'), source('celex:32024R1689/oj#art_56/par_9').
:- pred may_provide_common_rules/1, gloss('Commission may provide common rules by implementing acts if code inadequate'), source('celex:32024R1689/oj#art_56/par_9').

must_encourage_and_facilitate_codes_of_practice(AI_Office, Code) :-
    ai_office(AI_Office),
    codes_of_practice(Code),
    contributes_to_proper_application(Code).

codes_of_practice_cover_obligations(Code) :-
    codes_of_practice(Code),
    covers_article_53_obligations(Code),
    covers_article_55_obligations(Code),
    ensures_information_kept_up_to_date(Code),
    adequate_training_summary_detail(Code),
    identifies_systemic_risks_union_level(Code),
    measures_for_systemic_risk_assessment_management(Code).

may_invite_participation(AI_Office, Provider) :-
    ai_office(AI_Office),
    general_purpose_ai_model_provider(Provider).

may_invite_participation(AI_Office, Authority) :-
    ai_office(AI_Office),
    national_competent_authority(Authority).

stakeholders_may_support_codes_of_practice(Code) :-
    codes_of_practice(Code).

codes_of_practice_set_objectives(Code) :-
    codes_of_practice(Code),
    specific_objectives(Code),
    commitments_or_measures(Code),
    key_performance_indicators(Code),
    due_account_of_needs_and_interests(Code).

participants_report_implementation(Participant) :-
    participant_codes_of_practice(Participant),
    reports_regularly(Participant, AI_Office),
    implementation_commitments(Participant),
    measures_taken(Participant),
    outcomes(Participant),
    measured_against_kpis(Participant).

monitor_evaluate_codes_of_practice(Code) :-
    codes_of_practice(Code),
    monitored(Code),
    evaluated(Code),
    covers_article_53_obligations(Code),
    covers_article_55_obligations(Code),
    objectives_achieved(Code),
    assessment_published(Code).

may_approve_code_of_practice(Code) :-
    codes_of_practice(Code),
    commission_approves(Code),
    implementing_act(Code),
    general_validity_union(Code).

may_invite_adherence(AI_Office, Provider) :-
    ai_office(AI_Office),
    general_purpose_ai_model_provider(Provider).

limited_adherence_for_non_systemic_risk_providers(Provider) :-
    general_purpose_ai_model_provider(Provider),
    \+ systemic_risk_present(Provider),
    adheres_to_article_53_only(Provider),
    \+ explicit_interest_full_code(Provider).

must_encourage_review_adaptation(AI_Office, Code) :-
    ai_office(AI_Office),
    codes_of_practice(Code),
    emerging_standards(Code).

codes_of_practice_deadline(Code) :-
    codes_of_practice(Code),
    ready_by(Code, date(2025, 5, 2)).

may_provide_common_rules(Code) :-
    codes_of_practice(Code),
    \+ finalised_by(Code, date(2025, 8, 2)),
    implementing_act(Common_Rules),
    covers_article_53_obligations(Common_Rules),
    covers_article_55_obligations(Common_Rules),
    includes_issues_par_2(Common_Rules).

may_provide_common_rules(Code) :-
    codes_of_practice(Code),
    inadequate_assessment(Code),
    implementing_act(Common_Rules),
    covers_article_53_obligations(Common_Rules),
    covers_article_55_obligations(Common_Rules),
    includes_issues_par_2(Common_Rules).

provenance(must_encourage_and_facilitate_codes_of_practice/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_cover_obligations/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_participation/2, 'celex:32024R1689/oj#art_56').
provenance(stakeholders_may_support_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_set_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(participants_report_implementation/1, 'celex:32024R1689/oj#art_56').
provenance(monitor_evaluate_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_adherence/2, 'celex:32024R1689/oj#art_56').
provenance(limited_adherence_for_non_systemic_risk_providers/1, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_adaptation/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_deadline/1, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/1, 'celex:32024R1689/oj#art_56').

references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_7').
references('celex:32024R1689/oj#art_56', 'celex:32024R1689/oj#art_56/par_2').

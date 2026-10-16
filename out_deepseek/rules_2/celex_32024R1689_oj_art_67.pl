% unit       : celex:32024R1689/oj#art_67
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 05cbda3efa49c9106bf4060eb3ee3b1e3fef742f3f080cd82cca4f05f120df91
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 54c88c631c4a3be6a1f5e0ec2cc5687410d2f2fabf7ae82d3a4e617e03e2835d
% cached     : False
% title      : Advisory forum
:- pred advisory_forum/1, gloss('advisory forum established under Article 67'), source('celex:32024R1689/oj#art_67').
:- pred board/1, gloss('AI Board'), source('celex:32024R1689/oj#art_67').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_67').
:- pred member_of_advisory_forum/1, gloss('member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred co_chair_of_advisory_forum/1, gloss('co-chair of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred permanent_member_of_advisory_forum/1, gloss('permanent member of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred stakeholder_with_recognised_expertise_in_ai/1, gloss('stakeholder with recognised expertise in the field of AI'), source('celex:32024R1689/oj#art_67').
:- pred balanced_selection_of_stakeholders/1, gloss('balanced selection of stakeholders'), source('celex:32024R1689/oj#art_67').
:- pred balanced_commercial_non_commercial_interests/1, gloss('balanced with regard to commercial and non-commercial interests'), source('celex:32024R1689/oj#art_67').
:- pred balanced_smes_and_other_undertakings/1, gloss('balanced with regard to SMEs and other undertakings'), source('celex:32024R1689/oj#art_67').
:- pred rules_of_procedure/1, gloss('rules of procedure of the advisory forum'), source('celex:32024R1689/oj#art_67').
:- pred annual_report_on_activities/1, gloss('annual report on the activities of the advisory forum'), source('celex:32024R1689/oj#art_67').

% Paragraph 1
must_establish(Commission, advisory_forum).
must_provide_technical_expertise_and_advise(advisory_forum, board).
must_provide_technical_expertise_and_advise(advisory_forum, commission).
must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).

% Paragraph 2
balanced_selection_of_stakeholders(Membership) :-
    membership_of_advisory_forum(Membership),
    includes_industry(Membership),
    includes_start_ups(Membership),
    includes_smes(Membership),
    includes_civil_society(Membership),
    includes_academia(Membership).

balanced_commercial_non_commercial_interests(Membership) :-
    membership_of_advisory_forum(Membership).

balanced_smes_and_other_undertakings(Membership) :-
    membership_of_advisory_forum(Membership).

% Paragraph 3
must_appoint_members(Commission, advisory_forum) :-
    stakeholder_with_recognised_expertise_in_ai(Stakeholder),
    balanced_selection_of_stakeholders(Stakeholder).

% Paragraph 4
term_of_office(member_of_advisory_forum, years(2)).
may_extend_term_of_office(member_of_advisory_forum, extension(years(2), maximum(years(4)))).

% Paragraph 5
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).

% Paragraph 6
must_draw_up_rules_of_procedure(advisory_forum).
must_elect_co_chairs(advisory_forum, co_chair_of_advisory_forum) :-
    balanced_selection_of_stakeholders(co_chair_of_advisory_forum).
term_of_office(co_chair_of_advisory_forum, years(2)).
may_renew_term_of_office(co_chair_of_advisory_forum, once).

% Paragraph 7
must_hold_meetings(advisory_forum, at_least(twice_per_year)).
may_invite_experts_and_stakeholders(advisory_forum).

% Paragraph 8
may_prepare_opinions(advisory_forum) :-
    requested_by(board).
may_prepare_opinions(advisory_forum) :-
    requested_by(commission).
may_prepare_recommendations(advisory_forum) :-
    requested_by(board).
may_prepare_recommendations(advisory_forum) :-
    requested_by(commission).
may_prepare_written_contributions(advisory_forum) :-
    requested_by(board).
may_prepare_written_contributions(advisory_forum) :-
    requested_by(commission).

% Paragraph 9
may_establish_sub_groups(advisory_forum, standing).
may_establish_sub_groups(advisory_forum, temporary) :-
    for_purpose_of_examining_specific_questions(advisory_forum).

% Paragraph 10
must_prepare_annual_report(advisory_forum).
must_make_publicly_available(annual_report_on_activities).

% Provenance
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(board/1, 'celex:32024R1689/oj#art_67').
provenance(commission/1, 'celex:32024R1689/oj#art_67').
provenance(member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(co_chair_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder_with_recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_selection_of_stakeholders/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_non_commercial_interests/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_smes_and_other_undertakings/1, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_on_activities/1, 'celex:32024R1689/oj#art_67').
provenance(must_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_provide_technical_expertise_and_advise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(may_extend_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chairs/2, 'celex:32024R1689/oj#art_67').
provenance(may_renew_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite_experts_and_stakeholders/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_recommendations/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_written_contributions/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_67').

% References
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

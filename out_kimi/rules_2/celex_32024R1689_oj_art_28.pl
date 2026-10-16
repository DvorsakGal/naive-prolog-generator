% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 4ec0961fd65026851286796296610bbc1e64f3015de985536d31d945578eb998
% cached     : False
% title      : Notifying authorities
:- pred notifying_authority_established/1, gloss('Member State has designated or established a notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred procedures_developed_in_cooperation/0, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest/1, gloss('no conflict of interest with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('objectivity and impartiality of activities are safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decisions_by_different_persons/1, gloss('notification decisions taken by competent persons different from assessors'), source('celex:32024R1689/oj#art_28').
:- pred no_commercial_activities/1, gloss('notifying authority does not offer conformity assessment activities or consultancy services on commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred adequate_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred personnel_expertise/2, gloss('personnel has necessary expertise in specified fields'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    established_under_national_law(Authority),
    responsible_for(Authority, assessment_designation_notification_monitoring).

responsible_for(Authority, assessment_designation_notification_monitoring) :-
    notifying_authority(Authority),
    carries_out(Authority, assessment_of_conformity_assessment_bodies),
    carries_out(Authority, designation_of_conformity_assessment_bodies),
    carries_out(Authority, notification_of_conformity_assessment_bodies),
    carries_out(Authority, monitoring_of_conformity_assessment_bodies).

carries_out(Authority, assessment_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).

carries_out(Authority, designation_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).

carries_out(Authority, notification_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).

carries_out(Authority, monitoring_of_conformity_assessment_bodies) :-
    notifying_authority(Authority).

must_develop_procedures_in_cooperation :-
    notifying_authority(Authority1),
    notifying_authority(Authority2),
    Authority1 \= Authority2,
    procedures_developed_in_cooperation.

may_use_national_accreditation_body(MemberState, Body) :-
    national_accreditation_body(Body),
    established_under_national_law(Body),
    conformity_assessment_body(Body),
    assessment_and_monitoring_carried_out_by(Body).

assessment_and_monitoring_carried_out_by(Body) :-
    conformity_assessment_body(Body),
    carries_out(Body, assessment_of_conformity_assessment_bodies),
    carries_out(Body, monitoring_of_conformity_assessment_bodies).

no_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_bodies(Authority).

objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority),
    no_conflict_of_interest(Authority).

notification_decisions_by_different_persons(Authority) :-
    notifying_authority(Authority),
    competent_persons_take_notification_decisions(Authority),
    assessors_different_from_decision_makers(Authority).

competent_persons_take_notification_decisions(Authority) :-
    notifying_authority(Authority).

assessors_different_from_decision_makers(Authority) :-
    notifying_authority(Authority).

no_commercial_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_activities(Authority),
    \+ provides_consultancy_services_commercially(Authority).

offers_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_activity(Activity),
    offers_or_provides(Authority, Activity).

provides_consultancy_services_commercially(Authority) :-
    notifying_authority(Authority),
    consultancy_service(Service),
    offers_or_provides(Authority, Service),
    on_commercial_or_competitive_basis(Authority, Service).

must_ensure_confidentiality(Authority) :-
    notifying_authority(Authority),
    information_obtained(Authority, Information),
    confidentiality_obligations(Information).

adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    adequate_number_of_personnel(Authority),
    competent_personnel(Person),
    at_disposal_of(Person, Authority).

personnel_expertise(Person, Field) :-
    competent_personnel(Person),
    necessary_expertise(Person, Field),
    field_relevant_for_function(Field).

field_relevant_for_function(information_technologies).
field_relevant_for_function(ai).
field_relevant_for_function(law).
field_relevant_for_function(supervision_of_fundamental_rights).

provenance(notifying_authority_established/1, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/0, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(no_commercial_activities/1, 'celex:32024R1689/oj#art_28').
provenance(adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_expertise/2, 'celex:32024R1689/oj#art_28').
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(carries_out/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/0, 'celex:32024R1689/oj#art_28').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_carried_out_by/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(competent_persons_take_notification_decisions/1, 'celex:32024R1689/oj#art_28').
provenance(assessors_different_from_decision_makers/1, 'celex:32024R1689/oj#art_28').
provenance(no_commercial_activities/1, 'celex:32024R1689/oj#art_28').
provenance(offers_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(provides_consultancy_services_commercially/1, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_28').
provenance(adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_expertise/2, 'celex:32024R1689/oj#art_28').
provenance(field_relevant_for_function/1, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

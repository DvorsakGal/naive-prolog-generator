% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 75c87f05b0af0fbb2a9cd53f034eb187f5c7301be9b72a824f20d9f852e1eabf
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/2, gloss('Member State shall designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred must_set_up_procedures/2, gloss('notifying authority shall set up procedures for assessment, designation and notification'), source('celex:32024R1689/oj#art_28').
:- pred must_carry_out_procedures/2, gloss('notifying authority shall carry out procedures for assessment, designation and notification'), source('celex:32024R1689/oj#art_28').
:- pred must_monitor/2, gloss('notifying authority shall monitor conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred must_develop_procedures_in_cooperation/1, gloss('procedures shall be developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred may_use_national_accreditation_body/2, gloss('Member State may decide assessment and monitoring is carried out by national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest/1, gloss('no conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('objectivity and impartiality of activities are safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decisions_by_different_persons/1, gloss('decisions on notification taken by persons different from assessors'), source('celex:32024R1689/oj#art_28').
:- pred no_conformity_assessment_activities/1, gloss('notifying authority shall not offer or provide conformity assessment body activities'), source('celex:32024R1689/oj#art_28').
:- pred no_consultancy_services/1, gloss('notifying authority shall not offer or provide consultancy services on commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidentiality/2, gloss('notifying authority shall safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred adequate_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred personnel_expertise/2, gloss('competent personnel has necessary expertise in specified fields'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(MemberState, Authority) :-
    member_state(MemberState),
    notifying_authority(Authority).

must_set_up_procedures(Authority, Procedures) :-
    notifying_authority(Authority),
    procedures_for_assessment_designation_notification(Procedures).

must_carry_out_procedures(Authority, Procedures) :-
    notifying_authority(Authority),
    procedures_for_assessment_designation_notification(Procedures).

must_monitor(Authority, Bodies) :-
    notifying_authority(Authority),
    conformity_assessment_body(Bodies).

must_develop_procedures_in_cooperation(Procedures) :-
    procedures_for_assessment_designation_notification(Procedures),
    notifying_authority(Authority1),
    notifying_authority(Authority2),
    Authority1 \= Authority2.

may_use_national_accreditation_body(MemberState, AccreditationBody) :-
    member_state(MemberState),
    national_accreditation_body(AccreditationBody).

no_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_bodies(Authority).

objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority).

notification_decisions_by_different_persons(Authority) :-
    notifying_authority(Authority),
    decision_makers(Authority, Deciders),
    assessors(Authority, Assessors),
    \+ overlap(Deciders, Assessors).

no_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_body_activities(Authority).

no_consultancy_services(Authority) :-
    notifying_authority(Authority),
    \+ provides_consultancy_services(Authority, commercial_or_competitive).

must_safeguard_confidentiality(Authority, Information) :-
    notifying_authority(Authority),
    obtained_information(Authority, Information).

adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    personnel_count(Authority, Count),
    Count >= 1,
    competent_personnel(Authority, Personnel).

personnel_expertise(Personnel, Field) :-
    competent_personnel(_Authority, Personnel),
    field_of_expertise(Field),
    member(Field, [information_technologies, ai, law, supervision_of_fundamental_rights]).

procedures_for_assessment_designation_notification(procedures(assessment, designation, notification)).

field_of_expertise(information_technologies).
field_of_expertise(ai).
field_of_expertise(law).
field_of_expertise(supervision_of_fundamental_rights).

% Helper predicates for structural conditions
conflict_of_interest_with_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    conflict_of_interest(Authority, Body).

offers_conformity_assessment_body_activities(Authority) :-
    notifying_authority(Authority),
    conformity_assessment_body_activity(Activity),
    offers(Authority, Activity).

provides_consultancy_services(Authority, Basis) :-
    notifying_authority(Authority),
    consultancy_service(Service),
    provides(Authority, Service, Basis).

obtained_information(Authority, Information) :-
    notifying_authority(Authority),
    information(Information),
    obtains(Authority, Information).

decision_makers(Authority, Personnel) :-
    notifying_authority(Authority),
    personnel(Personnel),
    makes_notification_decisions(Personnel).

assessors(Authority, Personnel) :-
    notifying_authority(Authority),
    personnel(Personnel),
    carries_out_assessment(Personnel).

overlap(List1, List2) :-
    member(X, List1),
    member(X, List2).

% Provenance facts
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(must_set_up_procedures/2, 'celex:32024R1689/oj#art_28').
provenance(must_carry_out_procedures/2, 'celex:32024R1689/oj#art_28').
provenance(must_monitor/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(no_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(no_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_expertise/2, 'celex:32024R1689/oj#art_28').

% Reference facts
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a698b8aae1285a7718d9e8d081ade4ccd567136462214b4710ce24c9196ec4cc
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/2, gloss('Member State obligation to designate or establish notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred responsible_for_assessment_and_notification/1, gloss('notifying authority responsible for assessment, designation and notification procedures'), source('celex:32024R1689/oj#art_28').
:- pred responsible_for_monitoring_conformity_assessment_bodies/1, gloss('notifying authority responsible for monitoring conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred procedures_developed_in_cooperation/1, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred assessment_carried_out_by_national_accreditation_body/1, gloss('assessment and monitoring carried out by national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest_with_conformity_assessment_bodies/1, gloss('no conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('objectivity and impartiality of activities safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decisions_by_competent_persons_different_from_assessors/1, gloss('decisions relating to notification taken by competent persons different from assessors'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_commercial_activities_for_notifying_authority/1, gloss('activities that conformity assessment bodies perform or consultancy services on commercial basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidentiality/2, gloss('obligation to safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred has_adequate_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred personnel_have_necessary_expertise/1, gloss('competent personnel have necessary expertise for their function'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    responsible_for_assessment_and_notification(Authority),
    responsible_for_monitoring_conformity_assessment_bodies(Authority).

responsible_for_assessment_and_notification(Authority) :-
    notifying_authority(Authority).

responsible_for_monitoring_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority).

procedures_developed_in_cooperation(Procedures) :-
    responsible_for_assessment_and_notification(_Authority),
    procedures_developed_in_cooperation_between_member_states(Procedures).

assessment_carried_out_by_national_accreditation_body(Assessment) :-
    member_state_decides_national_accreditation_body(Assessment).

no_conflict_of_interest_with_conformity_assessment_bodies(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_exists(Authority).

objectivity_and_impartiality_safeguarded(Authority) :-
    notifying_authority(Authority),
    organised_to_safeguard_objectivity_and_impartiality(Authority).

notification_decisions_by_competent_persons_different_from_assessors(Authority) :-
    notifying_authority(Authority),
    decisions_taken_by_different_persons(Authority).

prohibited_commercial_activities_for_notifying_authority(Activity) :-
    notifying_authority(_Authority),
    commercial_or_competitive_basis(Activity).

must_safeguard_confidentiality(Authority, Information) :-
    notifying_authority(Authority),
    information_obtained_by_authority(Authority, Information).

has_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    adequate_number_of_personnel(Authority).

personnel_have_necessary_expertise(Personnel) :-
    has_adequate_competent_personnel(_Authority),
    necessary_expertise_for_function(Personnel).

provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_assessment_and_notification/1, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_monitoring_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_carried_out_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_competent_persons_different_from_assessors/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_activities_for_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

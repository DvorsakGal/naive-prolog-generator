% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 64ba3476c48b018a314e7d0d7eef093f5099995c4e896e5a2cab8570c2228f38
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/1, gloss('Member State must designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred notifying_authority_responsible_for/2, gloss('notifying authority responsible for which procedures'), source('celex:32024R1689/oj#art_28').
:- pred procedures_developed_in_cooperation/1, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred assessment_and_monitoring_by_national_accreditation_body/1, gloss('Member State may decide assessment and monitoring is carried out by national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest_with_conformity_assessment_bodies/1, gloss('notifying authority established so no conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('objectivity and impartiality of notifying authority activities safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decisions_by_different_persons/1, gloss('decisions on notification taken by persons different from those who carried out assessment'), source('celex:32024R1689/oj#art_28').
:- pred adequate_number_of_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred competent_personnel_expertise/2, gloss('competent personnel has necessary expertise in which fields'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(MS) :-
    member_state(MS).

notifying_authority_responsible_for(NA, assessment_designation_notification) :-
    notifying_authority(NA).
notifying_authority_responsible_for(NA, monitoring) :-
    notifying_authority(NA).

procedures_developed_in_cooperation(NA) :-
    notifying_authority(NA).

assessment_and_monitoring_by_national_accreditation_body(MS) :-
    member_state(MS).

no_conflict_of_interest_with_conformity_assessment_bodies(NA) :-
    notifying_authority(NA).

objectivity_and_impartiality_safeguarded(NA) :-
    notifying_authority(NA).

notification_decisions_by_different_persons(NA) :-
    notifying_authority(NA).

must_not_provide_consultancy_services(NA) :-
    notifying_authority(NA).

must_treat_information_confidentially(NA, information_obtained) :-
    notifying_authority(NA).

adequate_number_of_competent_personnel(NA) :-
    notifying_authority(NA).

competent_personnel_expertise(P, information_technologies) :-
    competent_personnel(P).
competent_personnel_expertise(P, ai) :-
    competent_personnel(P).
competent_personnel_expertise(P, law) :-
    competent_personnel(P).
competent_personnel_expertise(P, supervision_of_fundamental_rights) :-
    competent_personnel(P).

provenance(must_designate_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(notifying_authority_responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_provide_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_28').
provenance(adequate_number_of_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(competent_personnel_expertise/2, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

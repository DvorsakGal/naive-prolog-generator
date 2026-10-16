% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : fb1489ab7fe46627a3aabbbeecd3920c84d1fb63ad1d9fe2aa3f8bd82c154954
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/2, gloss('Member State must designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred responsible_for_assessment_and_notification/2, gloss('notifying authority is responsible for assessment, designation and notification procedures'), source('celex:32024R1689/oj#art_28').
:- pred procedures_developed_in_cooperation/1, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred assessment_carried_out_by_accreditation_body/2, gloss('assessment and monitoring carried out by national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest_with_conformity_assessment_bodies/1, gloss('notifying authority organised so no conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('objectivity and impartiality of notifying authority activities are safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decision_by_different_persons/1, gloss('decisions relating to notification taken by persons different from those who carried out assessment'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_commercial_activities/1, gloss('notifying authority does not offer activities performed by conformity assessment bodies or consultancy on commercial basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidentiality/2, gloss('notifying authority must safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred has_adequate_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel for proper performance of tasks'), source('celex:32024R1689/oj#art_28').
:- pred personnel_have_necessary_expertise/1, gloss('competent personnel have necessary expertise in relevant fields'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(MS, A) :-
    notifying_authority(A),
    member_state(MS).

responsible_for_assessment_and_notification(A, Procedures) :-
    notifying_authority(A),
    assessment_procedures(Procedures),
    designation_procedures(Procedures),
    notification_procedures(Procedures),
    monitoring_procedures(Procedures).

procedures_developed_in_cooperation(Procedures) :-
    assessment_procedures(Procedures),
    designation_procedures(Procedures),
    notification_procedures(Procedures).

assessment_carried_out_by_accreditation_body(MS, B) :-
    member_state(MS),
    national_accreditation_body(B),
    ms_decides_accreditation_body_carries_out_assessment(MS, B).

no_conflict_of_interest_with_conformity_assessment_bodies(A) :-
    notifying_authority(A),
    \+ conflict_of_interest_exists(A).

objectivity_and_impartiality_safeguarded(A) :-
    notifying_authority(A),
    established_to_safeguard_objectivity(A),
    organised_to_safeguard_objectivity(A),
    operated_to_safeguard_objectivity(A).

notification_decision_by_different_persons(A) :-
    notifying_authority(A),
    organised_for_separation_of_functions(A).

prohibited_commercial_activities(A) :-
    notifying_authority(A),
    \+ offers_conformity_assessment_activities(A),
    \+ offers_commercial_consultancy_services(A).

must_safeguard_confidentiality(A, Info) :-
    notifying_authority(A),
    information_obtained(A, Info).

has_adequate_competent_personnel(A) :-
    notifying_authority(A),
    adequate_number_of_personnel(A),
    competent_personnel(A).

personnel_have_necessary_expertise(A) :-
    notifying_authority(A),
    competent_personnel(A),
    expertise_in_information_technologies(A),
    expertise_in_ai(A),
    expertise_in_law(A),
    expertise_in_fundamental_rights_supervision(A).

provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(responsible_for_assessment_and_notification/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_carried_out_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decision_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_activities/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(personnel_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

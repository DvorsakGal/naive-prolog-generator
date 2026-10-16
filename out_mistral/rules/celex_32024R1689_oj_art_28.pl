% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7f0f08c8c6dd01e43d09ba59cbcdffeaada9e18c2c3b39cb0a4b5db6b8cf46b3
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/1, gloss('Member State obliged to designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred notifying_authority_responsible_for/2, gloss('notifying authority responsible for procedures concerning conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred procedures_developed_in_cooperation/1, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred assessment_and_monitoring_by_national_accreditation_body/1, gloss('assessment and monitoring carried out by a national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred no_conflict_of_interest_with_conformity_assessment_body/1, gloss('notifying authority organised so that no conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred objectivity_and_impartiality_safeguarded/1, gloss('notifying authority operated so that objectivity and impartiality of activities are safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred notification_decision_by_different_person/1, gloss('notifying authority organised so that notification decisions are taken by persons different from those who carried out the assessment'), source('celex:32024R1689/oj#art_28').
:- pred must_not_perform_conformity_assessment_activities/1, gloss('notifying authority shall not offer or provide activities that conformity assessment bodies perform'), source('celex:32024R1689/oj#art_28').
:- pred must_not_provide_commercial_consultancy/1, gloss('notifying authority shall not offer or provide consultancy services on a commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidential_information/1, gloss('notifying authority shall safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred has_adequate_competent_personnel/1, gloss('notifying authority has adequate number of competent personnel for proper performance of tasks'), source('celex:32024R1689/oj#art_28').
:- pred competent_personnel_has_expertise/2, gloss('competent personnel has necessary expertise in specified fields'), source('celex:32024R1689/oj#art_28').

must_designate_notifying_authority(member_state).

notifying_authority_responsible_for(NA, assessment_designation_notification) :-
    notifying_authority(NA).
notifying_authority_responsible_for(NA, monitoring) :-
    notifying_authority(NA).

procedures_developed_in_cooperation(NA) :-
    notifying_authority(NA).

assessment_and_monitoring_by_national_accreditation_body(NA) :-
    notifying_authority(NA).

no_conflict_of_interest_with_conformity_assessment_body(NA) :-
    notifying_authority(NA).

objectivity_and_impartiality_safeguarded(NA) :-
    notifying_authority(NA).

notification_decision_by_different_person(NA) :-
    notifying_authority(NA).

must_not_perform_conformity_assessment_activities(NA) :-
    notifying_authority(NA).

must_not_provide_commercial_consultancy(NA) :-
    notifying_authority(NA).

must_safeguard_confidential_information(NA) :-
    notifying_authority(NA).

has_adequate_competent_personnel(NA) :-
    notifying_authority(NA).

competent_personnel_has_expertise(NA, information_technologies) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, ai) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, law) :-
    notifying_authority(NA).
competent_personnel_has_expertise(NA, supervision_of_fundamental_rights) :-
    notifying_authority(NA).

provenance(must_designate_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(notifying_authority_responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_body/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decision_by_different_person/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_perform_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_provide_commercial_consultancy/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidential_information/1, 'celex:32024R1689/oj#art_28').
provenance(has_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(competent_personnel_has_expertise/2, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

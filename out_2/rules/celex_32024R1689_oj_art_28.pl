% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 11d200a7b96f1705350e46e7e30a8877558bef487dca2bfd1367c788d5841989
% cached     : False
% title      : Notifying authorities
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_28').
:- pred must_designate_or_establish/2, gloss('Member State shall designate or establish a notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred must_develop_procedures_in_cooperation/2, gloss('Member State shall develop procedures in cooperation between notifying authorities'), source('celex:32024R1689/oj#art_28').
:- pred permitted_assessment_by_accreditation_body/2, gloss('Member State may decide that assessment and monitoring is carried out by a national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred national_accreditation_body/1, gloss('National accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_conflict_of_interest/1, gloss('No conflict of interest arises with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred required_objectivity_and_impartiality/1, gloss('Objectivity and impartiality of activities are safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred required_separation_of_decision_and_assessment/1, gloss('Decisions are taken by persons different from those who carried out the assessment'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_provision_of_assessment_activities/1, gloss('Not offering activities performed by conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_commercial_consultancy_services/1, gloss('No consultancy services on a commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidentiality/2, gloss('Safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred required_adequate_competent_personnel/1, gloss('Adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred required_expertise_of_personnel/1, gloss('Competent personnel have necessary expertise'), source('celex:32024R1689/oj#art_28').

must_designate_or_establish(MemberState, NA) :-
    member_state(MemberState),
    notifying_authority(NA).

must_develop_procedures_in_cooperation(MemberState, cooperation_between_notifying_authorities) :-
    member_state(MemberState).

permitted_assessment_by_accreditation_body(MemberState, AB) :-
    member_state(MemberState),
    national_accreditation_body(AB).

prohibited_conflict_of_interest(NA) :-
    notifying_authority(NA).

required_objectivity_and_impartiality(NA) :-
    notifying_authority(NA).

required_separation_of_decision_and_assessment(NA) :-
    notifying_authority(NA).

prohibited_provision_of_assessment_activities(NA) :-
    notifying_authority(NA).

prohibited_commercial_consultancy_services(NA) :-
    notifying_authority(NA).

must_safeguard_confidentiality(NA, confidentiality_of_information) :-
    notifying_authority(NA).

required_adequate_competent_personnel(NA) :-
    notifying_authority(NA).

required_expertise_of_personnel(NA) :-
    notifying_authority(NA).

% Provenance
provenance(member_state/1, 'celex:32024R1689/oj#art_28').
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop_procedures_in_cooperation/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').
provenance(national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(required_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_decision_and_assessment/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_provision_of_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(required_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(required_expertise_of_personnel/1, 'celex:32024R1689/oj#art_28').

% References
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

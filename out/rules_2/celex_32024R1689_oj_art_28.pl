% unit       : celex:32024R1689/oj#art_28
% title      : Notifying authorities
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : gpt-oss:120b-cloud
% prompt sha : c86e07b5e9736f78df881385732a4009042bfa92b9d124dc568bbbad8730d839
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_28').
:- pred national_accreditation_body/1, gloss('national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred competent_person/1, gloss('competent person'), source('celex:32024R1689/oj#art_28').

must_designate_or_establish_notifying_authority(MS, NA) :-
    member_state(MS),
    notifying_authority(NA).

provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28').

must_develop_procedures_in_cooperation(NA) :-
    notifying_authority(NA).

provenance(must_develop_procedures_in_cooperation/1, 'celex:32024R1689/oj#art_28').

permitted_assessment_and_monitoring_by_accreditation_body(MS, AB) :-
    member_state(MS),
    national_accreditation_body(AB).

provenance(permitted_assessment_and_monitoring_by_accreditation_body/2, 'celex:32024R1689/oj#art_28').

must_ensure_no_conflict_of_interest(NA) :-
    notifying_authority(NA).

provenance(must_ensure_no_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').

must_safeguard_objectivity_and_impartiality(NA) :-
    notifying_authority(NA).

provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').

must_ensure_decisions_taken_by_competent_persons_different_from_assessors(NA) :-
    notifying_authority(NA).

provenance(must_ensure_decisions_taken_by_competent_persons_different_from_assessors/1, 'celex:32024R1689/oj#art_28').

prohibited_provision_of_assessment_activities(NA) :-
    notifying_authority(NA).

provenance(prohibited_provision_of_assessment_activities/1, 'celex:32024R1689/oj#art_28').

prohibited_provision_of_consultancy_services(NA) :-
    notifying_authority(NA).

provenance(prohibited_provision_of_consultancy_services/1, 'celex:32024R1689/oj#art_28').

must_safeguard_confidentiality(NA) :-
    notifying_authority(NA).

provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28').

must_have_adequate_competent_personnel(NA) :-
    notifying_authority(NA).

provenance(must_have_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28').

% References
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

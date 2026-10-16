% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 154ff5f9579713306c256f2dfad7b4f7afdb1b2ccb1feddceb6d33a17f09296b
% cached     : False
% title      : Notifying authorities
:- pred must_designate_or_establish_notifying_authority/2, gloss('Member State must designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28/par_1').
:- pred must_develop_procedures_cooperatively/1, gloss('procedures for assessment, designation, notification and monitoring must be developed in cooperation between notifying authorities'), source('celex:32024R1689/oj#art_28/par_1').
:- pred may_use_national_accreditation_body/2, gloss('Member State may decide that assessment and monitoring is carried out by a national accreditation body'), source('celex:32024R1689/oj#art_28/par_2').
:- pred must_be_free_of_conflict_of_interest/1, gloss('notifying authority must be established, organised and operated without conflict of interest with conformity assessment bodies'), source('celex:32024R1689/oj#art_28/par_3').
:- pred must_safeguard_objectivity_and_impartiality/1, gloss('notifying authority must safeguard objectivity and impartiality of its activities'), source('celex:32024R1689/oj#art_28/par_3').
:- pred must_separate_decision_makers/1, gloss('notifying authority must ensure notification decisions are taken by persons different from those who carried out the assessment'), source('celex:32024R1689/oj#art_28/par_4').
:- pred must_not_offer_conformity_assessment_activities/1, gloss('notifying authority must not offer or provide activities that conformity assessment bodies perform'), source('celex:32024R1689/oj#art_28/par_5').
:- pred must_not_offer_consultancy_services/1, gloss('notifying authority must not offer or provide consultancy services on a commercial or competitive basis'), source('celex:32024R1689/oj#art_28/par_5').
:- pred must_safeguard_confidentiality/1, gloss('notifying authority must safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28/par_6').
:- pred must_have_adequate_competent_personnel/1, gloss('notifying authority must have an adequate number of competent personnel'), source('celex:32024R1689/oj#art_28/par_7').
:- pred must_have_necessary_expertise/1, gloss('competent personnel must have necessary expertise in IT, AI, law and fundamental rights supervision'), source('celex:32024R1689/oj#art_28/par_7').

must_designate_or_establish_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    \+ (notifying_authority(A2), A2 \= Authority, same_member_state(A2, MemberState)).

must_develop_procedures_cooperatively(Procedures) :-
    notifying_authority(_),
    procedures_for_assessment_designation_notification_monitoring(Procedures).

may_use_national_accreditation_body(MemberState, Body) :-
    national_accreditation_body(Body),
    carries_out_assessment_and_monitoring(Body).

must_be_free_of_conflict_of_interest(Authority) :-
    notifying_authority(Authority),
    \+ conflict_of_interest_with_conformity_assessment_body(Authority).

must_safeguard_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).

must_separate_decision_makers(Authority) :-
    notifying_authority(Authority),
    notification_decisions_taken_by_competent_persons(Authority),
    assessment_carried_out_by_different_persons(Authority).

must_not_offer_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority),
    \+ offers_conformity_assessment_activities(Authority).

must_not_offer_consultancy_services(Authority) :-
    notifying_authority(Authority),
    \+ offers_consultancy_services(Authority).

must_safeguard_confidentiality(Authority) :-
    notifying_authority(Authority),
    safeguards_confidentiality_of_information_obtained(Authority).

must_have_adequate_competent_personnel(Authority) :-
    notifying_authority(Authority),
    has_adequate_number_of_competent_personnel(Authority).

must_have_necessary_expertise(Personnel) :-
    competent_personnel(Personnel),
    has_expertise_in(Personnel, information_technologies),
    has_expertise_in(Personnel, ai),
    has_expertise_in(Personnel, law),
    has_expertise_in(Personnel, supervision_of_fundamental_rights).

% Provenance
provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28/par_1').
provenance(must_develop_procedures_cooperatively/1, 'celex:32024R1689/oj#art_28/par_1').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28/par_2').
provenance(must_be_free_of_conflict_of_interest/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_safeguard_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_separate_decision_makers/1, 'celex:32024R1689/oj#art_28/par_4').
provenance(must_not_offer_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_not_offer_consultancy_services/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28/par_6').
provenance(must_have_adequate_competent_personnel/1, 'celex:32024R1689/oj#art_28/par_7').
provenance(must_have_necessary_expertise/1, 'celex:32024R1689/oj#art_28/par_7').

% References
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

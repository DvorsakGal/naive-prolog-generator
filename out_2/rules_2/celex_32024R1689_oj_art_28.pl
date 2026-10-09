% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e354bd80b39a5be4b90c3f61a00e5badca40efa318d60661d3eb875d6ec700c4
% cached     : False
% title      : Notifying authorities
:- pred notifying_authority/1, gloss('authority designated or established for notifying conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred required_cooperation_between_notifying_authorities/1, gloss('procedures developed in cooperation between notifying authorities of all Member States'), source('celex:32024R1689/oj#art_28').
:- pred permitted_assessment_by_national_accreditation_body/1, gloss('assessment and monitoring may be carried out by a national accreditation body'), source('celex:32024R1689/oj#art_28').
:- pred must_ensure_no_conflict_of_interest/2, gloss('ensure that no conflict of interest arises'), source('celex:32024R1689/oj#art_28').
:- pred must_ensure_objectivity_and_impartiality/2, gloss('ensure objectivity and impartiality of activities'), source('celex:32024R1689/oj#art_28').
:- pred must_ensure_decision_makers_separate/2, gloss('ensure decisions are taken by persons different from assessors'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_assessment_activities/1, gloss('prohibit offering activities performed by conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_commercial_consultancy_services/1, gloss('prohibit providing consultancy services on a commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard_confidentiality/2, gloss('safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred must_have/2, gloss('have an adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').
:- pred required_expertise_of_competent_personnel/1, gloss('competent personnel shall have necessary expertise'), source('celex:32024R1689/oj#art_28').

must_designate_or_establish(MemberState, NotifyingAuthority) :-
    member_state(MemberState),
    notifying_authority(NotifyingAuthority).

required_cooperation_between_notifying_authorities(MemberState) :-
    member_state(MemberState).

permitted_assessment_by_national_accreditation_body(MemberState) :-
    member_state(MemberState).

must_ensure_no_conflict_of_interest(NotifyingAuthority, conflict_of_interest_absent) :-
    notifying_authority(NotifyingAuthority).

must_ensure_objectivity_and_impartiality(NotifyingAuthority, safeguarded) :-
    notifying_authority(NotifyingAuthority).

must_ensure_decision_makers_separate(NotifyingAuthority, separate) :-
    notifying_authority(NotifyingAuthority).

prohibited_assessment_activities(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).

prohibited_commercial_consultancy_services(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).

must_safeguard_confidentiality(NotifyingAuthority, information_obtained) :-
    notifying_authority(NotifyingAuthority).

must_have(NotifyingAuthority, adequate_competent_personnel) :-
    notifying_authority(NotifyingAuthority).

required_expertise_of_competent_personnel(NotifyingAuthority) :-
    notifying_authority(NotifyingAuthority).

provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(required_cooperation_between_notifying_authorities/1, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_no_conflict_of_interest/2, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_objectivity_and_impartiality/2, 'celex:32024R1689/oj#art_28').
provenance(must_ensure_decision_makers_separate/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_assessment_activities/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_28').
provenance(must_have/2, 'celex:32024R1689/oj#art_28').
provenance(required_expertise_of_competent_personnel/1, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% unit       : celex:32024R1689/oj#art_28
% title      : Notifying authorities
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : gpt-oss:120b-cloud
% prompt sha : 9a126d04514b68a843b40a0ec5502af44c1075f8271742d1990f16958b46122b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_designate_or_establish_notifying_authority/2, gloss('Member State must designate or establish a notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_conflict_of_interest/1, gloss('Conflict of interest must not arise for notifying authorities'), source('celex:32024R1689/oj#art_28').
:- pred required_objectivity_and_impartiality/1, gloss('Objectivity and impartiality of activities of notifying authorities must be safeguarded'), source('celex:32024R1689/oj#art_28').
:- pred required_separation_of_assessment_and_decision/1, gloss('Decisions on notification must be taken by persons different from assessors'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_assessment_activities_provision/1, gloss('Notifying authorities must not provide activities performed by conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_commercial_consultancy/1, gloss('Notifying authorities must not offer consultancy services on a commercial or competitive basis'), source('celex:32024R1689/oj#art_28').
:- pred required_confidentiality/1, gloss('Notifying authorities must safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28').
:- pred must_have_competent_personnel/1, gloss('Notifying authorities must have an adequate number of competent personnel'), source('celex:32024R1689/oj#art_28').

must_designate_or_establish_notifying_authority(_MemberState, Authority) :-
    notifying_authority(Authority).

prohibited_conflict_of_interest(Authority) :-
    notifying_authority(Authority).

required_objectivity_and_impartiality(Authority) :-
    notifying_authority(Authority).

required_separation_of_assessment_and_decision(Authority) :-
    notifying_authority(Authority).

prohibited_assessment_activities_provision(Authority) :-
    notifying_authority(Authority).

prohibited_commercial_consultancy(Authority) :-
    notifying_authority(Authority).

required_confidentiality(Authority) :-
    notifying_authority(Authority).

must_have_competent_personnel(Authority) :-
    notifying_authority(Authority).

provenance(must_designate_or_establish_notifying_authority/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(required_objectivity_and_impartiality/1, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_assessment_and_decision/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_assessment_activities_provision/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_commercial_consultancy/1, 'celex:32024R1689/oj#art_28').
provenance(required_confidentiality/1, 'celex:32024R1689/oj#art_28').
provenance(must_have_competent_personnel/1, 'celex:32024R1689/oj#art_28').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

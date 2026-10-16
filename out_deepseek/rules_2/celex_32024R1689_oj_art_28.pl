% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : be114639e7b301418a4c4ed176b60e618a1e24658a5e84e3210a3f3494f77918
% cached     : False
% title      : Notifying authorities
:- pred must_designate_notifying_authority/2, gloss('Member State must designate or establish at least one notifying authority'), source('celex:32024R1689/oj#art_28/par_1').
:- pred may_use_national_accreditation_body/2, gloss('Member State may decide that assessment and monitoring is carried out by national accreditation body'), source('celex:32024R1689/oj#art_28/par_2').
:- pred must_safeguard_impartiality/1, gloss('notifying authority must be established to avoid conflict of interest and safeguard objectivity and impartiality'), source('celex:32024R1689/oj#art_28/par_3').
:- pred must_separate_decision_makers/1, gloss('notifying authority must ensure notification decisions are taken by persons different from assessors'), source('celex:32024R1689/oj#art_28/par_4').
:- pred must_not_offer_conformity_assessment_activities/1, gloss('notifying authority must not offer or provide conformity assessment activities or consultancy services'), source('celex:32024R1689/oj#art_28/par_5').
:- pred must_safeguard_confidentiality/1, gloss('notifying authority must safeguard confidentiality of information obtained'), source('celex:32024R1689/oj#art_28/par_6').
:- pred must_have_competent_personnel/1, gloss('notifying authority must have adequate number of competent personnel with necessary expertise'), source('celex:32024R1689/oj#art_28/par_7').

must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    MemberState = _.

may_use_national_accreditation_body(MemberState, Body) :-
    MemberState = _,
    Body = _.

must_safeguard_impartiality(Authority) :-
    notifying_authority(Authority).

must_separate_decision_makers(Authority) :-
    notifying_authority(Authority).

must_not_offer_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority).

must_safeguard_confidentiality(Authority) :-
    notifying_authority(Authority).

must_have_competent_personnel(Authority) :-
    notifying_authority(Authority).

provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28/par_1').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28/par_2').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_separate_decision_makers/1, 'celex:32024R1689/oj#art_28/par_4').
provenance(must_not_offer_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28/par_6').
provenance(must_have_competent_personnel/1, 'celex:32024R1689/oj#art_28/par_7').

references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

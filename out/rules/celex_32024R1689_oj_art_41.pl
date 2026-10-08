% unit       : celex:32024R1689/oj#art_41
% title      : Common specifications
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : gpt-oss:120b-cloud
% prompt sha : 200078fd52c18534aa9d834052ef9e738001bb5f6b724a15fa8efc2400f95ee5
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_41').
:- pred conditions_fulfilled/1, gloss('conditions for adopting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred permitted_common_specifications/1, gloss('permission for Commission to adopt common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_consult/2, gloss('Commission must consult advisory forum'), source('celex:32024R1689/oj#art_41').
:- pred must_adopt_implementing_act/1, gloss('Commission must adopt implementing acts'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_committee_before_draft/1, gloss('Commission must inform committee before drafting'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity/1, gloss('Presumption of conformity with requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred must_assess_harmonised_standard/2, gloss('Commission must assess harmonised standard'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal_implementing_act/2, gloss('Commission must repeal implementing act'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_non_compliance/2, gloss('Provider must justify non‑compliance with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_commission/2, gloss('Member State must inform Commission'), source('celex:32024R1689/oj#art_41').
:- pred must_assess_and_amend/2, gloss('Commission must assess information and amend implementing act'), source('celex:32024R1689/oj#art_41').

permitted_common_specifications(Commission) :-
    commission(Commission),
    conditions_fulfilled(Commission).

must_consult(Commission, advisory_forum) :-
    commission(Commission).

must_adopt_implementing_act(Commission) :-
    commission(Commission).

must_inform_committee_before_draft(Commission) :-
    commission(Commission).

presumed_conformity(System) :-
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    in_conformity_with_common_specifications(System).

must_assess_harmonised_standard(Commission, Standard) :-
    commission(Commission),
    harmonised_standard(Standard).

must_repeal_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act).

must_justify_non_compliance(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    \+ in_conformity_with_common_specifications(System).

must_inform_commission(MemberState, Specification) :-
    member_state(MemberState),
    common_specification(Specification).

must_assess_and_amend(Commission, Specification) :-
    commission(Commission),
    common_specification(Specification).

provenance(permitted_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend/2, 'celex:32024R1689/oj#art_41').

references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').

% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dd79d02e2b294632dc2849e6e5d2c9e32c7be0745d6ea36b0ca1ea970a27151f
% cached     : False
% title      : Common specifications
:- pred may_adopt_common_specifications/1, gloss('Commission may adopt implementing acts establishing common specifications'), source('celex:32024R1689/oj#art_41').
:- pred conditions_fulfilled_for_common_specifications/1, gloss('conditions for adopting common specifications are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_requested/1, gloss('Commission has requested European standardisation organisations to draft harmonised standard'), source('celex:32024R1689/oj#art_41').
:- pred request_not_accepted/1, gloss('request for harmonised standard not accepted by any European standardisation organisation'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_not_delivered/1, gloss('harmonised standards not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_insufficient_rights/1, gloss('harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_non_compliant/1, gloss('harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_standard_reference_published/1, gloss('no reference to harmonised standards published in Official Journal and none expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_with_common_specifications/1, gloss('system or model presumed in conformity when conforming to common specifications'), source('celex:32024R1689/oj#art_41').
:- pred shall_inform_committee/1, gloss('Commission shall inform committee before preparing draft implementing act'), source('celex:32024R1689/oj#art_41').
:- pred shall_justify_non_compliance/2, gloss('provider shall justify non-compliance with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred shall_repeal_implementing_act/1, gloss('Commission shall repeal implementing act when harmonised standard published'), source('celex:32024R1689/oj#art_41').
:- pred shall_inform_commission/2, gloss('Member State shall inform Commission with detailed explanation'), source('celex:32024R1689/oj#art_41').

may_adopt_common_specifications(commission) :-
    conditions_fulfilled_for_common_specifications(commission).

conditions_fulfilled_for_common_specifications(commission) :-
    harmonised_standard_requested(commission),
    ( request_not_accepted(commission)
    ; harmonised_standards_not_delivered(commission)
    ; harmonised_standards_insufficient_rights(commission)
    ; harmonised_standards_non_compliant(commission)
    ),
    no_harmonised_standard_reference_published(commission).

presumed_conformity_with_common_specifications(S) :-
    high_risk_ai_system(S),
    common_specification(C),
    conforms_to(S, C).

presumed_conformity_with_common_specifications(M) :-
    general_purpose_ai_model(M),
    common_specification(C),
    conforms_to(M, C).

shall_inform_committee(commission) :-
    considers_conditions_fulfilled(commission, art_41_par_1).

shall_justify_non_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    common_specification(C),
    \+ complies_with(P, C).

shall_justify_non_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    common_specification(C),
    \+ complies_with(P, C).

shall_repeal_implementing_act(commission) :-
    harmonised_standard_adopted(_H),
    proposed_for_publication(_H),
    reference_published_in_official_journal(_H).

shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_meets_requirements(C, chp_3_sec_2).

shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_complies_with_obligations(C, chp_5_sec_2).

shall_inform_commission(MemberState, C) :-
    member_state(MemberState),
    common_specification(C),
    \+ entirely_complies_with_obligations(C, chp_5_sec_3).

provenance(may_adopt_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(conditions_fulfilled_for_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_requested/1, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_not_delivered/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_insufficient_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_non_compliant/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(shall_inform_committee/1, 'celex:32024R1689/oj#art_41').
provenance(shall_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(shall_repeal_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(shall_inform_commission/2, 'celex:32024R1689/oj#art_41').

references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6535514a640e148faa3f45ff979a199db0442092b1a8a207a85ed3bfe6fa73be
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred sme_applies/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred eligibility_conditions_fulfilled/1, gloss('SME fulfills eligibility conditions for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred selection_criteria_met/1, gloss('SME meets selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').

must_provide(MemberState, priority_access(SME, ai_regulatory_sandbox)) :-
    member_state(MemberState),
    sme_applies(SME),
    eligibility_conditions_fulfilled(SME),
    selection_criteria_met(SME).

must_organise(MemberState, awareness_training(sme, deployer, local_public_authority)) :-
    member_state(MemberState).

must_utilise(MemberState, communication_channels(sme, deployer, other_innovator, local_public_authority)) :-
    member_state(MemberState).

must_establish(MemberState, new_communication_channel(sme, deployer, other_innovator, local_public_authority)) :-
    member_state(MemberState).

must_facilitate(MemberState, participation_in_standardisation(sme, stakeholder)) :-
    member_state(MemberState).

must_take_into_account(MemberState, fee_setting(conformity_assessment, sme_provider)) :-
    member_state(MemberState).

must_reduce_fees(MemberState, conformity_assessment_fee(SME)) :-
    member_state(MemberState),
    sme_applies(SME).

must_provide(AO, standardised_templates(regulation_area)) :-
    ai_office(AO).

must_develop_and_maintain(AO, information_platform(regulation)) :-
    ai_office(AO).

must_organise(AO, communication_campaigns(awareness_obligations)) :-
    ai_office(AO).

must_evaluate_and_promote(AO, convergence_best_practices(public_procurement)) :-
    ai_office(AO).

provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote/2, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

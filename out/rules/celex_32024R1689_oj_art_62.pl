% unit       : celex:32024R1689/oj#art_62
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : gpt-oss:120b-cloud
% prompt sha : a79b311a6ac4aaeb7949606b1dc0c093d60f4107eee6ae6e0ca9930a4a8016c3
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_62').
:- pred sme/1, gloss('small or medium‑sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred fulfills_eligibility_conditions/1, gloss('SME meets eligibility conditions for sandbox'), source('celex:32024R1689/oj#art_62').
:- pred fulfills_selection_criteria/1, gloss('SME meets selection criteria for sandbox'), source('celex:32024R1689/oj#art_62').
:- pred excluded_sme/1, gloss('SME excluded from priority access as per art 62 par 1'), source('celex:32024R1689/oj#art_62').
:- pred local_public_authority/1, gloss('local public authority'), source('celex:32024R1689/oj#art_62').
:- pred size_indicator/1, gloss('indicator of size for fee reduction'), source('celex:32024R1689/oj#art_62').

required_provide_priority_access_to_ai_regulatory_sandbox(_MS, SME) :-
    sme(SME),
    \+ excluded_sme(SME),
    fulfills_eligibility_conditions(SME),
    fulfills_selection_criteria(SME).

prohibited_preclusion_of_access_to_ai_regulatory_sandbox(_MS, SME) :-
    sme(SME),
    \+ excluded_sme(SME),
    fulfills_eligibility_conditions(SME),
    fulfills_selection_criteria(SME).

required_organise_awareness_raising_and_training(_MS, sme) :-
    sme(_).

required_organise_awareness_raising_and_training(_MS, deployer) :-
    deployer(_).

required_organise_awareness_raising_and_training(_MS, local_public_authority) :-
    local_public_authority(_).

required_maintain_communication_channels(_MS) :-
    true.

required_facilitate_participation_in_standardisation(_MS, SME) :-
    sme(SME).

required_take_into_account_sme_interests_when_setting_fees(_MS, SME) :-
    sme(SME).

required_reduce_fees_proportionately(_MS, SME) :-
    sme(SME),
    size_indicator(SME).

required_provide_standardised_templates(Office) :-
    ai_office(Office).

required_develop_and_maintain_information_platform(Office) :-
    ai_office(Office).

required_organise_communication_campaigns(Office) :-
    ai_office(Office).

required_evaluate_and_promote_best_practices_in_public_procurement(Office) :-
    ai_office(Office).

provenance(required_provide_priority_access_to_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(prohibited_preclusion_of_access_to_ai_regulatory_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(required_organise_awareness_raising_and_training/2, 'celex:32024R1689/oj#art_62').
provenance(required_maintain_communication_channels/1, 'celex:32024R1689/oj#art_62').
provenance(required_facilitate_participation_in_standardisation/2, 'celex:32024R1689/oj#art_62').
provenance(required_take_into_account_sme_interests_when_setting_fees/2, 'celex:32024R1689/oj#art_62').
provenance(required_reduce_fees_proportionately/2, 'celex:32024R1689/oj#art_62').
provenance(required_provide_standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(required_develop_and_maintain_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(required_organise_communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(required_evaluate_and_promote_best_practices_in_public_procurement/1, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').

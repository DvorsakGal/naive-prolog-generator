% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8bc3b53981e648c5edc06854faf85f1c15bb1267bf672cb8c25d4281f4d55fb5
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_62').
:- pred smes/1, gloss('small and medium‑sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred fulfills_eligibility/1, gloss('SME fulfills eligibility conditions and selection criteria'), source('celex:32024R1689/oj#art_62').
:- pred priority_access/1, gloss('priority access to AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_and_training/1, gloss('awareness raising and training activities'), source('celex:32024R1689/oj#art_62').
:- pred communication_channels/1, gloss('communication channels with SMEs and other stakeholders'), source('celex:32024R1689/oj#art_62').
:- pred new_communication_channels/1, gloss('new communication channels'), source('celex:32024R1689/oj#art_62').
:- pred participation_in_standardisation/1, gloss('participation in standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred fee_setting_conformity_assessment/1, gloss('fees for conformity assessment'), source('celex:32024R1689/oj#art_62').
:- pred reduced_fee/2, gloss('reduced fee proportionate to size, market size and other indicators'), source('celex:32024R1689/oj#art_62').
:- pred standardised_templates/1, gloss('standardised templates for areas covered by the regulation'), source('celex:32024R1689/oj#art_62').
:- pred information_platform/1, gloss('single information platform'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaigns/1, gloss('communication campaigns to raise awareness about obligations'), source('celex:32024R1689/oj#art_62').
:- pred convergence_best_practices_public_procurement/1, gloss('convergence of best practices in public procurement procedures'), source('celex:32024R1689/oj#art_62').

must_provide(MS, priority_access(SME)) :-
    member_state(MS),
    smes(SME),
    fulfills_eligibility(SME).

must_organise(MS, awareness_raising_and_training(SME)) :-
    member_state(MS),
    smes(SME).

must_utilise(MS, communication_channels(SME)) :-
    member_state(MS),
    smes(SME).

must_establish(MS, new_communication_channels(SME)) :-
    member_state(MS),
    smes(SME).

must_facilitate(MS, participation_in_standardisation(SME)) :-
    member_state(MS),
    smes(SME).

must_take_into_account(Authority, fee_setting_conformity_assessment(SME)) :-
    member_state(Authority),
    smes(SME),
    reduced_fee(SME, proportionate).

must_provide(AIOffice, standardised_templates) :-
    ai_office(AIOffice).

must_develop_and_maintain(AIOffice, information_platform) :-
    ai_office(AIOffice).

must_organise(AIOffice, communication_campaigns) :-
    ai_office(AIOffice).

must_evaluate_and_promote(AIOffice, convergence_best_practices_public_procurement) :-
    ai_office(AIOffice).

provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise/2, 'celex:32024R1689/oj#art_62').
provenance(must_establish/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote/2, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

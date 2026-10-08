% unit       : celex:32024R1689/oj#art_62
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : gpt-oss:120b-cloud
% prompt sha : 1fa932656bbd38910f3f57d37b9f020be3a1959f34e23143cbb428a43b74f330
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_62').
:- pred eligibility_conditions_fulfilled/1, gloss('SME meets the eligibility conditions for the AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred selection_criteria_fulfilled/1, gloss('SME meets the selection criteria for the AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_ai_regulatory_sandbox/1, gloss('SME granted priority access to the AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred smes/1, gloss('small or medium‑sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred local_public_authority/1, gloss('local public authority'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_and_training/1, gloss('awareness‑raising and training activities tailored to SMEs, deployers and local public authorities'), source('celex:32024R1689/oj#art_62').
:- pred existing_dedicated_channel/1, gloss('existing dedicated communication channel'), source('celex:32024R1689/oj#art_62').
:- pred need_new_channel/1, gloss('new communication channel to be established'), source('celex:32024R1689/oj#art_62').
:- pred communication_channels/1, gloss('communication channels for advice and queries about the regulation'), source('celex:32024R1689/oj#art_62').
:- pred stakeholder/1, gloss('relevant stakeholder'), source('celex:32024R1689/oj#art_62').
:- pred participation_in_standardisation/1, gloss('participation of SMEs and stakeholders in the standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred reduced_fees_proportionate_to_size/1, gloss('fees for conformity assessment reduced proportionately to the SME\'s size'), source('celex:32024R1689/oj#art_62').
:- pred fee_setting_for_conformity_assessment/1, gloss('setting of fees for conformity assessment'), source('celex:32024R1689/oj#art_62').
:- pred board_request/1, gloss('request issued by the Board'), source('celex:32024R1689/oj#art_62').
:- pred standardised_templates/1, gloss('standardised templates for areas covered by the regulation'), source('celex:32024R1689/oj#art_62').
:- pred operators_all_union/1, gloss('all operators across the Union'), source('celex:32024R1689/oj#art_62').
:- pred information_platform/1, gloss('single information platform providing easy‑to‑use information about the regulation'), source('celex:32024R1689/oj#art_62').
:- pred obligations_from_regulation/1, gloss('obligations arising from the regulation'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaign/1, gloss('communication campaign to raise awareness about the obligations'), source('celex:32024R1689/oj#art_62').
:- pred public_procurement_procedures/1, gloss('public procurement procedures involving AI systems'), source('celex:32024R1689/oj#art_62').
:- pred best_practices_convergence/1, gloss('evaluation and promotion of convergence of best practices in public procurement'), source('celex:32024R1689/oj#art_62').

must_provide(MemberState, priority_access_to_ai_regulatory_sandbox(SME)) :-
    member_state(MemberState),
    eligibility_conditions_fulfilled(SME),
    selection_criteria_fulfilled(SME),
    member_state(MemberState).

must_organise(MemberState, awareness_raising_and_training(Activity)) :-
    member_state(MemberState),
    smes(SME),
    deployer(Deployer),
    local_public_authority(LPA),
    Activity = activity(SME, Deployer, LPA),
    member_state(MemberState).

must_utilise(MemberState, communication_channels(Existing)) :-
    member_state(MemberState),
    existing_dedicated_channel(Existing),
    existing_dedicated_channel(Existing),
    member_state(MemberState).

must_establish(MemberState, communication_channels(New)) :-
    member_state(MemberState),
    need_new_channel(New),
    need_new_channel(New),
    member_state(MemberState).

must_facilitate(MemberState, participation_in_standardisation(Participation)) :-
    member_state(MemberState),
    smes(SME),
    stakeholder(Stakeholder),
    Participation = participation(SME, Stakeholder),
    member_state(MemberState).

must_take_into_account(MemberState, fee_setting_for_conformity_assessment(SME)) :-
    member_state(MemberState),
    smes(SME),
    reduced_fees_proportionate_to_size(SME),
    member_state(MemberState).

must_provide(AIOffice, standardised_templates(Templates)) :-
    ai_office(AIOffice),
    board_request(Req),
    board_request(Req),
    Templates = templates(Req),
    ai_office(AIOffice).

must_develop_and_maintain(AIOffice, information_platform(Platform)) :-
    ai_office(AIOffice),
    operators_all_union(Ops),
    operators_all_union(Ops),
    Platform = platform(Ops),
    ai_office(AIOffice).

must_organise(AIOffice, communication_campaign(Campaign)) :-
    ai_office(AIOffice),
    obligations_from_regulation(Obl),
    obligations_from_regulation(Obl),
    Campaign = campaign(Obl),
    ai_office(AIOffice).

must_evaluate_and_promote(AIOffice, best_practices_convergence(Evaluation)) :-
    ai_office(AIOffice),
    public_procurement_procedures(PP),
    public_procurement_procedures(PP),
    Evaluation = evaluation(PP),
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

% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 89d9fa53b5943de00a26148025b3195d0b9742dc1dc80f25c87f4bb9f42547b9
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_62').
:- pred sme/1, gloss('small or medium-sized enterprise, including start-up'), source('celex:32024R1689/oj#art_62').
:- pred established_in_union/1, gloss('entity has a registered office or a branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_eligibility_and_selection_criteria/2, gloss('entity fulfils eligibility conditions and selection criteria for a sandbox'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_sandbox/2, gloss('entity is entitled to priority access to an AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred permitted_access_to_sandbox/2, gloss('entity is permitted access to an AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_priority_access/2, gloss('Member State must provide priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_awareness_and_training/2, gloss('Member State must organise tailored awareness and training activities'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_communication_channels/2, gloss('Member State must utilise or establish communication channels for advice and queries'), source('celex:32024R1689/oj#art_62').
:- pred must_facilitate_standardisation_participation/2, gloss('Member State must facilitate participation in standardisation process'), source('celex:32024R1689/oj#art_62').
:- pred required_fee_reduction/2, gloss('conformity assessment fee setting must take into account SME needs and reduce fees proportionately'), source('celex:32024R1689/oj#art_62').
:- pred fee_for_conformity_assessment/1, gloss('fee charged for conformity assessment under Article 43'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_templates/2, gloss('AI Office must provide standardised templates specified by the Board'), source('celex:32024R1689/oj#art_62').
:- pred must_maintain_information_platform/2, gloss('AI Office must develop and maintain a single information platform'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_communication_campaigns/2, gloss('AI Office must organise communication campaigns to raise awareness'), source('celex:32024R1689/oj#art_62').
:- pred must_promote_best_practices_in_procurement/2, gloss('AI Office must evaluate and promote best practices in public procurement of AI'), source('celex:32024R1689/oj#art_62').

% Paragraph 1(a): Priority access for SMEs/start-ups with registered office or branch in Union
priority_access_to_sandbox(E, S) :-
    sme(E),
    established_in_union(E),
    ai_regulatory_sandbox(S),
    fulfils_eligibility_and_selection_criteria(E, S).

must_provide_priority_access(MS, priority_access(E, S)) :-
    member_state(MS),
    priority_access_to_sandbox(E, S).

% Paragraph 1(a): Access for other SMEs fulfilling criteria is not precluded
permitted_access_to_sandbox(E, S) :-
    sme(E),
    ai_regulatory_sandbox(S),
    fulfils_eligibility_and_selection_criteria(E, S).

% Paragraph 1(b): Organise awareness raising and training activities
must_organise_awareness_and_training(MS, awareness_and_training(smes_deployers_local_authorities)) :-
    member_state(MS).

% Paragraph 1(c): Communication channels for advice and queries
must_provide_communication_channels(MS, advice_channels(implementation_and_sandboxes)) :-
    member_state(MS).

% Paragraph 1(d): Facilitate standardisation participation
must_facilitate_standardisation_participation(MS, standardisation(smes_and_stakeholders)) :-
    member_state(MS).

% Paragraph 2: Fee reductions for SME providers
required_fee_reduction(Fee, P) :-
    fee_for_conformity_assessment(Fee),
    provider(P),
    sme(P).

% Paragraph 3(a): Standardised templates requested by the Board
must_provide_templates(O, templates(BoardRequest)) :-
    ai_office(O),
    nonvar(BoardRequest).

% Paragraph 3(b): Single information platform
must_maintain_information_platform(O, platform(single_information_platform)) :-
    ai_office(O).

% Paragraph 3(c): Communication campaigns
must_organise_communication_campaigns(O, campaigns(awareness_of_obligations)) :-
    ai_office(O).

% Paragraph 3(d): Best practices in public procurement
must_promote_best_practices_in_procurement(O, best_practices(procurement_of_ai_systems)) :-
    ai_office(O).

% Provenance facts
provenance(priority_access_to_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_access_to_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_and_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(required_fee_reduction/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote_best_practices_in_procurement/2, 'celex:32024R1689/oj#art_62').

% Cross-references
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

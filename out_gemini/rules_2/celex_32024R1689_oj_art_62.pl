% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 2c915ee62ee3d0d16c47cf16ce985f32ef59c8f990895341bb493006d56b0432
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_62').
:- pred sme_including_startup/1, gloss('entity is a small or medium-sized enterprise, including a start-up'), source('celex:32024R1689/oj#art_62').
:- pred has_registered_office_or_branch_in_union/1, gloss('entity has a registered office or branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_eligibility_and_selection_criteria/2, gloss('entity fulfils eligibility conditions and selection criteria for a sandbox'), source('celex:32024R1689/oj#art_62').
:- pred permitted_access/2, gloss('entity is permitted access to a sandbox or facility'), source('celex:32024R1689/oj#art_62').
:- pred priority_access/2, gloss('entity has priority access to a sandbox'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_priority_access/2, gloss('actor must provide priority access to a regulatory sandbox to an entity'), source('celex:32024R1689/oj#art_62').
:- pred must_organise/2, gloss('actor must organise specified activities or campaigns'), source('celex:32024R1689/oj#art_62').
:- pred must_communicate/2, gloss('actor must communicate advice and responses via channels'), source('celex:32024R1689/oj#art_62').
:- pred must_facilitate/2, gloss('actor must facilitate participation in standardisation or other processes'), source('celex:32024R1689/oj#art_62').
:- pred must_reduce_fees/2, gloss('actor setting fees must take into account interests and reduce fees for SME providers'), source('celex:32024R1689/oj#art_62').
:- pred must_provide/2, gloss('actor must provide specified materials or templates'), source('celex:32024R1689/oj#art_62').
:- pred must_maintain/2, gloss('actor must develop and maintain a specified platform or service'), source('celex:32024R1689/oj#art_62').
:- pred must_promote/2, gloss('actor must evaluate and promote best practices'), source('celex:32024R1689/oj#art_62').

% Paragraph 1(a): Priority access to AI regulatory sandboxes for Union-established SMEs/start-ups
priority_access(Entity, Sandbox) :-
    sme_including_startup(Entity),
    has_registered_office_or_branch_in_union(Entity),
    ai_regulatory_sandbox(Sandbox),
    fulfils_eligibility_and_selection_criteria(Entity, Sandbox).

must_provide_priority_access(MS, access(Entity, Sandbox)) :-
    member_state(MS),
    priority_access(Entity, Sandbox).

% Paragraph 1(a): Non-preclusion of other SMEs/start-ups that fulfil conditions
permitted_access(Entity, Sandbox) :-
    sme_including_startup(Entity),
    ai_regulatory_sandbox(Sandbox),
    fulfils_eligibility_and_selection_criteria(Entity, Sandbox).

% Paragraph 1(b): Awareness raising and training activities
must_organise(MS, awareness_raising_and_training(smes_deployers_local_authorities)) :-
    member_state(MS).

% Paragraph 1(c): Dedicated communication channels for queries and advice
must_communicate(MS, advice_and_queries(smes_deployers_innovators_local_authorities)) :-
    member_state(MS).

% Paragraph 1(d): Standardisation participation facilitation
must_facilitate(MS, standardisation_participation(smes_and_stakeholders)) :-
    member_state(MS).

% Paragraph 2: Conformity assessment fees reduction for SME providers
must_reduce_fees(FeeSetter, conformity_assessment_fees(Provider)) :-
    provider(Provider),
    sme_including_startup(Provider),
    conformity_assessment(FeeSetter).

% Paragraph 3(a): Provide standardised templates requested by the Board
must_provide(Office, standardised_templates) :-
    ai_office(Office).

% Paragraph 3(b): Develop and maintain single information platform
must_maintain(Office, single_information_platform) :-
    ai_office(Office).

% Paragraph 3(c): Communication campaigns to raise awareness
must_organise(Office, communication_campaigns(ai_act_obligations)) :-
    ai_office(Office).

% Paragraph 3(d): Promote convergence of best practices in public procurement
must_promote(Office, best_practices_public_procurement) :-
    ai_office(Office).

provenance(priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise/2, 'celex:32024R1689/oj#art_62').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_62').
provenance(must_reduce_fees/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide/2, 'celex:32024R1689/oj#art_62').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_62').
provenance(must_promote/2, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

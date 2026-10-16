% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 20ee4a8297fc159c9a206d6481c9e47cfac067c00af65623670ea14c26a67498
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred sme/1, gloss('small or medium-sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_62').
:- pred registered_office_or_branch_in_union/1, gloss('has a registered office or a branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_eligibility_conditions/1, gloss('fulfils the eligibility conditions for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_selection_criteria/1, gloss('fulfils the selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_sandbox/1, gloss('has priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_activities/1, gloss('awareness raising and training activities on the application of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred dedicated_communication_channels/1, gloss('dedicated channels for communication about the implementation of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred participation_in_standardisation/1, gloss('participation in the standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred conformity_assessment_fees/1, gloss('fees for conformity assessment under Article 43'), source('celex:32024R1689/oj#art_62').
:- pred standardised_templates/1, gloss('standardised templates for areas covered by the regulation'), source('celex:32024R1689/oj#art_62').
:- pred single_information_platform/1, gloss('single information platform providing easy to use information'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaigns/1, gloss('communication campaigns to raise awareness about obligations'), source('celex:32024R1689/oj#art_62').
:- pred best_practices_in_public_procurement/1, gloss('convergence of best practices in public procurement procedures'), source('celex:32024R1689/oj#art_62').

% Article 62(1)(a) – priority access to sandboxes
must_provide_priority_access(MemberState, E) :-
    sme(E),
    start_up(E),
    registered_office_or_branch_in_union(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).

priority_access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    registered_office_or_branch_in_union(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).

% Article 62(1)(b) – awareness raising and training activities
must_organise_awareness_activities(MemberState, activities(application_of_regulation)) :-
    true.

awareness_raising_activities(activities(application_of_regulation)).

% Article 62(1)(c) – dedicated communication channels
must_utilise_communication_channels(MemberState, channels(implementation_of_regulation)) :-
    true.

dedicated_communication_channels(channels(implementation_of_regulation)).

% Article 62(1)(d) – facilitate participation in standardisation
must_facilitate_standardisation_participation(MemberState, participation(sme_and_stakeholders)) :-
    true.

participation_in_standardisation(participation(sme_and_stakeholders)).

% Article 62(2) – fees for conformity assessment
must_take_into_account_sme_interests(conformity_assessment_body, fees(conformity_assessment)) :-
    true.

conformity_assessment_fees(fees(conformity_assessment)).

% Article 62(3)(a) – standardised templates
must_provide_standardised_templates(ai_office, templates(areas_covered_by_regulation)) :-
    true.

standardised_templates(templates(areas_covered_by_regulation)).

% Article 62(3)(b) – single information platform
must_develop_information_platform(ai_office, platform(information_for_operators)) :-
    true.

single_information_platform(platform(information_for_operators)).

% Article 62(3)(c) – communication campaigns
must_organise_communication_campaigns(ai_office, campaigns(obligations_awareness)) :-
    true.

communication_campaigns(campaigns(obligations_awareness)).

% Article 62(3)(d) – best practices in public procurement
must_evaluate_best_practices(ai_office, procurement(ai_systems)) :-
    true.

best_practices_in_public_procurement(procurement(ai_systems)).

% Provenance
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_activities/2, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_activities/1, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(dedicated_communication_channels/1, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_62').
provenance(conformity_assessment_fees/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_best_practices/2, 'celex:32024R1689/oj#art_62').
provenance(best_practices_in_public_procurement/1, 'celex:32024R1689/oj#art_62').

% References
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

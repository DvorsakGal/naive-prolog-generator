% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 9e1aaadaae08f6fc9c3dcbe45687ccbefbc3e53578a22c028eef634b5cc3c7dd
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_62').
:- pred sme_with_registered_office_or_branch_in_union/1, gloss('SME having a registered office or a branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_ai_regulatory_sandbox/1, gloss('priority access to AI regulatory sandboxes'), source('celex:32024R1689/oj#art_62').
:- pred fulfils_eligibility_conditions_and_selection_criteria/1, gloss('fulfils the eligibility conditions and selection criteria for AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_and_training_activities/1, gloss('specific awareness raising and training activities on the application of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred tailored_to_needs_of_smes/1, gloss('tailored to the needs of SMEs including start-ups, deployers and local public authorities'), source('celex:32024R1689/oj#art_62').
:- pred dedicated_channels_for_communication/1, gloss('existing dedicated channels or new ones for communication with SMEs, deployers, innovators and local public authorities'), source('celex:32024R1689/oj#art_62').
:- pred advice_and_respond_to_queries/1, gloss('provide advice and respond to queries about implementation of the regulation'), source('celex:32024R1689/oj#art_62').
:- pred facilitate_participation_in_standardisation/1, gloss('facilitate participation of SMEs and other relevant stakeholders in standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred fees_reduced_proportionately/1, gloss('fees for conformity assessment reduced proportionately to size, market size and other relevant indicators'), source('celex:32024R1689/oj#art_62').
:- pred standardised_templates/1, gloss('standardised templates for areas covered by the regulation'), source('celex:32024R1689/oj#art_62').
:- pred single_information_platform/1, gloss('single information platform providing easy to use information for all operators across the Union'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaigns/1, gloss('appropriate communication campaigns to raise awareness about obligations arising from the regulation'), source('celex:32024R1689/oj#art_62').
:- pred evaluate_and_promote_best_practices_public_procurement/1, gloss('evaluate and promote convergence of best practices in public procurement procedures in relation to AI systems'), source('celex:32024R1689/oj#art_62').

sme_with_registered_office_or_branch_in_union(S) :-
    sme(S),
    registered_office_in_union(S).
sme_with_registered_office_or_branch_in_union(S) :-
    sme(S),
    branch_in_union(S).

registered_office_in_union(S) :-
    sme(S),
    registered_office(S),
    in_union(S).

branch_in_union(S) :-
    sme(S),
    branch(S),
    in_union(S).

in_union(X) :-
    member_state_location(X).

priority_access_to_ai_regulatory_sandbox(S) :-
    sme_with_registered_office_or_branch_in_union(S),
    fulfils_eligibility_conditions_and_selection_criteria(S).

priority_access_to_ai_regulatory_sandbox(S) :-
    start_up(S),
    sme_with_registered_office_or_branch_in_union(S),
    fulfils_eligibility_conditions_and_selection_criteria(S).

must_provide_priority_access(MemberState, S) :-
    member_state(MemberState),
    priority_access_to_ai_regulatory_sandbox(S).

must_organise_awareness_raising_and_training(MemberState) :-
    member_state(MemberState),
    awareness_raising_and_training_activities(Activity),
    tailored_to_needs_of_smes(Activity).

must_utilise_dedicated_channels(MemberState) :-
    member_state(MemberState),
    dedicated_channels_for_communication(Channel),
    advice_and_respond_to_queries(Channel).

must_facilitate_participation_in_standardisation(MemberState) :-
    member_state(MemberState),
    facilitate_participation_in_standardisation(Activity),
    sme_participates_in(Activity, S),
    sme(S).

must_take_into_account_sme_interests_and_needs_when_setting_fees(Authority) :-
    conformity_assessment(Assessment),
    fees_reduced_proportionately(Assessment),
    sme_provider_interests_taken_into_account(Assessment).

must_provide_standardised_templates(AIOffice) :-
    ai_office(AIOffice),
    standardised_templates(Template).

must_develop_and_maintain_single_information_platform(AIOffice) :-
    ai_office(AIOffice),
    single_information_platform(Platform).

must_organise_communication_campaigns(AIOffice) :-
    ai_office(AIOffice),
    communication_campaigns(Campaign).

must_evaluate_and_promote_best_practices_public_procurement(AIOffice) :-
    ai_office(AIOffice),
    evaluate_and_promote_best_practices_public_procurement(Activity).

provenance(sme/1, 'celex:32024R1689/oj#art_62').
provenance(start_up/1, 'celex:32024R1689/oj#art_62').
provenance(sme_with_registered_office_or_branch_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(fulfils_eligibility_conditions_and_selection_criteria/1, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_and_training_activities/1, 'celex:32024R1689/oj#art_62').
provenance(tailored_to_needs_of_smes/1, 'celex:32024R1689/oj#art_62').
provenance(dedicated_channels_for_communication/1, 'celex:32024R1689/oj#art_62').
provenance(advice_and_respond_to_queries/1, 'celex:32024R1689/oj#art_62').
provenance(facilitate_participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(fees_reduced_proportionately/1, 'celex:32024R1689/oj#art_62').
provenance(standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(evaluate_and_promote_best_practices_public_procurement/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_raising_and_training/1, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_dedicated_channels/1, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests_and_needs_when_setting_fees/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain_single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote_best_practices_public_procurement/1, 'celex:32024R1689/oj#art_62').

references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1cb7ccf632cfe292bfe7703e036a362a460857eaec655cdc0293298ac779d541
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred priority_access_to_ai_regulatory_sandbox/1, gloss('priority access to AI regulatory sandbox for eligible SMEs including start-ups'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_priority_access/2, gloss('Member State obligation to provide priority access to AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_awareness_training/2, gloss('Member State obligation to organise awareness raising and training activities'), source('celex:32024R1689/oj#art_62').
:- pred must_utilise_communication_channels/2, gloss('Member State obligation to utilise and establish communication channels'), source('celex:32024R1689/oj#art_62').
:- pred must_facilitate_standardisation_participation/2, gloss('Member State obligation to facilitate participation in standardisation development'), source('celex:32024R1689/oj#art_62').
:- pred must_take_into_account_sme_interests/2, gloss('obligation to take into account specific interests and needs of SME providers'), source('celex:32024R1689/oj#art_62').
:- pred must_provide_templates/2, gloss('AI Office obligation to provide standardised templates'), source('celex:32024R1689/oj#art_62').
:- pred must_develop_information_platform/2, gloss('AI Office obligation to develop and maintain single information platform'), source('celex:32024R1689/oj#art_62').
:- pred must_organise_communication_campaigns/2, gloss('AI Office obligation to organise communication campaigns'), source('celex:32024R1689/oj#art_62').
:- pred must_evaluate_promote_convergence/2, gloss('AI Office obligation to evaluate and promote convergence of best practices'), source('celex:32024R1689/oj#art_62').

priority_access_to_ai_regulatory_sandbox(Sme) :-
    sme_including_start_up(Sme),
    registered_office_or_branch_in_union(Sme),
    fulfils_eligibility_conditions(Sme),
    fulfils_selection_criteria(Sme).

must_provide_priority_access(MemberState, Sme) :-
    member_state(MemberState),
    priority_access_to_ai_regulatory_sandbox(Sme).

must_organise_awareness_training(MemberState, Activities) :-
    member_state(MemberState),
    activities = awareness_training(application_of_regulation, tailored_to_needs(sme_including_start_up, deployer, local_public_authority_as_appropriate)).

must_utilise_communication_channels(MemberState, Channels) :-
    member_state(MemberState),
    channels = communication_channels(existing_dedicated, new_as_appropriate, for(sme_including_start_up, deployer, other_innovator, local_public_authority_as_appropriate), provide_advice_respond_queries(implementation_of_regulation, participation_in_ai_regulatory_sandbox)).

must_facilitate_standardisation_participation(MemberState, Stakeholders) :-
    member_state(MemberState),
    stakeholders = participation(sme, other_relevant_stakeholder, standardisation_development_process).

must_take_into_account_sme_interests(SettingBody, Fees) :-
    setting_body = fees_for_conformity_assessment,
    fees = conformity_assessment_fees,
    specific_interests_and_needs(sme_provider_including_start_up, Fees),
    reduce_fees_proportionately(Fees, size, market_size, other_relevant_indicators).

must_provide_templates(AiOffice, Templates) :-
    ai_office(AiOffice),
    templates = standardised_templates(areas_covered_by_regulation, specified_by(board_request)).

must_develop_information_platform(AiOffice, Platform) :-
    ai_office(AiOffice),
    platform = single_information_platform(easy_to_use_information, application_of_regulation, all_operators_across_union).

must_organise_communication_campaigns(AiOffice, Campaigns) :-
    ai_office(AiOffice),
    campaigns = communication_campaigns(raise_awareness, obligations_arising_from_regulation).

must_evaluate_promote_convergence(AiOffice, Practices) :-
    ai_office(AiOffice),
    practices = best_practices_convergence(public_procurement_procedures, ai_systems).

% Provenance
provenance(priority_access_to_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_training/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_62').
provenance(must_provide_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_promote_convergence/2, 'celex:32024R1689/oj#art_62').

% References
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

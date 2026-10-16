% unit       : celex:32024R1689/oj#art_62
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : a1c15aa714b88859157709a35913d595dbe4cdb1a862544270bfc2160d8ba030
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8f044486e23acca9da39e6bb1812a4e2ad33d577379a46f1b428a8df7352f364
% cached     : False
% title      : Measures for providers and deployers, in particular SMEs, including start-ups
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_62').
:- pred sme/1, gloss('small and medium-sized enterprise'), source('celex:32024R1689/oj#art_62').
:- pred start_up/1, gloss('start-up enterprise'), source('celex:32024R1689/oj#art_62').
:- pred registered_office_in_union/1, gloss('has registered office in the Union'), source('celex:32024R1689/oj#art_62').
:- pred branch_in_union/1, gloss('has a branch in the Union'), source('celex:32024R1689/oj#art_62').
:- pred priority_access_to_sandbox/1, gloss('has priority access to AI regulatory sandbox'), source('celex:32024R1689/oj#art_62').
:- pred eligible_for_sandbox/1, gloss('fulfils eligibility conditions and selection criteria for sandbox'), source('celex:32024R1689/oj#art_62').
:- pred awareness_raising_activity/1, gloss('specific awareness raising and training activity on application of the Regulation'), source('celex:32024R1689/oj#art_62').
:- pred tailored_to_needs/2, gloss('activity tailored to needs of a party'), source('celex:32024R1689/oj#art_62').
:- pred communication_channel/1, gloss('dedicated channel for communication with SMEs and stakeholders'), source('celex:32024R1689/oj#art_62').
:- pred advice_on_implementation/1, gloss('advice on implementation of the Regulation'), source('celex:32024R1689/oj#art_62').
:- pred standardisation_development_process/1, gloss('standardisation development process'), source('celex:32024R1689/oj#art_62').
:- pred conformity_assessment_fee/1, gloss('fee for conformity assessment'), source('celex:32024R1689/oj#art_62').
:- pred reduced_fee/1, gloss('fee reduced proportionately to size, market size and other relevant indicators'), source('celex:32024R1689/oj#art_62').
:- pred standardised_template/1, gloss('standardised template for areas covered by the Regulation'), source('celex:32024R1689/oj#art_62').
:- pred single_information_platform/1, gloss('single information platform providing easy to use information'), source('celex:32024R1689/oj#art_62').
:- pred communication_campaign/1, gloss('communication campaign to raise awareness about obligations'), source('celex:32024R1689/oj#art_62').
:- pred best_practice_in_public_procurement/1, gloss('best practice in public procurement procedures in relation to AI systems'), source('celex:32024R1689/oj#art_62').

% SME with registered office or branch in Union
sme_with_union_presence(S) :-
    sme(S),
    registered_office_in_union(S).
sme_with_union_presence(S) :-
    sme(S),
    branch_in_union(S).

% Start-up with registered office or branch in Union
start_up_with_union_presence(S) :-
    start_up(S),
    registered_office_in_union(S).
start_up_with_union_presence(S) :-
    start_up(S),
    branch_in_union(S).

% SME including start-up with Union presence
sme_including_start_up_with_union_presence(S) :-
    sme_with_union_presence(S).
sme_including_start_up_with_union_presence(S) :-
    start_up_with_union_presence(S).

% Priority access to sandbox for eligible SMEs/start-ups with Union presence
priority_access_to_sandbox(S) :-
    sme_including_start_up_with_union_presence(S),
    eligible_for_sandbox(S).

% Member State must provide priority access to sandbox
must_provide_priority_access_sandbox(MemberState, S) :-
    member_state(MemberState),
    priority_access_to_sandbox(S).

% Priority access does not preclude other SMEs/start-ups from access
permitted_sandbox_access(S) :-
    sme(S),
    eligible_for_sandbox(S).
permitted_sandbox_access(S) :-
    start_up(S),
    eligible_for_sandbox(S).

% Member State must organise awareness raising activities
must_organise_awareness_activities(MemberState, Activity) :-
    member_state(MemberState),
    awareness_raising_activity(Activity),
    tailored_to_needs(Activity, sme),
    tailored_to_needs(Activity, start_up),
    tailored_to_needs(Activity, deployer).

% Member State must utilise or establish communication channels
must_utilise_communication_channels(MemberState, Channel) :-
    member_state(MemberState),
    communication_channel(Channel).

% Communication channel provides advice on implementation
advice_on_implementation(Channel) :-
    communication_channel(Channel).

% Member State must facilitate participation in standardisation
must_facilitate_standardisation_participation(MemberState, S) :-
    member_state(MemberState),
    sme(S),
    standardisation_development_process(P),
    participates_in(S, P).

% Fee reduction for SME providers
reduced_fee(Fee) :-
    conformity_assessment_fee(Fee),
    sme(Provider),
    fee_applies_to(Fee, Provider).

% AI Office must provide standardised templates
must_provide_standardised_templates(ai_office, Template) :-
    standardised_template(Template).

% AI Office must develop and maintain single information platform
must_develop_information_platform(ai_office, Platform) :-
    single_information_platform(Platform).

% AI Office must organise communication campaigns
must_organise_communication_campaigns(ai_office, Campaign) :-
    communication_campaign(Campaign).

% AI Office must evaluate and promote best practices in public procurement
must_evaluate_promote_best_practices(ai_office, Practice) :-
    best_practice_in_public_procurement(Practice).

% Helper: participates in process
participates_in(S, P) :-
    sme(S),
    standardisation_development_process(P).

% Helper: fee applies to provider
fee_applies_to(Fee, Provider) :-
    conformity_assessment_fee(Fee),
    provider(Provider).

% Provenance
provenance(member_state/1, 'celex:32024R1689/oj#art_62').
provenance(sme/1, 'celex:32024R1689/oj#art_62').
provenance(start_up/1, 'celex:32024R1689/oj#art_62').
provenance(registered_office_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(branch_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(eligible_for_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_activity/1, 'celex:32024R1689/oj#art_62').
provenance(tailored_to_needs/2, 'celex:32024R1689/oj#art_62').
provenance(communication_channel/1, 'celex:32024R1689/oj#art_62').
provenance(advice_on_implementation/1, 'celex:32024R1689/oj#art_62').
provenance(standardisation_development_process/1, 'celex:32024R1689/oj#art_62').
provenance(conformity_assessment_fee/1, 'celex:32024R1689/oj#art_62').
provenance(reduced_fee/1, 'celex:32024R1689/oj#art_62').
provenance(standardised_template/1, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(communication_campaign/1, 'celex:32024R1689/oj#art_62').
provenance(best_practice_in_public_procurement/1, 'celex:32024R1689/oj#art_62').
provenance(sme_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(start_up_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(sme_including_start_up_with_union_presence/1, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access_sandbox/2, 'celex:32024R1689/oj#art_62').
provenance(permitted_sandbox_access/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_activities/2, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(advice_on_implementation/1, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(reduced_fee/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_promote_best_practices/2, 'celex:32024R1689/oj#art_62').
provenance(participates_in/2, 'celex:32024R1689/oj#art_62').
provenance(fee_applies_to/2, 'celex:32024R1689/oj#art_62').

% References
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').

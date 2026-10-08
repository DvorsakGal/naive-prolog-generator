% unit       : celex:32024R1689/oj#anx_9
% title      : Information to be submitted upon the registration of high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/> in relation to testing in real world conditions in accordance with <ref id="celex:32024R1689/oj#art_60"/> The following information shall be provided and thereafter kept up to date with regard to testing in real world conditions to be registered in accordance with <ref id="celex:32024R1689/oj#art_60"/>:
% context    : ANNEXES
% slice sha  : a87c66ea69b55355f7b1877ff4d67fadcca07c0b4a7e26fba5d6308e2891912e
% model      : gpt-oss:120b-cloud
% prompt sha : fe2d2f21c497f2554171cad1fe5ac150300945216b7c89f89336b39159b2dfd1
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system as defined in the Regulation'), source('anx_9').
:- pred required_information_item/1, gloss('information element that must be submitted for registration of testing in real world conditions'), source('anx_9').
:- pred must_provide/2, gloss('obligation to submit required information'), source('anx_9').
:- pred must_maintain_up_to_date/2, gloss('obligation to keep submitted information up to date'), source('anx_9').

% Required information items (1‑5)
required_information_item(union_wide_unique_identification_number).
required_information_item(provider_and_deployer_contact_details).
required_information_item(brief_description_of_ai_system).
required_information_item(summary_of_testing_plan_characteristics).
required_information_item(information_on_suspension_or_termination).

% Obligation to provide the required information
must_provide(Actor, Item) :-
    provider(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).

must_provide(Actor, Item) :-
    deployer(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).

% Obligation to keep the information up to date
must_maintain_up_to_date(Actor, Item) :-
    provider(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).

must_maintain_up_to_date(Actor, Item) :-
    deployer(Actor),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    required_information_item(Item).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_9').
provenance(required_information_item/1, 'celex:32024R1689/oj#anx_9').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_9').
provenance(must_maintain_up_to_date/2, 'celex:32024R1689/oj#anx_9').

% References
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

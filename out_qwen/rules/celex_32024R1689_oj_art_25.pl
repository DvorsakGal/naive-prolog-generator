% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4e895fd3ab125433008a451e00a94730e8450cf590736b0f7d5e9a9170e3ab65
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider_of_high_risk_ai_system/1, gloss('entity treated as provider of a high-risk AI system under Article 25'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_provider/2, gloss('initial provider must cooperate with new provider'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_assistance_by_written_agreement/2, gloss('provider and third party supplier must specify assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred exempt_open_source_third_party/1, gloss('third party making tools available under free and open-source licence'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_exemption_applies/1, gloss('initial provider specified system not to be changed into high-risk AI system'), source('celex:32024R1689/oj#art_25').

considered_provider_of_high_risk_ai_system(P) :-
    distributor(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).

considered_provider_of_high_risk_ai_system(P) :-
    importer(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).

considered_provider_of_high_risk_ai_system(P) :-
    deployer(P),
    high_risk_ai_system(S),
    places_name_or_trademark(P, S),
    already_on_market_or_in_service(S).

considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    high_risk_ai_system(S),
    substantial_modification(S),
    remains_high_risk_after_modification(S),
    already_on_market_or_in_service(S).

considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    ai_system(S),
    modifies_intended_purpose(P, S),
    becomes_high_risk_due_to_purpose_change(S),
    already_on_market_or_in_service(S).

must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    considered_provider_of_high_risk_ai_system(NewProvider),
    initially_placed_on_market_or_in_service(InitialProvider, _S),
    \+ initial_provider_exemption_applies(InitialProvider).

must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_component_for_high_risk_system(ThirdParty, S),
    \+ exempt_open_source_third_party(ThirdParty).

exempt_open_source_third_party(T) :-
    makes_accessible_under_free_and_open_source_licence(T),
    \+ supplies_general_purpose_ai_model(T).

initial_provider_exemption_applies(P) :-
    clearly_specified_not_to_be_changed_into_high_risk(P).

provenance(considered_provider_of_high_risk_ai_system/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_open_source_third_party/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_exemption_applies/1, 'celex:32024R1689/oj#art_25').

references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

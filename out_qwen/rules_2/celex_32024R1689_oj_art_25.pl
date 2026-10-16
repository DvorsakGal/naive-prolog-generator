% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : c9f27825473674ad5f7261adaa86db0bd436aa0eb0c445dc87c2824deaad92ed
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider_of_high_risk_ai_system/1, gloss('entity considered to be a provider of a high-risk AI system under Article 25'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_no_longer_considered_provider/1, gloss('initial provider no longer considered provider of specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_provider/2, gloss('initial provider must cooperate with new provider'), source('celex:32024R1689/oj#art_25').
:- pred must_make_available_information_and_assistance/2, gloss('initial provider must make available information and assistance to new provider'), source('celex:32024R1689/oj#art_25').
:- pred specified_not_to_be_changed_into_high_risk/1, gloss('initial provider clearly specified AI system not to be changed into high-risk'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_considered_provider/1, gloss('product manufacturer considered provider of high-risk AI safety component'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_assistance_by_written_agreement/2, gloss('provider and third party supplier must specify assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred supplies_component_for_high_risk_ai_system/2, gloss('third party supplies tools services components or processes for high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred makes_accessible_under_free_and_open_source_licence/1, gloss('third party makes accessible tools services processes or components under free and open-source licence'), source('celex:32024R1689/oj#art_25').

considered_provider_of_high_risk_ai_system(P) :-
    distributor(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).

considered_provider_of_high_risk_ai_system(P) :-
    importer(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).

considered_provider_of_high_risk_ai_system(P) :-
    deployer(P),
    high_risk_ai_system(S),
    places_name_or_trademark_on_system(P, S).

considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    high_risk_ai_system(S),
    substantial_modification(S),
    remains_high_risk_after_modification(S).

considered_provider_of_high_risk_ai_system(P) :-
    operator(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    modifies_intended_purpose(P, S),
    becomes_high_risk_due_to_purpose_modification(S).

places_name_or_trademark_on_system(_P, _S).
remains_high_risk_after_modification(_S).
modifies_intended_purpose(_P, _S).
becomes_high_risk_due_to_purpose_modification(_S).

initial_provider_no_longer_considered_provider(S) :-
    considered_provider_of_high_risk_ai_system(_NewProvider),
    high_risk_ai_system(S),
    \+ specified_not_to_be_changed_into_high_risk(S).

must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    initial_provider_no_longer_considered_provider(_S),
    provider(InitialProvider),
    considered_provider_of_high_risk_ai_system(NewProvider),
    InitialProvider \= NewProvider.

must_make_available_information_and_assistance(InitialProvider, NewProvider) :-
    must_cooperate_with_new_provider(InitialProvider, NewProvider).

product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_safety_component(S),
    covered_by_annex_i(S),
    placed_on_market_with_product_under_manufacturer_name(M, S).

product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_safety_component(S),
    covered_by_annex_i(S),
    put_into_service_under_manufacturer_name(M, S).

placed_on_market_with_product_under_manufacturer_name(_M, _S).
put_into_service_under_manufacturer_name(_M, _S).

must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_component_for_high_risk_ai_system(ThirdParty, S),
    \+ makes_accessible_under_free_and_open_source_licence(ThirdParty).

supplies_component_for_high_risk_ai_system(_ThirdParty, _S).

provenance(considered_provider_of_high_risk_ai_system/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information_and_assistance/2, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(supplies_component_for_high_risk_ai_system/2, 'celex:32024R1689/oj#art_25').
provenance(makes_accessible_under_free_and_open_source_licence/1, 'celex:32024R1689/oj#art_25').

references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

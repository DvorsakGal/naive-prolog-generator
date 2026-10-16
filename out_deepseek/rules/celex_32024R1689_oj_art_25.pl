% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 591374fa28405d5911148a1b1f7ec1b9750bd24d22d82c71900a6738535483f8
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider/2, gloss('entity considered a provider of a high-risk AI system under Article 25'), source('celex:32024R1689/oj#art_25').
:- pred no_longer_provider/2, gloss('initial provider no longer considered provider of a specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate/2, gloss('initial provider must cooperate with new provider'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_by_agreement/3, gloss('provider and third party must specify information and assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_considered_provider/2, gloss('product manufacturer considered provider of high-risk AI safety component'), source('celex:32024R1689/oj#art_25').

% Paragraph 1
considered_provider(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( puts_name_or_trademark(Entity, S)
    ; makes_substantial_modification(Entity, S)
    ; modifies_intended_purpose_to_high_risk(Entity, S)
    ).

puts_name_or_trademark(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    name_or_trademark_placed(Entity, S).

makes_substantial_modification(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    substantial_modification(S),
    remains_high_risk(S).

modifies_intended_purpose_to_high_risk(Entity, S) :-
    ( distributor(Entity)
    ; importer(Entity)
    ; deployer(Entity)
    ; third_party(Entity)
    ),
    ai_system(S),
    \+ high_risk_ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ),
    modifies_intended_purpose(Entity, S),
    becomes_high_risk(S).

% Paragraph 2
no_longer_provider(InitialProvider, S) :-
    provider(InitialProvider),
    high_risk_ai_system(S),
    considered_provider(_NewProvider, S),
    initially_placed_or_put_into_service(InitialProvider, S).

must_cooperate(InitialProvider, NewProvider) :-
    provider(InitialProvider),
    considered_provider(NewProvider, S),
    initially_placed_or_put_into_service(InitialProvider, S),
    \+ initial_provider_excluded(InitialProvider, S).

initial_provider_excluded(InitialProvider, S) :-
    provider(InitialProvider),
    high_risk_ai_system(S),
    specified_not_to_be_changed_to_high_risk(InitialProvider, S).

% Paragraph 3
product_manufacturer_considered_provider(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    product_covered_by_annex_1_section_1(S),
    ( placed_on_market_together(Manufacturer, S)
    ; put_into_service_under_name(Manufacturer, S)
    ).

placed_on_market_together(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    placing_on_market(S),
    name_or_trademark_placed(Manufacturer, S).

put_into_service_under_name(Manufacturer, S) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    putting_into_service(S),
    name_or_trademark_placed(Manufacturer, S).

% Paragraph 4
must_specify_by_agreement(Provider, ThirdParty, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_to_high_risk(ThirdParty, S),
    \+ free_and_open_source_exception(ThirdParty).

free_and_open_source_exception(ThirdParty) :-
    third_party(ThirdParty),
    makes_publicly_accessible(ThirdParty, tools_services_processes_components),
    free_and_open_source_licence(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).

% Provenance
provenance(considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_agreement/3, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

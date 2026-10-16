% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 8a86ff63096e87f57e71a9d46ec4522630059a4f22c88795bd1fce75d3e9557d
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred becomes_provider_under_circumstance/2, gloss('third party becomes provider of high-risk AI system under a specific circumstance'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_ceases/1, gloss('initial provider ceases to be considered provider of that specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_provider/2, gloss('initial provider must cooperate with new provider'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_assistance_by_written_agreement/2, gloss('provider and third party must specify assistance by written agreement'), source('celex:32024R1689/oj#art_25').
:- pred open_source_third_party_exception_applies/1, gloss('exception for third parties making tools etc. available under free and open-source licence'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_becomes_provider/2, gloss('product manufacturer becomes provider of high-risk AI system under a specific circumstance'), source('celex:32024R1689/oj#art_25').

% Paragraph 1
becomes_provider_under_circumstance(ThirdParty, puts_name_or_trademark(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ).

becomes_provider_under_circumstance(ThirdParty, makes_substantial_modification(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    substantial_modification(S).

becomes_provider_under_circumstance(ThirdParty, modifies_intended_purpose(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    ai_system(S),
    \+ high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    intended_purpose(S).

% Paragraph 2
initial_provider_ceases(InitialProvider) :-
    provider(InitialProvider),
    becomes_provider_under_circumstance(_, _).

must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    initial_provider_ceases(InitialProvider),
    becomes_provider_under_circumstance(NewProvider, _).

% Paragraph 3
product_manufacturer_becomes_provider(Manufacturer, placed_on_market_together(Manufacturer, S, Product)) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    placing_on_market(S).

product_manufacturer_becomes_provider(Manufacturer, put_into_service_under_name(Manufacturer, S, Product)) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    putting_into_service(S).

% Paragraph 4
must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_to_high_risk_system(ThirdParty, S),
    \+ open_source_third_party_exception_applies(ThirdParty).

open_source_third_party_exception_applies(ThirdParty) :-
    free_and_open_source_licence(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).

% Provenance
provenance(becomes_provider_under_circumstance/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_ceases/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(open_source_third_party_exception_applies/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_becomes_provider/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

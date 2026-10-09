% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b804a4e1db61654d8ad05922d33036ff94f302a581d84e2dae563b824decf531
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred acts_as_provider/2, gloss('actor considered provider of system'), source('celex:32024R1689/oj#art_25').
:- pred third_party_applies/1, gloss('actor is a third party'), source('celex:32024R1689/oj#art_25').
:- pred marks_name/2, gloss('actor marks system with name or trademark'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('actor makes substantial modification to system'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose/2, gloss('actor modifies intended purpose of system'), source('celex:32024R1689/oj#art_25').
:- pred placed_system/2, gloss('provider initially placed system on market or into service'), source('celex:32024R1689/oj#art_25').
:- pred specified_not_to_become_high_risk/2, gloss('provider specified system must not become high‑risk'), source('celex:32024R1689/oj#art_25').
:- pred must_not_be_provider/2, gloss('actor shall no longer be considered provider of system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate/2, gloss('initial provider shall cooperate with new provider'), source('celex:32024R1689/oj#art_25').
:- pred must_provide_information/2, gloss('initial provider shall provide information and technical access'), source('celex:32024R1689/oj#art_25').
:- pred safety_component/1, gloss('component fulfilling a safety function'), source('41').
:- pred product_manufacturer/1, gloss('entity manufacturing a product'), source('8').
:- pred places_on_market_with_name/2, gloss('actor places system on market under name or trademark'), source('celex:32024R1689/oj#art_25').
:- pred puts_into_service_with_name/2, gloss('actor puts system into service under name or trademark'), source('celex:32024R1689/oj#art_25').
:- pred supplies_system/2, gloss('third party supplies system, tools, services, components or processes'), source('celex:32024R1689/oj#art_25').
:- pred open_source_free_license_applies/1, gloss('third party makes tool etc. available under free open‑source licence'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_information/2, gloss('provider and third party shall specify necessary information and assistance'), source('celex:32024R1689/oj#art_25').

% Paragraph 1 – circumstances where distributor, importer, deployer or other third‑party are treated as providers
acts_as_provider(Actor, System) :-
    (distributor(Actor) ; importer(Actor) ; deployer(Actor) ; third_party_applies(Actor)),
    high_risk_ai_system(System),
    (   marks_name(Actor, System)
    ;   makes_substantial_modification(Actor, System)
    ;   modifies_intended_purpose(Actor, System)
    ).

% Paragraph 2 – initial provider loses provider status when a new provider arises
must_not_be_provider(InitialProvider, System) :-
    placed_system(InitialProvider, System),
    acts_as_provider(NewProvider, System),
    InitialProvider \= NewProvider,
    \+ specified_not_to_become_high_risk(InitialProvider, System).

must_cooperate(InitialProvider, NewProvider) :-
    placed_system(InitialProvider, System),
    acts_as_provider(NewProvider, System),
    InitialProvider \= NewProvider.

must_provide_information(InitialProvider, System) :-
    placed_system(InitialProvider, System),
    \+ specified_not_to_become_high_risk(InitialProvider, System).

% Paragraph 3 – product manufacturer is provider of safety‑component high‑risk AI systems
acts_as_provider(Manu, System) :-
    safety_component(System),
    product_manufacturer(Manu),
    (   places_on_market_with_name(Manu, System)
    ;   puts_into_service_with_name(Manu, System)
    ).

% Paragraph 4 – obligations of provider and third‑party to specify information, unless open‑source licence
must_specify_information(Provider, ThirdParty) :-
    provider(Provider),
    third_party_applies(ThirdParty),
    supplies_system(ThirdParty, System),
    high_risk_ai_system(System),
    \+ open_source_free_license_applies(ThirdParty).

% Provenance
provenance(acts_as_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_not_be_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_5').

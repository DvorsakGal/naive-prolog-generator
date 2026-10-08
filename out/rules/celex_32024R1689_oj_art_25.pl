% unit       : celex:32024R1689/oj#art_25
% title      : Responsibilities along the AI value chain
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : gpt-oss:120b-cloud
% prompt sha : 0f879bd2411b9c7c579396723fdc7987c1c7b9e77709763b75447828ecffdb67
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_25').
:- pred third_party/1, gloss('any distributor, importer, deployer or other third‑party'), source('celex:32024R1689/oj#art_25').
:- pred name_or_trademark_put_on/2, gloss('actor puts its name or trademark on the AI system'), source('celex:32024R1689/oj#art_25').
:- pred modify_intended_purpose/2, gloss('actor modifies the intended purpose of the AI system'), source('celex:32024R1689/oj#art_25').
:- pred condition_a/2, gloss('actor puts name or trademark on a high‑risk AI system already placed on market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred condition_b/2, gloss('actor makes a substantial modification to a high‑risk AI system already placed on market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred condition_c/2, gloss('actor modifies intended purpose so that a non‑high‑risk AI system becomes high‑risk'), source('celex:32024R1689/oj#art_25').
:- pred required_considered_provider/2, gloss('actor is to be regarded as a provider of the high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred prohibited_considered_provider/2, gloss('initial provider is no longer regarded as provider of that AI system'), source('celex:32024R1689/oj#art_25').
:- pred required_cooperate_and_provide_information/2, gloss('initial provider must cooperate and provide technical information'), source('celex:32024R1689/oj#art_25').
:- pred condition_a_pm/2, gloss('product manufacturer puts name or trademark on high‑risk AI system placed on market'), source('celex:32024R1689/oj#art_25').
:- pred condition_b_pm/2, gloss('product manufacturer puts name or trademark on high‑risk AI system put into service after product placed on market'), source('celex:32024R1689/oj#art_25').
:- pred required_specify_information/2, gloss('provider and third‑party must specify necessary information, capabilities and technical access'), source('celex:32024R1689/oj#art_25').
:- pred exempt_specify_information/1, gloss('obligation does not apply to third‑parties providing open‑source tools, services, processes or components other than general‑purpose AI models'), source('celex:32024R1689/oj#art_25').
:- pred third_party_supplier/1, gloss('third‑party that supplies tools, services, components or processes used in a high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred free_and_open_source/1, gloss('third‑party makes its offering available under a free and open‑source licence'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider/2, gloss('entity that initially placed the AI system on the market or put it into service'), source('celex:32024R1689/oj#art_25').

%--- Conditions for new providers (para 1 a‑c) ---------------------------------
condition_a(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    name_or_trademark_put_on(Actor, System).

condition_b(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    substantial_modification(System),
    high_risk_ai_system(System).

condition_c(Actor, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    modify_intended_purpose(Actor, System),
    high_risk_ai_system(System).

%--- Actors that become providers (para 1) ---------------------------------------
required_considered_provider(Actor, System) :-
    (distributor(Actor) ; importer(Actor) ; deployer(Actor) ; third_party(Actor)),
    high_risk_ai_system(System),
    (condition_a(Actor, System) ; condition_b(Actor, System) ; condition_c(Actor, System)).

%--- Loss of provider status for the initial provider (para 2) -----------------
prohibited_considered_provider(InitialProvider, System) :-
    initial_provider(InitialProvider, System),
    required_considered_provider(_, System).

required_cooperate_and_provide_information(InitialProvider, System) :-
    initial_provider(InitialProvider, System),
    required_considered_provider(_, System).

%--- Product manufacturer as provider for safety components (para 3) ------------
condition_a_pm(PM, System) :-
    (placing_on_market(System) ; putting_into_service(System)),
    name_or_trademark_put_on(PM, System).

condition_b_pm(PM, System) :-
    putting_into_service(System),
    name_or_trademark_put_on(PM, System).

required_considered_provider(PM, System) :-
    product_manufacturer(PM),
    high_risk_ai_system(System),
    (condition_a_pm(PM, System) ; condition_b_pm(PM, System)).

%--- Information provision obligations (para 4) ---------------------------------
required_specify_information(Provider, ThirdParty) :-
    provider(Provider),
    third_party_supplier(ThirdParty),
    \+ exempt_specify_information(ThirdParty).

exempt_specify_information(ThirdParty) :-
    free_and_open_source(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).

%--- Provenance -----------------------------------------------------------------
provenance(required_considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(condition_a/2, 'celex:32024R1689/oj#art_25').
provenance(condition_b/2, 'celex:32024R1689/oj#art_25').
provenance(condition_c/2, 'celex:32024R1689/oj#art_25').
provenance(prohibited_considered_provider/2, 'celex:32024R1689/oj#art_25').
provenance(required_cooperate_and_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(condition_a_pm/2, 'celex:32024R1689/oj#art_25').
provenance(condition_b_pm/2, 'celex:32024R1689/oj#art_25').
provenance(required_specify_information/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_specify_information/1, 'celex:32024R1689/oj#art_25').

%--- References -----------------------------------------------------------------
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

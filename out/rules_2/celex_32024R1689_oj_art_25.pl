% unit       : celex:32024R1689/oj#art_25
% title      : Responsibilities along the AI value chain
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : gpt-oss:120b-cloud
% prompt sha : 3c44cd1a47cbd39a1b9063ee27c47cfffe73c35ca3ee416483444f33a4cbf444
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred third_party/1, gloss('other third‑party'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_or_trademark_on/2, gloss('places name or trademark on AI system'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('makes substantial modification to AI system'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose/2, gloss('modifies intended purpose of AI system'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_of/2, gloss('initial provider of AI system'), source('celex:32024R1689/oj#art_25').
:- pred new_provider_of/2, gloss('new provider of AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_providers/2, gloss('must cooperate with new providers'), source('celex:32024R1689/oj#art_25').
:- pred must_provide_information/2, gloss('must provide necessary information and technical access'), source('celex:32024R1689/oj#art_25').
:- pred places_on_market_with_product_name/2, gloss('places AI system on market together with product under product‑manufacturer name'), source('celex:32024R1689/oj#art_25').
:- pred places_into_service_with_product_name/2, gloss('places AI system into service under product‑manufacturer name'), source('celex:32024R1689/oj#art_25').
:- pred third_party_supplier/1, gloss('third‑party that supplies tools, services, components or processes for a high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_information_by_written_agreement/2, gloss('must, by written agreement, specify information, capabilities, technical access and assistance'), source('celex:32024R1689/oj#art_25').
:- pred makes_publicly_accessible_under_fos_license/1, gloss('makes tools, services, components publicly accessible under a free and open‑source licence'), source('celex:32024R1689/oj#art_25').
:- pred exempt_third_party_open_source/1, gloss('exempt third‑party from information‑specification duty when providing open‑source tools not general‑purpose AI models'), source('celex:32024R1689/oj#art_25').

% 1. Distributors, importers, deployers or other third‑parties become providers when they
%    (a) put their name or trademark on a high‑risk AI system already placed on the market
%        or put into service;
%    (b) make a substantial modification to a high‑risk AI system that remains high‑risk;
%    (c) modify the intended purpose of an AI system so that it becomes high‑risk.
provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).

provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).

provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).

provider(P) :-
    third_party(P),
    high_risk_ai_system(S),
    (   puts_name_or_trademark_on(P,S)
    ;   makes_substantial_modification(P,S)
    ;   modifies_intended_purpose(P,S)
    ),
    (   placing_on_market(S)
    ;   putting_into_service(S)
    ).

% 2. Initial provider loses provider status for the specific AI system and must cooperate
%    and provide information to the new provider.
must_cooperate_with_new_providers(InitialProvider, System) :-
    initial_provider_of(InitialProvider, System),
    new_provider_of(_NewProvider, System).

must_provide_information(InitialProvider, System) :-
    initial_provider_of(InitialProvider, System),
    new_provider_of(_NewProvider, System).

% 3. Product manufacturers are considered providers of safety‑component high‑risk AI systems
%    when the AI system is placed on the market or put into service under the manufacturer’s name.
provider(P) :-
    product_manufacturer(P),
    high_risk_ai_system(S),
    safety_component(S),
    (   places_on_market_with_product_name(P,S)
    ;   places_into_service_with_product_name(P,S)
    ).

% 4. Providers and third‑party suppliers must, by written agreement, specify necessary information,
%    capabilities, technical access and assistance; exemption for open‑source tools not GP AI models.
must_specify_information_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    third_party_supplier(ThirdParty),
    third_party_supplier(ThirdParty),
    high_risk_ai_system(_S).

exempt_third_party_open_source(ThirdParty) :-
    third_party_supplier(ThirdParty),
    makes_publicly_accessible_under_fos_license(ThirdParty),
    \+ general_purpose_ai_model(_).

% Provenance
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_25').
provenance(places_on_market_with_product_name/2, 'celex:32024R1689/oj#art_25').
provenance(places_into_service_with_product_name/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_third_party_open_source/1, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').

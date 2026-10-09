% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3ace4802513fb17c4c825c34289f05e805779cc06c056666feb518c8a96ea083
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred third_party_applies/1, gloss('other third party not otherwise defined'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_on_high_risk_ai_system/2, gloss('actor puts name or trademark on a high‑risk AI system already on the market or in service'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification_high_risk_ai_system/2, gloss('actor makes a substantial modification to a high‑risk AI system already on the market or in service'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose_ai_system/2, gloss('actor modifies the intended purpose of an AI system, causing it to become high‑risk'), source('celex:32024R1689/oj#art_25').
:- pred must_be_provider/2, gloss('actor is to be considered a provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_subject_to_provider_obligations/2, gloss('actor is subject to the obligations of a provider'), source('celex:32024R1689/oj#art_25').
:- pred circumstances_par_1_applies/1, gloss('one of the circumstances listed in paragraph 1 applies to the AI system'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_of/2, gloss('provider that initially placed the AI system on the market or put it into service'), source('celex:32024R1689/oj#art_25').
:- pred new_provider_of/2, gloss('actor that becomes a new provider of the AI system under paragraph 1'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_providers/2, gloss('initial provider shall closely cooperate with new providers'), source('celex:32024R1689/oj#art_25').
:- pred must_make_available_information/2, gloss('initial provider shall make available the necessary information'), source('celex:32024R1689/oj#art_25').
:- pred must_provide_technical_access/2, gloss('initial provider shall provide the reasonably expected technical access and assistance'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_specified_no_change/2, gloss('initial provider has clearly specified that its AI system is not to be changed into a high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred placed_on_market_under_name_of_product_manufacturer/2, gloss('high‑risk AI system placed on the market together with the product under the product manufacturer’s name or trademark'), source('celex:32024R1689/oj#art_25').
:- pred put_into_service_under_name_of_product_manufacturer/2, gloss('high‑risk AI system put into service under the product manufacturer’s name or trademark after the product has been placed on the market'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_information_and_assistance/2, gloss('provider or third‑party shall, by written agreement, specify necessary information, capabilities, technical access and other assistance'), source('celex:32024R1689/oj#art_25').
:- pred supplies_for_high_risk_ai_system/2, gloss('third‑party supplies tools, services, components or processes used or integrated in a high‑risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred free_open_source_licence/2, gloss('third‑party makes the supplied tool, service, component or process available to the public under a free and open‑source licence'), source('celex:32024R1689/oj#art_25').

must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    puts_name_on_high_risk_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).

must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    makes_substantial_modification_high_risk_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).

must_be_provider(Actor, high_risk_ai_system(S)) :-
    (distributor(Actor); importer(Actor); deployer(Actor); third_party_applies(Actor)),
    modifies_intended_purpose_ai_system(Actor, S),
    (placing_on_market(S); putting_into_service(S)),
    high_risk_ai_system(S).

must_subject_to_provider_obligations(Actor, high_risk_ai_system(S)) :-
    must_be_provider(Actor, high_risk_ai_system(S)).

circumstances_par_1_applies(S) :-
    puts_name_on_high_risk_ai_system(_, S).

circumstances_par_1_applies(S) :-
    makes_substantial_modification_high_risk_ai_system(_, S).

circumstances_par_1_applies(S) :-
    modifies_intended_purpose_ai_system(_, S).

new_provider_of(S, Actor) :-
    must_be_provider(Actor, high_risk_ai_system(S)).

no_longer_provider(InitialProvider, S) :-
    initial_provider_of(S, InitialProvider),
    circumstances_par_1_applies(S),
    \+ initial_provider_specified_no_change(InitialProvider, S).

must_cooperate_with_new_providers(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S),
    new_provider_of(S, _NewProvider).

must_make_available_information(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S).

must_provide_technical_access(InitialProvider, S) :-
    no_longer_provider(InitialProvider, S).

must_be_provider(ProductManufacturer, high_risk_ai_system(S)) :-
    product_manufacturer(ProductManufacturer),
    safety_component_ai_system(S),
    union_harmonisation_legislation_applies(_),
    ( placed_on_market_under_name_of_product_manufacturer(ProductManufacturer, S)
    ; put_into_service_under_name_of_product_manufacturer(ProductManufacturer, S) ).

must_subject_to_provider_obligations(ProductManufacturer, high_risk_ai_system(S)) :-
    must_be_provider(ProductManufacturer, high_risk_ai_system(S)).

must_specify_information_and_assistance(Actor, high_risk_ai_system(S)) :-
    (provider(Actor); third_party_applies(Actor)),
    supplies_for_high_risk_ai_system(Actor, S),
    \+ (free_open_source_licence(Actor, S), \+ general_purpose_ai_model(S)).

provenance(must_be_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_subject_to_provider_obligations/2, 'celex:32024R1689/oj#art_25').
provenance(circumstances_par_1_applies/1, 'celex:32024R1689/oj#art_25').
provenance(new_provider_of/2, 'celex:32024R1689/oj#art_25').
provenance(no_longer_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_information_and_assistance/2, 'celex:32024R1689/oj#art_25').

references('celex:32024R1689/oj', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_1', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_2', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_3', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#anx_1/sec_1', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25/par_4', 'celex:32024R1689/oj#art_25').

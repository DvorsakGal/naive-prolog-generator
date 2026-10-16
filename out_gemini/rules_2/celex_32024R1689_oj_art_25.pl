% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0059863e48ffbf88c71a3a30814933fd50ef98cf971856b8a11a6cf11d2724bf
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_25').
:- pred provider_of_system/2, gloss('entity is considered a provider of an AI system'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_or_trademark_on/2, gloss('entity puts their name or trademark on an AI system'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('entity makes a substantial modification to an AI system'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose_to_high_risk/2, gloss('entity modifies intended purpose of an AI system such that it becomes high-risk'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider_of_system/2, gloss('entity initially placed or put into service the AI system'), source('celex:32024R1689/oj#art_25').
:- pred excluded_change_to_high_risk/2, gloss('initial provider clearly specified the system is not to be changed into high-risk'), source('celex:32024R1689/oj#art_25').
:- pred annex_1_section_a_product/1, gloss('product covered by legislation in Annex I Section A'), source('celex:32024R1689/oj#art_25').
:- pred safety_component_of_product/2, gloss('AI system is a safety component of a product'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_of/2, gloss('entity is manufacturer of a product'), source('celex:32024R1689/oj#art_25').
:- pred placed_on_market_together_under_name/3, gloss('AI system is placed on market together with product under manufacturer name'), source('celex:32024R1689/oj#art_25').
:- pred put_into_service_under_name_after_product_market/3, gloss('AI system is put into service under manufacturer name after product placed on market'), source('celex:32024R1689/oj#art_25').
:- pred supplies_component_for_high_risk_ai/2, gloss('third party supplies tools, services, components or processes for high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred exempt_open_source_supplier/1, gloss('third party makes components accessible under free and open source licence'), source('celex:32024R1689/oj#art_25').
:- pred permitted_develop_model_terms/2, gloss('AI Office may develop voluntary model terms for contracts'), source('celex:32024R1689/oj#art_25').

% Paragraph 1(a): Third party puts name or trademark on high-risk AI system already placed on market or put into service
provider_of_system(Entity, System) :-
    high_risk_ai_system(System),
    puts_name_or_trademark_on(Entity, System).

% Paragraph 1(b): Third party makes substantial modification such that it remains high-risk
provider_of_system(Entity, System) :-
    high_risk_ai_system(System),
    makes_substantial_modification(Entity, System).

% Paragraph 1(c): Third party modifies intended purpose so that it becomes high-risk
provider_of_system(Entity, System) :-
    modifies_intended_purpose_to_high_risk(Entity, System).

% Any entity qualifying under Paragraph 1 is a provider and must comply with Article 16
provider(Entity) :-
    provider_of_system(Entity, System),
    high_risk_ai_system(System).

must_comply(Entity, obligations_article_16(System)) :-
    provider_of_system(Entity, System),
    high_risk_ai_system(System).

% Paragraph 2: Initial provider must cooperate and assist new provider unless excluded
must_comply(InitialProvider, cooperate_and_provide_assistance(NewProvider, System)) :-
    initial_provider_of_system(InitialProvider, System),
    provider_of_system(NewProvider, System),
    InitialProvider \= NewProvider,
    \+ excluded_change_to_high_risk(InitialProvider, System).

% Paragraph 3: Product manufacturer considered provider of safety component AI system
provider_of_system(Manufacturer, System) :-
    high_risk_ai_system(System),
    safety_component_of_product(System, Product),
    annex_1_section_a_product(Product),
    product_manufacturer_of(Manufacturer, Product),
    placed_on_market_together_under_name(System, Product, Manufacturer).

provider_of_system(Manufacturer, System) :-
    high_risk_ai_system(System),
    safety_component_of_product(System, Product),
    annex_1_section_a_product(Product),
    product_manufacturer_of(Manufacturer, Product),
    put_into_service_under_name_after_product_market(System, Product, Manufacturer).

% Paragraph 4: Written agreement specifying information and assistance between provider and upstream supplier
must_comply(Provider, specify_by_written_agreement(ThirdParty, System)) :-
    provider_of_system(Provider, System),
    high_risk_ai_system(System),
    supplies_component_for_high_risk_ai(ThirdParty, System),
    \+ exempt_open_source_supplier(ThirdParty).

must_comply(ThirdParty, specify_by_written_agreement(Provider, System)) :-
    provider_of_system(Provider, System),
    high_risk_ai_system(System),
    supplies_component_for_high_risk_ai(ThirdParty, System),
    \+ exempt_open_source_supplier(ThirdParty).

% Paragraph 4: AI Office may develop voluntary model terms
permitted_develop_model_terms(Office, model_terms_value_chain_contracts) :-
    ai_office(Office).

% Provenance facts
provenance(provider_of_system/2, 'celex:32024R1689/oj#art_25').
provenance(provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_comply/2, 'celex:32024R1689/oj#art_25').
provenance(permitted_develop_model_terms/2, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').

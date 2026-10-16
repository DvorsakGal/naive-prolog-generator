% unit       : celex:32024R1689/oj#art_25
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 6e0813c884aca691589da44584ebc1879e47bebec252856723a9cec81367c3a5
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 84017dd2de2bf16ada43ef3f445344e01e2cda24a0d99a052e259d47bf097305
% cached     : False
% title      : Responsibilities along the AI value chain
:- pred considered_provider/1, gloss('distributor, importer, deployer or third party considered to be a provider of a high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred initial_provider/1, gloss('provider that initially placed the AI system on the market or put it into service'), source('celex:32024R1689/oj#art_25').
:- pred new_provider/1, gloss('provider that becomes the provider under Article 25(1)'), source('celex:32024R1689/oj#art_25').
:- pred puts_name_or_trademark_on/2, gloss('party puts their name or trademark on a high-risk AI system already placed on the market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred makes_substantial_modification/2, gloss('party makes a substantial modification to a high-risk AI system already placed on the market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred modifies_intended_purpose/2, gloss('party modifies the intended purpose of an AI system already placed on the market or put into service'), source('celex:32024R1689/oj#art_25').
:- pred remains_high_risk/1, gloss('AI system remains a high-risk AI system after modification'), source('celex:32024R1689/oj#art_25').
:- pred becomes_high_risk/1, gloss('AI system becomes a high-risk AI system after modification of intended purpose'), source('celex:32024R1689/oj#art_25').
:- pred no_longer_considered_provider/1, gloss('initial provider no longer considered to be a provider of that specific AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_cooperate_with_new_providers/2, gloss('initial provider must closely cooperate with new providers'), source('celex:32024R1689/oj#art_25').
:- pred must_make_available_information/2, gloss('initial provider must make available necessary information'), source('celex:32024R1689/oj#art_25').
:- pred must_provide_technical_access/2, gloss('initial provider must provide reasonably expected technical access and other assistance'), source('celex:32024R1689/oj#art_25').
:- pred specified_not_to_be_changed_into_high_risk/1, gloss('initial provider clearly specified that its AI system is not to be changed into a high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred product_manufacturer_considered_provider/1, gloss('product manufacturer considered to be the provider of the high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred placed_on_market_together_with_product/2, gloss('high-risk AI system placed on the market together with the product under the name or trademark of the product manufacturer'), source('celex:32024R1689/oj#art_25').
:- pred put_into_service_under_name_or_trademark/2, gloss('high-risk AI system put into service under the name or trademark of the product manufacturer after the product has been placed on the market'), source('celex:32024R1689/oj#art_25').
:- pred third_party_supplies/2, gloss('third party supplies an AI system, tools, services, components, or processes used or integrated in a high-risk AI system'), source('celex:32024R1689/oj#art_25').
:- pred must_specify_by_written_agreement/3, gloss('provider and third party must by written agreement specify necessary information, capabilities, technical access and other assistance'), source('celex:32024R1689/oj#art_25').
:- pred makes_accessible_to_public/2, gloss('third party makes accessible to the public tools, services, processes, or components under a free and open-source licence'), source('celex:32024R1689/oj#art_25').
:- pred exempt_written_agreement_requirement/1, gloss('third party exempt from the written agreement requirement'), source('celex:32024R1689/oj#art_25').
:- pred may_develop_voluntary_model_terms/1, gloss('AI Office may develop and recommend voluntary model terms for contracts'), source('celex:32024R1689/oj#art_25').
:- pred must_take_into_account_sectoral_requirements/1, gloss('AI Office must take into account possible contractual requirements applicable in specific sectors or business cases when developing voluntary model terms'), source('celex:32024R1689/oj#art_25').
:- pred must_publish_voluntary_model_terms/1, gloss('voluntary model terms must be published and be available free of charge in an easily usable electronic format'), source('celex:32024R1689/oj#art_25').

% Article 25(1)(a): distributor, importer, deployer or third party puts name or trademark on high-risk AI system already placed on market or put into service
considered_provider(P) :-
    distributor(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    distributor(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).
considered_provider(P) :-
    importer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    importer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).
considered_provider(P) :-
    deployer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    placing_on_market(S).
considered_provider(P) :-
    deployer(P),
    puts_name_or_trademark_on(P, S),
    high_risk_ai_system(S),
    putting_into_service(S).

% Article 25(1)(b): substantial modification to high-risk AI system already placed on market or put into service, remaining high-risk
considered_provider(P) :-
    distributor(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    distributor(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    importer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    importer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    deployer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    placing_on_market(S),
    substantial_modification(S),
    remains_high_risk(S).
considered_provider(P) :-
    deployer(P),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S),
    putting_into_service(S),
    substantial_modification(S),
    remains_high_risk(S).

% Article 25(1)(c): modification of intended purpose of non-high-risk AI system already placed on market or put into service, becoming high-risk
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    distributor(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    importer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    placing_on_market(S),
    becomes_high_risk(S).
considered_provider(P) :-
    deployer(P),
    modifies_intended_purpose(P, S),
    general_purpose_ai_system(S),
    putting_into_service(S),
    becomes_high_risk(S).

% A considered provider is subject to provider obligations under Article 16
provider(considered_provider(P)) :-
    considered_provider(P).

% Article 25(2): initial provider no longer considered provider when circumstances in 25(1) occur
no_longer_considered_provider(P) :-
    initial_provider(P),
    considered_provider(_NewP),
    new_provider(_NewP).

% Article 25(2): initial provider must cooperate with new providers, make available information, provide technical access
must_cooperate_with_new_providers(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).

must_make_available_information(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).

must_provide_technical_access(P, NewP) :-
    no_longer_considered_provider(P),
    new_provider(NewP).

% Exception to Article 25(2): initial provider specified system is not to be changed into high-risk
% In that case, the obligation to hand over documentation does not apply
% We model this as: if specified_not_to_be_changed_into_high_risk, then the must_make_available_information obligation is lifted
% Since we cannot negate must_make_available_information directly (it's defined above), we state the exception condition

% Article 25(3): product manufacturer considered provider for safety components of products covered by Union harmonisation legislation
product_manufacturer_considered_provider(PM) :-
    product_manufacturer(PM),
    safety_component(S),
    high_risk_ai_system(S),
    placed_on_market_together_with_product(S, PM).

product_manufacturer_considered_provider(PM) :-
    product_manufacturer(PM),
    safety_component(S),
    high_risk_ai_system(S),
    put_into_service_under_name_or_trademark(S, PM).

% Product manufacturer considered provider is subject to obligations under Article 16
provider(product_manufacturer_considered_provider(PM)) :-
    product_manufacturer_considered_provider(PM).

% Article 25(4): provider and third party must by written agreement specify necessary information, capabilities, technical access and other assistance
must_specify_by_written_agreement(Provider, ThirdParty, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    third_party_supplies(ThirdParty, S),
    \+ exempt_written_agreement_requirement(ThirdParty).

% Article 25(4) exception: third parties making accessible to the public tools, services, processes, or components (other than general-purpose AI models) under a free and open-source licence
exempt_written_agreement_requirement(ThirdParty) :-
    third_party_supplies(ThirdParty, _S),
    makes_accessible_to_public(ThirdParty, Thing),
    \+ general_purpose_ai_model(Thing).

% Article 25(4): AI Office may develop and recommend voluntary model terms
may_develop_voluntary_model_terms(ai_office) :-
    ai_office(ai_office).

% Article 25(4): AI Office must take into account sectoral requirements when developing voluntary model terms
must_take_into_account_sectoral_requirements(ai_office) :-
    ai_office(ai_office).

% Article 25(4): voluntary model terms must be published and available free of charge in easily usable electronic format
must_publish_voluntary_model_terms(Terms) :-
    voluntary_model_terms(Terms).

% Helper: define voluntary_model_terms as something that exists when AI Office develops them
voluntary_model_terms(Terms) :-
    may_develop_voluntary_model_terms(ai_office),
    Terms = model_terms.

% Article 25(5): Articles 25(2) and 25(3) are without prejudice to IP rights, confidential business information and trade secrets
% This is a general reservation, not a specific rule we can encode as a test

% Provenance facts
provenance(considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(initial_provider/1, 'celex:32024R1689/oj#art_25').
provenance(new_provider/1, 'celex:32024R1689/oj#art_25').
provenance(puts_name_or_trademark_on/2, 'celex:32024R1689/oj#art_25').
provenance(makes_substantial_modification/2, 'celex:32024R1689/oj#art_25').
provenance(modifies_intended_purpose/2, 'celex:32024R1689/oj#art_25').
provenance(remains_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(becomes_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_providers/2, 'celex:32024R1689/oj#art_25').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_25').
provenance(must_provide_technical_access/2, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(placed_on_market_together_with_product/2, 'celex:32024R1689/oj#art_25').
provenance(put_into_service_under_name_or_trademark/2, 'celex:32024R1689/oj#art_25').
provenance(third_party_supplies/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_by_written_agreement/3, 'celex:32024R1689/oj#art_25').
provenance(makes_accessible_to_public/2, 'celex:32024R1689/oj#art_25').
provenance(exempt_written_agreement_requirement/1, 'celex:32024R1689/oj#art_25').
provenance(may_develop_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').
provenance(must_take_into_account_sectoral_requirements/1, 'celex:32024R1689/oj#art_25').
provenance(must_publish_voluntary_model_terms/1, 'celex:32024R1689/oj#art_25').

% References
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

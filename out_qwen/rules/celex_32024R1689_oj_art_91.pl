% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 17e6a617640282942afc4ccc8f8cc7e5cb43474c99d9761f1646c276e5560b6e
% cached     : False
% title      : Power to request documentation and information
:- pred may_request_documentation/2, gloss('Commission may request provider to provide documentation or information'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before requesting information'), source('celex:32024R1689/oj#art_91').
:- pred may_issue_request_for_scientific_panel/2, gloss('Commission may issue request for information upon substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_information/2, gloss('Provider or representative must supply requested information'), source('celex:32024R1689/oj#art_91').
:- pred request_for_information_applies/1, gloss('Request for information meets formal requirements of Article 91(4)'), source('celex:32024R1689/oj#art_91').

may_request_documentation(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M).

may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M).

may_issue_request_for_scientific_panel(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M),
    duly_substantiated_request_from_scientific_panel,
    access_necessary_and_proportionate_for_scientific_panel_tasks.

request_for_information_applies(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_required_information(Request),
    sets_period_for_provision(Request),
    indicates_fines_for_incorrect_information(Request).

must_supply_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(Provider, _M),
    request_for_information_applies(Request).

must_supply_information(Representative, Request) :-
    authorised_representative(Representative),
    provider(_P),
    general_purpose_ai_model(_M),
    provider_of_general_purpose_ai_model(_P, _M),
    represents(Representative, _P),
    request_for_information_applies(Request).

provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_applies/1, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

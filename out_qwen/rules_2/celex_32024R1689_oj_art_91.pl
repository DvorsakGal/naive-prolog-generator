% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : ddb2964c498310f8e79e3358df4fc47f23c0433e6eff3613b6e56a832d5ea38a
% cached     : False
% title      : Power to request documentation and information
:- pred may_request_documentation_or_information/2, gloss('Commission may request provider of general-purpose AI model to provide documentation or information'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before sending request'), source('celex:32024R1689/oj#art_91').
:- pred may_issue_request_on_scientific_panel_request/2, gloss('Commission may issue request for information upon duly substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred request_for_information_meets_requirements/1, gloss('request for information states legal basis, purpose, required information, period and fines'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_requested_information/2, gloss('provider or representative must supply information requested by Commission'), source('celex:32024R1689/oj#art_91').

may_request_documentation_or_information(commission, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    necessary_for_compliance_assessment(Provider).

may_initiate_structured_dialogue(ai_office, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    before_request_for_information(Provider).

may_issue_request_on_scientific_panel_request(commission, Provider) :-
    general_purpose_ai_model_provider(Provider, _Model),
    duly_substantiated_request_from_scientific_panel(Provider),
    necessary_and_proportionate_for_scientific_panel_tasks(Provider).

request_for_information_meets_requirements(Request) :-
    states_legal_basis(Request),
    states_purpose(Request),
    specifies_required_information(Request),
    sets_period_for_provision(Request),
    indicates_fines_for_incorrect_information(Request).

must_supply_requested_information(Provider, Request) :-
    general_purpose_ai_model_provider(Provider, _Model),
    request_for_information_meets_requirements(Request).

must_supply_requested_information(Representative, Request) :-
    authorised_representative(Representative),
    represents_general_purpose_ai_model_provider(Representative, _Provider),
    request_for_information_meets_requirements(Request).

provenance(may_request_documentation_or_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_on_scientific_panel_request/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information_meets_requirements/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

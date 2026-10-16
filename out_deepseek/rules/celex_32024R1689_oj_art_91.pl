% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6dd54be2129c3967fc33a7aeafd987e3f2de0af0372a8f9abac10d6af5763f40
% cached     : False
% title      : Power to request documentation and information
:- pred must_supply_information/2, gloss('entity obliged to supply requested information, what is supplied'), source('celex:32024R1689/oj#art_91').
:- pred may_request_documentation/2, gloss('entity that may request documentation, provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information/2, gloss('entity that may request information, provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('entity that may initiate dialogue, provider of general-purpose AI model'), source('celex:32024R1689/oj#art_91').
:- pred request_for_information/1, gloss('request for information under Article 91'), source('celex:32024R1689/oj#art_91').
:- pred request_states_legal_basis/1, gloss('request states its legal basis'), source('celex:32024R1689/oj#art_91').
:- pred request_states_purpose/1, gloss('request states its purpose'), source('celex:32024R1689/oj#art_91').
:- pred request_specifies_information/1, gloss('request specifies what information is required'), source('celex:32024R1689/oj#art_91').
:- pred request_sets_period/1, gloss('request sets a period for providing information'), source('celex:32024R1689/oj#art_91').
:- pred request_indicates_fines/1, gloss('request indicates fines for incorrect, incomplete or misleading information'), source('celex:32024R1689/oj#art_91').
:- pred authorised_to_supply_information/2, gloss('person authorised to supply information on behalf of provider'), source('celex:32024R1689/oj#art_91').

% Paragraph 1
may_request_documentation(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

may_request_information(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

% Paragraph 2
may_initiate_structured_dialogue(ai_office, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

% Paragraph 3
may_request_information(commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_from_scientific_panel(Provider).

request_from_scientific_panel(Provider) :-
    % The scientific panel is not defined in the frozen signature; we represent it as a term.
    % The condition is that the request is duly substantiated, necessary and proportionate.
    % We leave the substantiation, necessity and proportionality as predicates to be defined elsewhere.
    duly_substantiated_request(scientific_panel, Provider),
    necessary_for_scientific_panel_tasks(Provider),
    proportionate_for_scientific_panel_tasks(Provider).

% Paragraph 4
request_for_information(R) :-
    request_states_legal_basis(R),
    request_states_purpose(R),
    request_specifies_information(R),
    request_sets_period(R),
    request_indicates_fines(R).

% Paragraph 5
must_supply_information(Provider, information_requested) :-
    provider(Provider),
    general_purpose_ai_model(Provider).

must_supply_information(Representative, information_requested) :-
    authorised_representative(Representative),
    represents(Representative, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider).

must_supply_information(Person, information_requested) :-
    authorised_to_supply_information(Person, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider).

authorised_to_supply_information(Person, Provider) :-
    legal_person_representative(Person, Provider).

authorised_to_supply_information(Lawyer, Provider) :-
    lawyer_duly_authorised(Lawyer, Provider).

% Provenance
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(request_for_information/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(authorised_to_supply_information/2, 'celex:32024R1689/oj#art_91').

% References
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

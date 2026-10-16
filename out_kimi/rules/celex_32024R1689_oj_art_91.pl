% unit       : celex:32024R1689/oj#art_91
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 4ff05fccd1b747511134fddb5b7a8a67ec6fd05d43f8907d92683b99751135f1
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3a24a334ea2ca1da8bdaedeb1541fdf3eec3d6d2d40aa0282e197eb73d683462
% cached     : False
% title      : Power to request documentation and information
:- pred must_provide_documentation/2, gloss('provider must provide documentation to the Commission'), source('celex:32024R1689/oj#art_91').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_91').
:- pred may_request_information_scientific_panel/2, gloss('Commission may request information on substantiated request from scientific panel'), source('celex:32024R1689/oj#art_91').
:- pred required_request_contents/1, gloss('request for information must contain specified contents'), source('celex:32024R1689/oj#art_91').
:- pred must_supply_information/2, gloss('provider or representative must supply requested information'), source('celex:32024R1689/oj#art_91').
:- pred remains_responsible/2, gloss('client remains responsible for information supplied by lawyer'), source('celex:32024R1689/oj#art_91').

must_provide_documentation(Commission, provider(P)) :-
    ai_office(Commission),
    general_purpose_ai_model_provider(P),
    documentation_drawn_up(P, art_53_or_55).

may_initiate_structured_dialogue(AiOffice, provider(P)) :-
    ai_office(AiOffice),
    general_purpose_ai_model_provider(P),
    before(request_information(Commission, provider(P), _)).

may_request_information_scientific_panel(Commission, provider(P)) :-
    ai_office(Commission),
    general_purpose_ai_model_provider(P),
    substantiated_request(scientific_panel, Commission, access_necessary_and_proportionate(fulfilment_tasks(art_68_par_2))).

required_request_contents(request(Commission, Provider, Info)) :-
    ai_office(Commission),
    operator(Provider),
    states_legal_basis(request(Commission, Provider, Info)),
    states_purpose(request(Commission, Provider, Info)),
    specifies_information_required(request(Commission, Provider, Info), Info),
    sets_period_for_provision(request(Commission, Provider, Info), _Period),
    indicates_fines(request(Commission, Provider, Info), art_101).

must_supply_information(Provider, request(Commission, Provider, Info)) :-
    general_purpose_ai_model_provider(Provider),
    ai_office(Commission),
    requested(Commission, Provider, Info).

must_supply_information(representative(R), request(Commission, provider(P), Info)) :-
    representative_of(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).

must_supply_information(authorised_representative(R), request(Commission, provider(P), Info)) :-
    authorised_representative(R),
    represents(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).

must_supply_information(legal_person_representative(R), request(Commission, provider(P), Info)) :-
    legal_person_or_company_or_firm(provider(P)),
    authorised_by_law_or_statutes(R, provider(P)),
    general_purpose_ai_model_provider(P),
    ai_office(Commission),
    requested(Commission, provider(P), Info).

must_supply_information(lawyer(L), request(Commission, Client, Info)) :-
    lawyer(L),
    authorised_to_act(L, Client),
    general_purpose_ai_model_provider(Client),
    ai_office(Commission),
    requested(Commission, Client, Info).

remains_responsible(Client, information_supplied_by(lawyer(L), request(Commission, Client, Info))) :-
    lawyer(L),
    authorised_to_act(L, Client),
    general_purpose_ai_model_provider(Client),
    ai_office(Commission),
    requested(Commission, Client, Info),
    (incomplete(information_supplied_by(L, request(Commission, Client, Info)));
     incorrect(information_supplied_by(L, request(Commission, Client, Info)));
     misleading(information_supplied_by(L, request(Commission, Client, Info)))).

provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(required_request_contents/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/art_91').
provenance(remains_responsible/2, 'celex:32024R1689/oj#art_91').

references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

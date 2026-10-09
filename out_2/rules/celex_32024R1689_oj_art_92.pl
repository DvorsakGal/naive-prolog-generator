% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e2a2cf8bc66409e8a92ca69d2b45d05de502a143867e0c155f34f2af791aa176
% cached     : False
% title      : Power to conduct evaluations
:- pred independent_expert/1, gloss('independent expert appointed for evaluation'), source('celex:32024R1689/oj#art_92').
:- pred provider_of/2, gloss('provider of a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred represents/2, gloss('person authorised to represent a provider'), source('celex:32024R1689/oj#art_92').
:- pred implementing_act/1, gloss('implementing act adopted by the Commission'), source('celex:32024R1689/oj#art_92').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_92').

permitted_conduct_evaluation(conduct_evaluation(AIOffice, Model)) :-
    ai_office(AIOffice),
    general_purpose_ai_model(Model).

permitted_appoint_independent_expert(appoint_independent_expert(Commission, Expert)) :-
    commission(Commission),
    independent_expert(Expert).

must_meet(Expert, criteria(art_68_par_2)) :-
    independent_expert(Expert).

permitted_request_access(request_access(Commission, Model)) :-
    commission(Commission),
    general_purpose_ai_model(Model).

must_state(Commission, access_request_details) :-
    commission(Commission).

must_set(Commission, access_provision_period) :-
    commission(Commission).

must_comply(Commission, fines(art_101)) :-
    commission(Commission).

must_supply_information(Provider, information_requested) :-
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).

must_supply_information(Rep, information_requested) :-
    authorised_representative(Rep),
    represents(Rep, Provider),
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).

must_adopt(Commission, implementing_act(Act)) :-
    commission(Commission),
    implementing_act(Act).

must_adopt_in_accordance(Act, examination_procedure(art_98_par_2)) :-
    implementing_act(Act).

permitted_initiate_structured_dialogue(structured_dialogue(AIOffice, Provider)) :-
    ai_office(AIOffice),
    provider_of(Model, Provider),
    general_purpose_ai_model(Model).

provenance(permitted_conduct_evaluation/1, 'celex:32024R1689/oj#art_92').
provenance(permitted_appoint_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(must_meet/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_request_access/1, 'celex:32024R1689/oj#art_92').
provenance(must_state/2, 'celex:32024R1689/oj#art_92').
provenance(must_set/2, 'celex:32024R1689/oj#art_92').
provenance(must_comply/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_in_accordance/2, 'celex:32024R1689/oj#art_92').
provenance(permitted_initiate_structured_dialogue/1, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

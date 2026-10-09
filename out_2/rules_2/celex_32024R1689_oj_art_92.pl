% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6a419833a8f9487d45ca290bc8daba25c8f0b2841931af7f66be1a7b3ecc2a80
% cached     : False
% title      : Power to conduct evaluations
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_92').
:- pred independent_expert/1, gloss('expert appointed independently to carry out evaluations'), source('celex:32024R1689/oj#art_92').
:- pred conduct_evaluations/2, gloss('AI Office may conduct evaluations of a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred appoint_independent_expert/2, gloss('Commission may appoint independent experts to carry out evaluations'), source('celex:32024R1689/oj#art_92').
:- pred must_meet_criteria/2, gloss('Independent expert must meet the criteria set out in art 68 par 2'), source('celex:32024R1689/oj#art_92').
:- pred request_access/2, gloss('Commission may request access to a general‑purpose AI model'), source('celex:32024R1689/oj#art_92').
:- pred must_state_legal_basis/2, gloss('Request must state the legal basis'), source('celex:32024R1689/oj#art_92').
:- pred must_state_purpose/2, gloss('Request must state the purpose'), source('celex:32024R1689/oj#art_92').
:- pred must_state_reason/2, gloss('Request must state the reasons'), source('celex:32024R1689/oj#art_92').
:- pred must_set_period/2, gloss('Request must set the period for providing access'), source('celex:32024R1689/oj#art_92').
:- pred must_include_fines/2, gloss('Request must include the fines for failure to provide access'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_information/2, gloss('Provider or its representative must supply the requested information'), source('celex:32024R1689/oj#art_92').
:- pred must_provide_access/2, gloss('Authorized representative must provide access on behalf of the provider'), source('celex:32024R1689/oj#art_92').
:- pred initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with the provider'), source('celex:32024R1689/oj#art_92').

commission(commission).

conduct_evaluations(Actor, Model) :-
    ai_office(Actor),
    general_purpose_ai_model(Model).

appoint_independent_expert(Actor, Expert) :-
    commission(Actor),
    independent_expert(Expert).

must_meet_criteria(Expert, criteria_art_68_par_2) :-
    independent_expert(Expert).

request_access(Actor, Model) :-
    commission(Actor),
    general_purpose_ai_model(Model).

must_state_legal_basis(Actor, request) :-
    commission(Actor).

must_state_purpose(Actor, request) :-
    commission(Actor).

must_state_reason(Actor, request) :-
    commission(Actor).

must_set_period(Actor, request) :-
    commission(Actor).

must_include_fines(Actor, request) :-
    commission(Actor).

must_supply_information(Provider, request) :-
    provider(Provider).

must_provide_access(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).

initiate_structured_dialogue(Actor, Provider) :-
    ai_office(Actor),
    provider(Provider).

provenance(commission/1, 'celex:32024R1689/oj#art_92').
provenance(independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(conduct_evaluations/2, 'celex:32024R1689/oj#art_92').
provenance(appoint_independent_expert/2, 'celex:32024R1689/oj#art_92').
provenance(must_meet_criteria/2, 'celex:32024R1689/oj#art_92').
provenance(request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_legal_basis/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_purpose/2, 'celex:32024R1689/oj#art_92').
provenance(must_state_reason/2, 'celex:32024R1689/oj#art_92').
provenance(must_set_period/2, 'celex:32024R1689/oj#art_92').
provenance(must_include_fines/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_92').
provenance(initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

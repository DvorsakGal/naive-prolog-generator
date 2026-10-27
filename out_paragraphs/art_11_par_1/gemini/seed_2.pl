:- module(technical_documentation_high_risk_ai, [
    required_technical_documentation/1,
    must_draw_up/2,
    must_keep_up_to_date/2,
    demonstrates_compliance_chapter_three/1,
    provides_assessment_information/1,
    contains_minimum_annex_four_elements/1,
    permitted_simplified_manner/2,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

% Inputs (external predicates not defined within this module)
:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic provider/1.
:- dynamic places_on_market/2.
:- dynamic puts_into_service/2.
:- dynamic small_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic opts_simplified_manner/2.
:- dynamic form_referred_to_in_article_eleven_one/1.

% Requirements on technical documentation for high-risk AI systems
required_technical_documentation(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% The technical documentation shall be drawn up before the system is placed on the market or put into service
must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System),
    places_on_market(Provider, System).

must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System),
    puts_into_service(Provider, System).

% The technical documentation shall be kept up-to-date
must_keep_up_to_date(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System).

% It shall demonstrate compliance with Chapter 3 requirements
demonstrates_compliance_chapter_three(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% It shall provide authorities and notified bodies with the necessary information
provides_assessment_information(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% It shall contain, at a minimum, the elements set out in Annex IV
contains_minimum_annex_four_elements(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% SMEs, including start-ups, may provide elements in a simplified manner
permitted_simplified_manner(Enterprise, technical_documentation(System)) :-
    ai_system(System),
    high_risk(System),
    small_medium_enterprise(Enterprise).

permitted_simplified_manner(Enterprise, technical_documentation(System)) :-
    ai_system(System),
    high_risk(System),
    start_up(Enterprise).

% The Commission shall establish a simplified technical documentation form
must_establish(Commission, simplified_form(small_and_microenterprises)) :-
    commission(Commission).

% Where an SME/start-up opts for simplified manner, it shall use the form
must_use(Enterprise, Form) :-
    small_medium_enterprise(Enterprise),
    opts_simplified_manner(Enterprise, technical_documentation(System)),
    ai_system(System),
    form_referred_to_in_article_eleven_one(Form).

must_use(Enterprise, Form) :-
    start_up(Enterprise),
    opts_simplified_manner(Enterprise, technical_documentation(System)),
    ai_system(System),
    form_referred_to_in_article_eleven_one(Form).

% Notified bodies shall accept the form for conformity assessment
must_accept(NotifiedBody, form_conformity_assessment(Form)) :-
    notified_body(NotifiedBody),
    form_referred_to_in_article_eleven_one(Form).

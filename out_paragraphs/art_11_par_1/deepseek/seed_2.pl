:- module(technical_documentation, [
    must_draw_up_technical_documentation/2,
    must_keep_up_to_date/1,
    must_demonstrate_compliance/2,
    must_provide_information/2,
    must_contain_minimum_elements/1,
    permitted_simplified_manner/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic requirements_chapter_3/1.
:- dynamic annex_iv_elements/1.
:- dynamic simplified_form_article_11_1/1.

% Obligation to draw up documentation before placing on market or putting into service
must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation(Documentation),
    (placed_on_market(System); put_into_service(System)).

% Obligation to keep documentation up-to-date
must_keep_up_to_date(Documentation) :-
    technical_documentation(Documentation).

% Documentation must demonstrate compliance with Chapter 3 requirements
must_demonstrate_compliance(Documentation, System) :-
    technical_documentation(Documentation),
    high_risk_ai_system(System),
    requirements_chapter_3(Requirements),
    complies_with(System, Requirements).

% Documentation must provide necessary information to authorities and notified bodies
must_provide_information(Documentation, Information) :-
    technical_documentation(Documentation),
    necessary_information(Information),
    (national_competent_authority(Authority); notified_body(Body)),
    assess_compliance(Authority_or_Body, System),
    high_risk_ai_system(System).

% Documentation must contain at minimum the elements in Annex IV
must_contain_minimum_elements(Documentation) :-
    technical_documentation(Documentation),
    annex_iv_elements(Elements),
    contains(Documentation, Elements).

% SMEs and start-ups may provide Annex IV elements in a simplified manner
permitted_simplified_manner(Entity) :-
    (sme(Entity); start_up(Entity)),
    annex_iv_elements(Elements),
    provides_simplified(Entity, Elements).

% Commission shall establish a simplified form for small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at(Form, small_microenterprise(_)).

% Where SME or start-up opts for simplified manner, it shall use the Article 11(1) form
must_use_simplified_form(Entity) :-
    (sme(Entity); start_up(Entity)),
    opts_for_simplified_manner(Entity),
    simplified_form_article_11_1(Form),
    uses(Entity, Form).

% Notified bodies shall accept the simplified form for conformity assessment
must_accept_simplified_form(Body) :-
    notified_body(Body),
    simplified_form_article_11_1(Form),
    accepts_for_conformity_assessment(Body, Form).

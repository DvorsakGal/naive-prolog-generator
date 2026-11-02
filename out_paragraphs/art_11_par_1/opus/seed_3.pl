:- module(technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    objective_demonstrate_compliance/1,
    objective_inform_authorities/1,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use/2,
    must_accept/2,
    sme/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic provider_of/2.
:- dynamic technical_documentation/2.
:- dynamic start_up/1.
:- dynamic small_or_medium_enterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic opts_simplified_provision/2.
:- dynamic simplified_technical_documentation_form/1.

% SMEs include start-ups
sme(X) :- small_or_medium_enterprise(X).
sme(X) :- start_up(X).

% Drawn up before placing on market or putting into service
must_draw_up(Provider, before(Doc, placing_on_market_or_putting_into_service(S))) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    technical_documentation(Doc, S).

must_keep_up_to_date(Provider, Doc) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    technical_documentation(Doc, S).

% Purposes of the documentation
objective_demonstrate_compliance(Doc) :-
    technical_documentation(Doc, S),
    high_risk_ai_system(S).

objective_inform_authorities(Doc) :-
    technical_documentation(Doc, S),
    high_risk_ai_system(S).

% Minimum content
must_contain(Doc, elements(annex_iv)) :-
    technical_documentation(Doc, S),
    high_risk_ai_system(S).

% SMEs may provide Annex IV elements in simplified manner
permitted_simplified_technical_documentation(Provider) :-
    sme(Provider),
    provider_of(Provider, S),
    high_risk_ai_system(S).

% Commission establishes simplified form
must_establish(Commission, simplified_technical_documentation_form(targeted_at(small_and_microenterprise))) :-
    commission(Commission).

% SME opting for simplified manner must use the form
must_use(Provider, Form) :-
    sme(Provider),
    opts_simplified_provision(Provider, elements(annex_iv)),
    simplified_technical_documentation_form(Form).

% Notified bodies must accept the form
must_accept(Body, for_conformity_assessment(Form)) :-
    notified_body(Body),
    simplified_technical_documentation_form(Form).

:- module(technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    required_technical_documentation/1,
    objective_demonstrate_compliance/1,
    objective_inform_authority/1,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic technical_documentation_of/2.
:- dynamic provider_of/2.
:- dynamic sme/1.
:- dynamic commission/1.
:- dynamic opts_for_simplified_documentation/1.
:- dynamic notified_body/1.
:- dynamic simplified_technical_documentation_form/1.

% Technical documentation required for high-risk AI systems
required_technical_documentation(S) :-
    high_risk_ai_system(S).

% Drawn up before placing on market or putting into service
must_draw_up(P, technical_documentation(S, before(placing_on_market_or_putting_into_service))) :-
    provider_of(P, S),
    high_risk_ai_system(S).

must_keep_up_to_date(P, technical_documentation(S)) :-
    provider_of(P, S),
    high_risk_ai_system(S).

% Purposes of the documentation
objective_demonstrate_compliance(D) :-
    technical_documentation_of(D, S),
    high_risk_ai_system(S).

objective_inform_authority(D) :-
    technical_documentation_of(D, S),
    high_risk_ai_system(S).

% Minimum content
must_contain(D, elements(annex_iv)) :-
    technical_documentation_of(D, S),
    high_risk_ai_system(S).

% SMEs, including start-ups, may provide Annex IV elements in simplified manner
permitted_simplified_technical_documentation(P) :-
    sme(P).

% Commission establishes simplified form for small and microenterprises
must_establish(C, simplified_technical_documentation_form(targeted_at(small_and_microenterprise))) :-
    commission(C).

% SME opting for simplified manner must use the form
must_use(P, simplified_technical_documentation_form) :-
    sme(P),
    opts_for_simplified_documentation(P).

% Notified bodies must accept the form for conformity assessment
must_accept(B, form(F, purpose(conformity_assessment))) :-
    notified_body(B),
    simplified_technical_documentation_form(F).

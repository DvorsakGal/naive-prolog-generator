:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    required_technical_documentation/1,
    must_keep_up_to_date/2,
    must_demonstrate_compliance/2,
    must_provide_information/3,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2,
    high_risk_ai_system/1,
    placed_on_market/1,
    put_into_service/1,
    complies_with_requirements/1,
    requirements_chp3/1,
    national_competent_authority/1,
    notified_body/1,
    annex_iv_elements/1,
    sme/1,
    start_up/1,
    small_microenterprise/1,
    simplified_technical_documentation_form/1,
    article_11_1_form/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic complies_with_requirements/1.
:- dynamic requirements_chp3/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic annex_iv_elements/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic article_11_1_form/1.

% Timing requirement: drawn up before placement or service
must_draw_up(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    (placed_on_market(S); put_into_service(S)).

% Technical documentation is required for high-risk AI systems
required_technical_documentation(technical_documentation(S)) :-
    high_risk_ai_system(S).

% Must keep up to date
must_keep_up_to_date(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S).

% Purpose 1: demonstrate compliance with chp 3 requirements
must_demonstrate_compliance(technical_documentation(S), requirements_chp3) :-
    high_risk_ai_system(S).

% Purpose 2: provide information to authorities and notified bodies
must_provide_information(technical_documentation(S), Authority, assessment_information(S)) :-
    high_risk_ai_system(S),
    (national_competent_authority(Authority); notified_body(Authority)),
    clear_and_comprehensive(technical_documentation(S)).

% Minimum content: Annex IV elements
must_contain(technical_documentation(S), annex_iv_elements) :-
    high_risk_ai_system(S).

% SME/start-up may use simplified manner
permitted_simplified_technical_documentation(technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    (sme(Provider); start_up(Provider)).

% Commission must establish simplified form for small and microenterprises
must_establish(commission, simplified_technical_documentation_form(small_microenterprise)) :-
    small_microenterprise_needs(small_microenterprise).

% SME/start-up opting for simplified manner must use Article 11(1) form
must_use_form(Sme, article_11_1_form) :-
    (sme(Sme); start_up(Sme)),
    opts_for_simplified_manner(Sme, technical_documentation(S)),
    high_risk_ai_system(S),
    article_11_1_form(article_11_1_form).

% Notified bodies must accept the form for conformity assessment
must_accept_form(NotifiedBody, article_11_1_form) :-
    notified_body(NotifiedBody),
    article_11_1_form(article_11_1_form),
    conformity_assessment_purpose.

% Helper predicates for conditions in text
clear_and_comprehensive(technical_documentation(S)) :-
    high_risk_ai_system(S).

provider(Provider, S) :-
    high_risk_ai_system(S).

small_microenterprise_needs(small_microenterprise).

opts_for_simplified_manner(Sme, technical_documentation(S)) :-
    (sme(Sme); start_up(Sme)),
    high_risk_ai_system(S).

conformity_assessment_purpose.

commission(commission).

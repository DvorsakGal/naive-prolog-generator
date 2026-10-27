:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    must_demonstrate_compliance/2,
    must_provide_information/3,
    must_contain/2,
    may_provide_simplified/2,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2,
    high_risk_ai_system/1,
    technical_documentation/1,
    placed_on_market/1,
    put_into_service/1,
    complies_with_requirements/2,
    requirements_chp_3/1,
    national_competent_authority/1,
    notified_body/1,
    annex_iv_elements/1,
    sme/1,
    start_up/1,
    simplified_technical_documentation/1,
    simplified_form/1,
    article_11_1_form/1,
    conformity_assessment/1
]).

% Inputs from world facts
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic complies_with_requirements/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic requirements_chp_3/1.
:- dynamic annex_iv_elements/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic conformity_assessment/1.

% Core obligations

must_draw_up(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    \+ placed_on_market(S),
    \+ put_into_service(S).

must_keep_up_to_date(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    drawn_up(Provider, technical_documentation(S)).

% Purpose and content requirements

must_demonstrate_compliance(technical_documentation(S), requirements_chp_3) :-
    high_risk_ai_system(S).

must_provide_information(technical_documentation(S), Authority, assessment_information) :-
    high_risk_ai_system(S),
    national_competent_authority(Authority).

must_provide_information(technical_documentation(S), Body, assessment_information) :-
    high_risk_ai_system(S),
    notified_body(Body).

must_contain(technical_documentation(S), annex_iv_elements) :-
    high_risk_ai_system(S).

% SME simplification provisions

may_provide_simplified(Sme, annex_iv_elements) :-
    sme(Sme).

may_provide_simplified(StartUp, annex_iv_elements) :-
    start_up(StartUp).

% Commission obligation for simplified form

must_establish(commission, simplified_technical_documentation_form(Smes)) :-
    sme_needs_targeted(Smes).

% SME using simplified form obligation

must_use_form(Sme, article_11_1_form) :-
    sme(Sme),
    opts_for_simplified(Sme, annex_iv_elements).

must_use_form(StartUp, article_11_1_form) :-
    start_up(StartUp),
    opts_for_simplified(StartUp, annex_iv_elements).

% Notified body acceptance obligation

must_accept_form(Body, article_11_1_form) :-
    notified_body(Body),
    conformity_assessment(CA),
    used_for(CA, article_11_1_form).

% Supporting definitions

sme_needs_targeted(small_enterprises).
sme_needs_targeted(microenterprises).

provider(Provider, S) :-
    developed_by(Provider, S).

% Auxiliary predicates for conditions in text

opts_for_simplified(Entity, annex_iv_elements) :-
    (sme(Entity); start_up(Entity)),
    chooses_simplified(Entity).

used_for(CA, article_11_1_form) :-
    conformity_assessment(CA),
    submitted_with(CA, article_11_1_form).

% Facts implied by text structure

drawn_up(Provider, technical_documentation(S)) :-
    must_draw_up(Provider, technical_documentation(S)).

% Dynamic declarations for world-state inputs
:- dynamic developed_by/2.
:- dynamic chooses_simplified/1.
:- dynamic submitted_with/2.

:- module(technical_documentation, [
    must_draw_up_before(Entity, Documentation),
    must_keep_up_to_date(Entity, Documentation),
    must_demonstrate_compliance(Documentation, System),
    must_provide_information(Documentation, Information),
    must_contain(Documentation, Elements),
    may_provide_simplified(Sme, Elements),
    must_establish(Commission, Form),
    must_use_form(Sme, Form),
    must_accept_form(Body, Form)
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic conformity_assessment/1.

must_draw_up_before(Entity, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    (   placed_on_market(System)
    ;   put_into_service(System)
    ),
    responsible_entity(Entity, Documentation).

must_keep_up_to_date(Entity, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    responsible_entity(Entity, Documentation).

must_demonstrate_compliance(Documentation, System) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    requirements_chapter_3(Requirements),
    complies_with(System, Requirements).

must_provide_information(Documentation, Information) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    information_for_assessment(Information, System).

must_contain(Documentation, Elements) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    annex_iv_elements(Elements).

may_provide_simplified(Sme, Elements) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    annex_iv_elements(Elements).

must_establish(Commission, Form) :-
    commission(Commission),
    simplified_form(Form, small_and_microenterprises).

must_use_form(Sme, Form) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    opts_for_simplified(Sme),
    simplified_form(Form, _),
    referred_to_in_article_11_1(Form).

must_accept_form(Body, Form) :-
    notified_body(Body),
    simplified_form(Form, _),
    conformity_assessment(Assessment),
    purpose(Assessment, Form).

% Supporting predicates defined in this module
technical_documentation_of(Documentation, System) :-
    high_risk_ai_system(System),
    Documentation = technical_documentation(System).

responsible_entity(Entity, Documentation) :-
    technical_documentation_of(Documentation, System),
    Entity = responsible_for(System).

information_for_assessment(Information, System) :-
    high_risk_ai_system(System),
    Information = assessment_information(System, clear_and_comprehensive).

opts_for_simplified(Sme) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    annex_iv_elements(_Elements),
    provides_simplified(Sme).

% Declare dynamic predicates for inputs not defined here
:- dynamic requirements_chapter_3/1.
:- dynamic complies_with/2.
:- dynamic annex_iv_elements/1.
:- dynamic simplified_form/2.
:- dynamic referred_to_in_article_11_1/1.
:- dynamic purpose/2.
:- dynamic provides_simplified/1.

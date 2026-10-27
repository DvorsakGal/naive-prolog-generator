:- module(technical_documentation, [
    must_draw_up_technical_documentation/2,
    must_keep_up_to_date/1,
    demonstrates_compliance/1,
    provides_information/1,
    must_contain/2,
    may_provide_simplified/2,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic conformity_assessment/1.

must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    (   placed_on_market(System)
    ;   put_into_service(System)
    ),
    Documentation = technical_documentation(System).

must_keep_up_to_date(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System).

demonstrates_compliance(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    complies_with(System, chapter_3).

provides_information(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    provides_clear_comprehensive_information(Documentation, national_competent_authorities),
    provides_clear_comprehensive_information(Documentation, notified_bodies).

must_contain(Documentation, annex_iv) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    \+ may_provide_simplified(System, annex_iv).

may_provide_simplified(Actor, annex_iv) :-
    (   sme(Actor)
    ;   start_up(Actor)
    ),
    provides_information(technical_documentation(System)),
    Actor = System.

must_establish(Commission, simplified_form(small_microenterprises)) :-
    commission(Commission),
    small_microenterprise(_).

must_use_form(Actor, Form) :-
    (   sme(Actor)
    ;   start_up(Actor)
    ),
    may_provide_simplified(Actor, annex_iv),
    Form = form_article_11_1.

must_accept_form(Body, Form) :-
    notified_body(Body),
    Form = form_article_11_1,
    conformity_assessment(_).

:- module(high_risk_ai_technical_documentation, [
    high_risk_ai_system/1,
    must_draw_up_technical_documentation_before/2,
    must_keep_technical_documentation_up_to_date/1,
    must_demonstrate_compliance_with_chapter_3/1,
    must_provide_information_to_authorities/1,
    must_contain_annex_iv_elements/1,
    sme/1,
    startup/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/2,
    must_use_simplified_form/2,
    must_accept_simplified_form/2
]).

% Input predicates for entities and conditions not defined in this text
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic opts_for_simplified_manner/1.

% Core obligations for technical documentation
must_draw_up_technical_documentation_before(S, Event) :-
    high_risk_ai_system(S),
    (placed_on_market(S) ; put_into_service(S)),
    event_type(Event).

event_type(placement_on_market).
event_type(putting_into_service).

must_keep_technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S).

must_demonstrate_compliance_with_chapter_3(S) :-
    high_risk_ai_system(S).

must_provide_information_to_authorities(S) :-
    high_risk_ai_system(S).

must_contain_annex_iv_elements(S) :-
    high_risk_ai_system(S).

% SME and start-up provisions
permitted_simplified_documentation(E) :-
    sme(E).

permitted_simplified_documentation(E) :-
    startup(E).

must_establish_simplified_form(Commission, Form) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at_small_and_microenterprises(Form).

must_use_simplified_form(E, Form) :-
    (sme(E) ; startup(E)),
    opts_for_simplified_manner(E),
    simplified_technical_documentation_form(Form),
    referred_to_in_article_11_1(Form).

must_accept_simplified_form(Body, Form) :-
    notified_body(Body),
    simplified_technical_documentation_form(Form),
    conformity_assessment_purpose(Form).

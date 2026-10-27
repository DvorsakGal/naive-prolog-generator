:- module(high_risk_ai_technical_documentation, [
    high_risk_ai_system/1,
    must_draw_up_technical_documentation_before/2,
    must_keep_technical_documentation_up_to_date/1,
    must_demonstrate_compliance_with_chapter_3/1,
    must_provide_information_to_authorities_and_bodies/1,
    must_contain_annex_iv_elements/1,
    sme/1,
    startup/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/2,
    must_use_simplified_form/2,
    must_accept_simplified_form/2,
    national_competent_authority/1,
    notified_body/1,
    commission/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic sme/1.
:- dynamic startup/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.

% Obligations regarding timing and maintenance of documentation
must_draw_up_technical_documentation_before(System, Event) :-
    high_risk_ai_system(System),
    placement_or_service_event(Event).

placement_or_service_event(placed_on_market).
placement_or_service_event(put_into_service).

must_keep_technical_documentation_up_to_date(System) :-
    high_risk_ai_system(System).

% Content and purpose requirements for technical documentation
must_demonstrate_compliance_with_chapter_3(System) :-
    high_risk_ai_system(System).

must_provide_information_to_authorities_and_bodies(System) :-
    high_risk_ai_system(System).

must_contain_annex_iv_elements(System) :-
    high_risk_ai_system(System).

% Simplified documentation provisions for SMEs and start-ups
permitted_simplified_documentation(Entity) :-
    sme(Entity).

permitted_simplified_documentation(Entity) :-
    startup(Entity).

must_establish_simplified_form(Commission, Form) :-
    commission(Commission),
    simplified_technical_documentation_form(Form).

must_use_simplified_form(Entity, Form) :-
    permitted_simplified_documentation(Entity),
    opts_for_simplified_manner(Entity),
    simplified_technical_documentation_form(Form).

must_accept_simplified_form(Body, Form) :-
    notified_body(Body),
    simplified_technical_documentation_form(Form),
    conformity_assessment_purpose(Purpose),
    assessment_context(Body, Purpose).

% Auxiliary definitions implied by the text
simplified_technical_documentation_form(form(article_11_1)).

opts_for_simplified_manner(_Entity).

conformity_assessment_purpose(conformity_assessment).

assessment_context(_Body, _Purpose).

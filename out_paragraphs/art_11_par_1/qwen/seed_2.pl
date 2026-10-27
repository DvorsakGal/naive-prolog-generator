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

:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.

% System classification
high_risk_ai_system(_S).

% Timing and maintenance obligations
must_draw_up_technical_documentation_before(S, market_or_service) :-
    high_risk_ai_system(S).

must_keep_technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S).

% Content and purpose obligations
must_demonstrate_compliance_with_chapter_3(S) :-
    high_risk_ai_system(S).

must_provide_information_to_authorities(S) :-
    high_risk_ai_system(S).

must_contain_annex_iv_elements(S) :-
    high_risk_ai_system(S).

% SME and startup definitions (inputs)
sme(_E).
startup(_E).

% Simplified documentation permissions and duties
permitted_simplified_documentation(E) :-
    sme(E).

permitted_simplified_documentation(E) :-
    startup(E).

must_establish_simplified_form(Commission, form_for_sme) :-
    commission(Commission).

must_use_simplified_form(E, form_article_11_1) :-
    permitted_simplified_documentation(E),
    opts_for_simplified_manner(E).

must_accept_simplified_form(Body, form_article_11_1) :-
    notified_body(Body).

% Helper for opt-in condition (input predicate not defined in text)
:- dynamic opts_for_simplified_manner/1.

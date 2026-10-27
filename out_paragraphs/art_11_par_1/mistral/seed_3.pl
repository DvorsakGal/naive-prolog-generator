:- module(technical_documentation_ai, [
    must_draw_up_technical_documentation/2,
    technical_documentation_up_to_date/1,
    technical_documentation_demonstrates_compliance/2,
    technical_documentation_provides_information/3,
    technical_documentation_contains_elements/2,
    may_provide_simplified_documentation/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/2
]).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service
must_draw_up_technical_documentation(Provider, System) :-
    high_risk_ai_system(System),
    provider(Provider, System),
    \+ placed_on_market_before(System, documentation_drawn_up(Provider, System)),
    \+ put_into_service_before(System, documentation_drawn_up(Provider, System)).

% Helper: documentation is drawn up before placement on market or service
placed_on_market_before(System, documentation_drawn_up(Provider, System)) :-
    must_draw_up_technical_documentation(Provider, System),
    time_of(documentation_drawn_up(Provider, System), T1),
    time_of(placed_on_market(System), T2),
    T1 < T2.

put_into_service_before(System, documentation_drawn_up(Provider, System)) :-
    must_draw_up_technical_documentation(Provider, System),
    time_of(documentation_drawn_up(Provider, System), T1),
    time_of(put_into_service(System), T2),
    T1 < T2.

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(System) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    current(Doc).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3
technical_documentation_demonstrates_compliance(System, Doc) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    demonstrates_compliance_with_chapter_3(Doc).

% ...and to provide national competent authorities and notified bodies with
% the necessary information in a clear and comprehensive form to assess
% the compliance of the AI system with those requirements
technical_documentation_provides_information(System, Doc, Recipient) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    recipient_type(Recipient),
    provides_information_for_compliance_assessment(Doc, Recipient).

recipient_type(national_competent_authority).
recipient_type(notified_body).

% It shall contain, at a minimum, the elements set out in Annex IV
technical_documentation_contains_elements(System, Doc) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    contains_elements(Doc, annex_iv).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
may_provide_simplified_documentation(Provider) :-
    sme(Provider).

may_provide_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    establishes_simplified_form(Commission, targeted_at(small_and_microenterprises)).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in
% Article 11(1)
must_use_simplified_form(Provider) :-
    sme(Provider),
    opts_for_simplified_manner(Provider),
    uses_form(Provider, article_11_1_form).

must_use_simplified_form(Provider) :-
    start_up(Provider),
    opts_for_simplified_manner(Provider),
    uses_form(Provider, article_11_1_form).

% Notified bodies shall accept the form for the purposes of the conformity assessment
must_accept_simplified_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    form(article_11_1_form, Form),
    accepts_for_conformity_assessment(NotifiedBody, Form).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic provider/2.
:- dynamic time_of/2.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic technical_documentation/2.
:- dynamic current/1.
:- dynamic demonstrates_compliance_with_chapter_3/1.
:- dynamic provides_information_for_compliance_assessment/2.
:- dynamic contains_elements/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic establishes_simplified_form/2.
:- dynamic opts_for_simplified_manner/1.
:- dynamic uses_form/2.
:- dynamic notified_body/1.
:- dynamic form/2.
:- dynamic accepts_for_conformity_assessment/2.

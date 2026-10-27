:- module(technical_documentation_ai, [
    must_draw_up_technical_documentation/2,
    technical_documentation_up_to_date/1,
    technical_documentation_demonstrates_compliance/1,
    technical_documentation_provides_information/1,
    technical_documentation_contains_annex_iv_elements/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/2
]).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service
must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation(Documentation, System),
    \+ placed_on_market_before(System, Documentation),
    \+ put_into_service_before(System, Documentation).

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(Documentation) :-
    technical_documentation(Documentation, _System).

% The technical documentation shall be drawn up in such a way as to
% demonstrate that the high-risk AI system complies with the requirements
% set out in chapter 3
technical_documentation_demonstrates_compliance(Documentation) :-
    technical_documentation(Documentation, System),
    high_risk_ai_system(System),
    demonstrates_compliance_with_chapter_3(Documentation, System).

% The technical documentation shall provide national competent authorities
% and notified bodies with the necessary information in a clear and
% comprehensive form to assess the compliance of the AI system with
% those requirements
technical_documentation_provides_information(Documentation) :-
    technical_documentation(Documentation, System),
    provides_information_to(Documentation, national_competent_authority),
    provides_information_to(Documentation, notified_body),
    information_form(Documentation, clear),
    information_form(Documentation, comprehensive),
    purpose_of_information(Documentation, assess_compliance(System)).

% The technical documentation shall contain, at a minimum, the elements
% set out in Annex IV
technical_documentation_contains_annex_iv_elements(Documentation) :-
    technical_documentation(Documentation, _System),
    contains_elements(Documentation, annex_iv).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
permitted_simplified_documentation(Provider) :-
    sme(Provider).
permitted_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at(Form, small_enterprise),
    targeted_at(Form, microenterprise).

% Where an SME, including a start-up, opts to provide the information
% required in Annex IV in a simplified manner, it shall use the form
% referred to in Article 11(1)
must_use_simplified_form(Provider, Form) :-
    sme(Provider),
    opts_for_simplified_manner(Provider),
    form_referred_to_in_article_11_1(Form).
must_use_simplified_form(Provider, Form) :-
    start_up(Provider),
    opts_for_simplified_manner(Provider),
    form_referred_to_in_article_11_1(Form).

% Notified bodies shall accept the form for the purposes of the
% conformity assessment
must_accept_simplified_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    simplified_technical_documentation_form(Form),
    purpose(conformity_assessment).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic technical_documentation/2.
:- dynamic placed_on_market_before/2.
:- dynamic put_into_service_before/2.
:- dynamic demonstrates_compliance_with_chapter_3/2.
:- dynamic provides_information_to/2.
:- dynamic information_form/2.
:- dynamic purpose_of_information/2.
:- dynamic contains_elements/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic targeted_at/2.
:- dynamic opts_for_simplified_manner/1.
:- dynamic form_referred_to_in_article_11_1/1.
:- dynamic notified_body/1.
:- dynamic purpose/1.
:- dynamic assess_compliance/1.
:- dynamic national_competent_authority/0.
:- dynamic notified_body/0.
:- dynamic clear/0.
:- dynamic comprehensive/0.
:- dynamic annex_iv/0.
:- dynamic small_enterprise/0.
:- dynamic microenterprise/0.
:- dynamic conformity_assessment/0.

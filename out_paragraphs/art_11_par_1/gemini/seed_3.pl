:- module(technical_documentation, [
    required_technical_documentation/1,
    must_draw_up/2,
    must_keep_up_to_date/2,
    demonstrates_compliance/2,
    provides_assessment_information/2,
    contains_elements/2,
    permitted_simplified_manner/2,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic provider/1.
:- dynamic small_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic small_or_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.
:- dynamic opts_simplified_manner/2.
:- dynamic conformity_assessment/1.

% The technical documentation of a high-risk AI system is required.
required_technical_documentation(technical_documentation(System)) :-
    high_risk_ai_system(System).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service.
must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% It shall be kept up to date.
must_keep_up_to_date(Provider, technical_documentation(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3.
demonstrates_compliance(technical_documentation(System), requirements(chapter_3)) :-
    high_risk_ai_system(System).

% And to provide national competent authorities and notified bodies with the
% necessary information in a clear and comprehensive form to assess the
% compliance of the AI system with those requirements.
provides_assessment_information(technical_documentation(System), recipient(Recipient)) :-
    high_risk_ai_system(System),
    ( national_competent_authority(Recipient)
    ; notified_body(Recipient)
    ).

% It shall contain, at a minimum, the elements set out in Annex IV.
contains_elements(technical_documentation(System), minimum(elements(annex_iv))) :-
    high_risk_ai_system(System).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner.
permitted_simplified_manner(technical_documentation(System)) :-
    high_risk_ai_system(System),
    provider(Provider),
    ( small_medium_enterprise(Provider)
    ; start_up(Provider)
    ).

% The Commission shall establish a simplified technical documentation form
% targeted at the needs of small and microenterprises.
must_establish(Commission, simplified_technical_documentation_form(targeted_needs(small_and_microenterprises))) :-
    commission(Commission).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in Article 11(1).
must_use(Provider, form(article_11(1))) :-
    high_risk_ai_system(System),
    provider(Provider),
    ( small_medium_enterprise(Provider)
    ; start_up(Provider)
    ),
    opts_simplified_manner(Provider, technical_documentation(System)).

% Notified bodies shall accept the form for the purposes of the conformity assessment.
must_accept(Body, form(article_11(1), purpose(conformity_assessment(Assessment)))) :-
    notified_body(Body),
    conformity_assessment(Assessment).

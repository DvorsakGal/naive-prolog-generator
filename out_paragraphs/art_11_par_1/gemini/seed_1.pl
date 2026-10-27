:- module(technical_documentation_high_risk_ai, [
    required_drawn_up/1,
    required_up_to_date/1,
    required_demonstrate_compliance/1,
    required_provide_assessment_information/1,
    required_contain_elements/1,
    permitted_simplified_manner/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk(1).
:- dynamic technical_documentation(1).
:- dynamic placed_on_market(2).
:- dynamic puts_into_service(2).
:- dynamic ai_system(1).
:- dynamic provider(1).
:- dynamic commission(1).
:- dynamic small_medium_enterprise(1).
:- dynamic start_up(1).
:- dynamic notified_body(1).
:- dynamic opts_simplified_manner(1).
:- dynamic documentation_of(2).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service.
required_drawn_up(before(Doc, placed_on_market_or_put_into_service(System))) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% ...and shall be kept up-to date.
required_up_to_date(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3...
required_demonstrate_compliance(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% ...and to provide national competent authorities and notified bodies with the
% necessary information in a clear and comprehensive form to assess the compliance
% of the AI system with those requirements.
required_provide_assessment_information(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% It shall contain, at a minimum, the elements set out in Annex IV.
required_contain_elements(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner.
permitted_simplified_manner(Enterprise) :-
    small_medium_enterprise(Enterprise).
permitted_simplified_manner(Enterprise) :-
    start_up(Enterprise).

% To that end, the Commission shall establish a simplified technical documentation
% form targeted at the needs of small and microenterprises.
must_establish(Commission, form(simplified_technical_documentation, target(small_and_microenterprises))) :-
    commission(Commission).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in Article 11(1).
must_use(Enterprise, form(simplified_technical_documentation, article_11_1)) :-
    permitted_simplified_manner(Enterprise),
    opts_simplified_manner(Enterprise).

% Notified bodies shall accept the form for the purposes of the conformity assessment.
must_accept(Body, form(simplified_technical_documentation, purpose(conformity_assessment))) :-
    notified_body(Body).

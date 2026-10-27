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
must_draw_up_technical_documentation(Provider, S) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    \+ placed_on_market_before(S, documentation_drawn_up(Provider, S)),
    \+ put_into_service_before(S, documentation_drawn_up(Provider, S)).

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    kept_up_to_date(Doc).

% The technical documentation shall be drawn up in such a way as to
% demonstrate that the high-risk AI system complies with the requirements
% set out in chapter 3
technical_documentation_demonstrates_compliance(S, chapter_3) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    demonstrates_compliance(Doc, requirements(chapter_3)).

% The technical documentation shall provide national competent authorities
% and notified bodies with the necessary information in a clear and
% comprehensive form to assess the compliance of the AI system with
% those requirements
technical_documentation_provides_information(S, Authority, chapter_3) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    (national_competent_authority(Authority) ; notified_body(Authority)),
    provides_information(Doc, Authority, clear_and_comprehensive),
    purpose(assess_compliance(Authority, S, requirements(chapter_3))).

% The technical documentation shall contain, at a minimum, the elements
% set out in Annex IV
technical_documentation_contains_elements(S, annex_iv) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    contains_at_minimum(Doc, elements(annex_iv)).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
may_provide_simplified_documentation(Provider) :-
    sme(Provider).

may_provide_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(commission) :-
    purpose(targeted_at(needs(small_and_microenterprises))).

% Where an SME, including a start-up, opts to provide the information
% required in Annex IV in a simplified manner, it shall use the form
% referred to in Article 11(1)
must_use_simplified_form(Provider, form(article_11_1)) :-
    (sme(Provider) ; start_up(Provider)),
    opts_to_provide_simplified(Provider, information(annex_iv)).

% Notified bodies shall accept the form for the purposes of the
% conformity assessment
must_accept_simplified_form(Body, form(article_11_1)) :-
    notified_body(Body),
    purpose(conformity_assessment).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic provider/2.
:- dynamic placed_on_market_before/2.
:- dynamic put_into_service_before/2.
:- dynamic technical_documentation/2.
:- dynamic kept_up_to_date/1.
:- dynamic demonstrates_compliance/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic provides_information/3.
:- dynamic purpose/1.
:- dynamic contains_at_minimum/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic opts_to_provide_simplified/2.

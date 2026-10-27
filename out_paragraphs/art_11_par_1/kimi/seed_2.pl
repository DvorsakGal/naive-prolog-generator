:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    required_technical_documentation/1,
    demonstrates_compliance/2,
    provides_information/3,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use/2,
    must_accept/2,
    high_risk_ai_system/1,
    placed_on_market/1,
    put_into_service/1,
    chapter_3/1,
    annex_iv/1,
    sme/1,
    start_up/1,
    small_microenterprise/1,
    commission/1,
    notified_body/1,
    national_competent_authority/1,
    simplified_technical_documentation_form/1,
    article_11_1_form/1,
    conformity_assessment/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic chapter_3/1.
:- dynamic annex_iv/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.
:- dynamic article_11_1_form/1.
:- dynamic conformity_assessment/1.

% Timing requirement: drawn up before placement or putting into service
must_draw_up(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placed_on_market(S); put_into_service(S)).

% Up-to-date requirement
must_keep_up_to_date(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

% Purpose of technical documentation: demonstrate compliance
demonstrates_compliance(technical_documentation(S), chapter_3_requirements) :-
    high_risk_ai_system(S),
    chapter_3(chapter_3_requirements).

% Purpose: provide information to authorities
provides_information(technical_documentation(S), Authority, compliance_assessment_information) :-
    high_risk_ai_system(S),
    (national_competent_authority(Authority); notified_body(Authority)),
    clear_and_comprehensive(technical_documentation(S)).

% Minimum content requirement
must_contain(technical_documentation(S), elements(annex_iv)) :-
    high_risk_ai_system(S),
    annex_iv(annex_iv).

% Simplified manner permitted for SMEs including start-ups
permitted_simplified_technical_documentation(S) :-
    high_risk_ai_system(S),
    sme_including_start_up(Entity),
    provides_technical_documentation(Entity, S).

sme_including_start_up(Entity) :-
    sme(Entity).
sme_including_start_up(Entity) :-
    start_up(Entity).

% Commission must establish simplified form
must_establish(Commission, simplified_technical_documentation_form(small_microenterprise_needs)) :-
    commission(Commission),
    small_microenterprise_needs(small_microenterprise_needs).

% SME must use Article 11(1) form when opting for simplified manner
must_use(SME, article_11_1_form) :-
    sme_including_start_up(SME),
    opts_for_simplified_manner(SME, technical_documentation(S)),
    high_risk_ai_system(S).

% Notified bodies must accept the form
must_accept(NotifiedBody, article_11_1_form) :-
    notified_body(NotifiedBody),
    conformity_assessment(ConformityAssessment),
    used_for_purposes(article_11_1_form, ConformityAssessment).

% Supporting predicates
provider(Provider) :- sme(Provider).
provider(Provider) :- start_up(Provider).
provider(Provider) :- \+ sme(Provider), \+ start_up(Provider), entity(Provider).

entity(Entity) :- sme(Entity).
entity(Entity) :- start_up(Entity).
entity(Entity) :- commission(Entity).
entity(Entity) :- notified_body(Entity).
entity(Entity) :- national_competent_authority(Entity).

clear_and_comprehensive(technical_documentation(_S)).

small_microenterprise_needs(small_microenterprise_needs).

used_for_purposes(article_11_1_form, conformity_assessment) :-
    conformity_assessment(conformity_assessment).

opts_for_simplified_manner(SME, technical_documentation(S)) :-
    sme_including_start_up(SME),
    high_risk_ai_system(S),
    permitted_simplified_technical_documentation(S).

provides_technical_documentation(SME, S) :-
    sme_including_start_up(SME),
    high_risk_ai_system(S).

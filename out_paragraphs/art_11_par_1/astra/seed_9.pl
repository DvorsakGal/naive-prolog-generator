:- module(technical_documentation, [
    required_technical_documentation/1,
    required_drawing_up/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2,
    targeted/1
]).

:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic technical_documentation_of/2.
:- dynamic small_and_medium_sized_enterprise/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_provision/2.
:- dynamic commission/1.
:- dynamic notified_body/1.

required_technical_documentation(System) :-
    ai_system(System),
    high_risk(System).

required_drawing_up(before(technical_documentation(System), placing_on_market(System))) :-
    ai_system(System),
    high_risk(System).

required_drawing_up(before(technical_documentation(System), putting_into_service(System))) :-
    ai_system(System),
    high_risk(System).

required_updating(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

required_demonstration(documentation(Documentation, compliance(System, requirement(chp_3)))) :-
    technical_documentation_of(Documentation, System),
    ai_system(System),
    high_risk(System).

required_information(documentation(
    Documentation,
    recipient(national_competent_authority),
    necessary_information(assess(compliance(System, requirement(chp_3)))),
    form(clear, comprehensive))) :-
    technical_documentation_of(Documentation, System),
    ai_system(System),
    high_risk(System).

required_information(documentation(
    Documentation,
    recipient(notified_body),
    necessary_information(assess(compliance(System, requirement(chp_3)))),
    form(clear, comprehensive))) :-
    technical_documentation_of(Documentation, System),
    ai_system(System),
    high_risk(System).

required_minimum_content(documentation(Documentation, element_set(annex_iv))) :-
    technical_documentation_of(Documentation, System),
    ai_system(System),
    high_risk(System).

% Small and medium-sized enterprises include qualifying start-ups.
permitted_simplified_provision(provision(
    Enterprise, Documentation, element_set(annex_iv))) :-
    small_and_medium_sized_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    technical_documentation_of(Documentation, System),
    ai_system(System),
    high_risk(System).

must_establish(Commission, simplified_technical_documentation_form(article_11(1))) :-
    commission(Commission).

targeted(form(
    simplified_technical_documentation_form(article_11(1)),
    need(small_enterprise))).

targeted(form(
    simplified_technical_documentation_form(article_11(1)),
    need(microenterprise))).

must_use(Enterprise, form_for(
    simplified_technical_documentation_form(article_11(1)),
    Documentation)) :-
    permitted_simplified_provision(provision(
        Enterprise, Documentation, element_set(annex_iv))),
    opts_for_simplified_provision(
        Enterprise, information(Documentation, annex_iv)).

must_accept(Body, form_for(
    simplified_technical_documentation_form(article_11(1)),
    conformity_assessment)) :-
    notified_body(Body).

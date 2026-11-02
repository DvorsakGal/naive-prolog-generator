:- module(technical_documentation, [
    required_preparation/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2,
    eligible_small_or_medium_enterprise/1,
    applicable_technical_documentation/1
]).

:- dynamic ai_system_applies/1.
:- dynamic high_risk/1.
:- dynamic documents_system/2.
:- dynamic small_or_medium_enterprise_applies/1.
:- dynamic start_up_applies/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for/2.
:- dynamic commission_applies/1.
:- dynamic national_competent_authority_applies/1.
:- dynamic notified_body_applies/1.

applicable_technical_documentation(Documentation) :-
    documents_system(Documentation, System),
    ai_system_applies(System),
    high_risk(System).

required_preparation(before(technical_documentation(Documentation), placing_on_market(System))) :-
    applicable_technical_documentation(Documentation),
    documents_system(Documentation, System).

required_preparation(before(technical_documentation(Documentation), putting_into_service(System))) :-
    applicable_technical_documentation(Documentation),
    documents_system(Documentation, System).

required_updating(technical_documentation(Documentation, kept_up_to_date)) :-
    applicable_technical_documentation(Documentation).

required_demonstration(compliance(Documentation, System, requirement(chp_3))) :-
    applicable_technical_documentation(Documentation),
    documents_system(Documentation, System).

required_information(
    provision(Documentation, Authority,
        necessary_information(
            assess_compliance(System, requirement(chp_3)),
            form(clear, comprehensive)))) :-
    applicable_technical_documentation(Documentation),
    documents_system(Documentation, System),
    national_competent_authority_applies(Authority).

required_information(
    provision(Documentation, Body,
        necessary_information(
            assess_compliance(System, requirement(chp_3)),
            form(clear, comprehensive)))) :-
    applicable_technical_documentation(Documentation),
    documents_system(Documentation, System),
    notified_body_applies(Body).

required_minimum_content(technical_documentation(Documentation, element_set(annex_iv))) :-
    applicable_technical_documentation(Documentation).

eligible_small_or_medium_enterprise(Enterprise) :-
    small_or_medium_enterprise_applies(Enterprise).

eligible_small_or_medium_enterprise(Enterprise) :-
    start_up_applies(Enterprise),
    small_or_medium_enterprise_applies(Enterprise).

permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex_iv), simplified_manner)) :-
    eligible_small_or_medium_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    applicable_technical_documentation(Documentation).

must_establish(
    Commission,
    simplified_technical_documentation_form(
        article_11(1),
        targeted_at(need(small_enterprise), need(microenterprise)))) :-
    commission_applies(Commission).

must_use(
    Enterprise,
    form(article_11(1), provision(Documentation, information_required(annex_iv)))) :-
    eligible_small_or_medium_enterprise(Enterprise),
    applicable_technical_documentation(Documentation),
    opts_for(Enterprise,
        provision(Documentation, information_required(annex_iv), simplified_manner)).

must_accept(
    Body,
    form(article_11(1), purpose(conformity_assessment))) :-
    notified_body_applies(Body).

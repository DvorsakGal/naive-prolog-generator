:- module(technical_documentation, [
    required_technical_documentation/1,
    required_drawing_up/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic technical_documentation_applies/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_and_medium_sized_enterprise/1.
:- dynamic commission/1.
:- dynamic provides_technical_documentation/2.
:- dynamic opts_for/2.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

required_drawing_up(before(Documentation, placing_on_market(System))) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)).

required_drawing_up(before(Documentation, putting_into_service(System))) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)).

required_updating(Documentation) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)).

required_compliance_demonstration(
    documentation(Documentation, compliance(System, requirement(chp_3)))
) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)).

required_information_provision(
    documentation(Documentation, recipient(Authority),
        necessary_information(
            clear_and_comprehensive,
            assessment(compliance(System, requirement(chp_3))))))
) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)),
    national_competent_authority(Authority).

required_information_provision(
    documentation(Documentation, recipient(Body),
        necessary_information(
            clear_and_comprehensive,
            assessment(compliance(System, requirement(chp_3))))))
) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)),
    notified_body(Body).

required_minimum_content(documentation(Documentation, element_set(annex_iv))) :-
    required_technical_documentation(System),
    technical_documentation_applies(documentation(Documentation, System)).

permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex_iv))
) :-
    small_and_medium_sized_enterprise(Enterprise),
    provides_technical_documentation(Enterprise, Documentation),
    required_minimum_content(documentation(Documentation, element_set(annex_iv))).

must_establish(
    Commission,
    simplified_technical_documentation_form(
        article_11_1,
        targeted_at(need(small_enterprise), need(microenterprise))))
) :-
    commission(Commission).

must_use(Enterprise, form(article_11_1, Documentation)) :-
    permitted_simplified_provision(
        provision(Enterprise, Documentation, element_set(annex_iv))),
    opts_for(Enterprise,
        simplified_provision(Documentation, element_set(annex_iv))).

must_accept(Body, form(article_11_1, purpose(conformity_assessment))) :-
    notified_body(Body).

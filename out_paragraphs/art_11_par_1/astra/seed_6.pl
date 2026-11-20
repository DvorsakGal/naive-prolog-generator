:- module(technical_documentation, [
    required_technical_documentation/1,
    required_drawing_up/1,
    required_updating/1,
    required_demonstration/1,
    required_provision/1,
    required_inclusion/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic technical_documentation_applies/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_and_medium_sized_enterprise/1.
:- dynamic commission/1.
:- dynamic opts_for_simplified_provision/2.

required_technical_documentation(System) :-
    ai_system(System),
    high_risk(System).

required_drawing_up(
    technical_documentation(
        System,
        before(placing_on_market(System)),
        before(putting_into_service(System))
    )
) :-
    required_technical_documentation(System).

required_updating(technical_documentation(System, kept_up_to_date)) :-
    required_technical_documentation(System).

required_demonstration(
    technical_documentation(
        System,
        compliance_with(requirement(chapter(3)))
    )
) :-
    required_technical_documentation(System).

required_provision(
    information(
        technical_documentation(System),
        recipient(Authority),
        necessary_for(assessment(compliance(System, requirement(chapter(3))))),
        form(clear_and_comprehensive)
    )
) :-
    required_technical_documentation(System),
    national_competent_authority(Authority).

required_provision(
    information(
        technical_documentation(System),
        recipient(Body),
        necessary_for(assessment(compliance(System, requirement(chapter(3))))),
        form(clear_and_comprehensive)
    )
) :-
    required_technical_documentation(System),
    notified_body(Body).

required_inclusion(
    technical_documentation(System, minimum(element_set(annex(iv))))
) :-
    required_technical_documentation(System).

permitted_simplified_provision(
    provision(
        Enterprise,
        technical_documentation(System, element_set(annex(iv))),
        simplified_manner
    )
) :-
    small_and_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System),
    technical_documentation_applies(enterprise_system(Enterprise, System)).

must_establish(
    Commission,
    simplified_technical_documentation_form(
        reference(article(11, 1)),
        targeted_at(need(small_enterprise)),
        targeted_at(need(microenterprise))
    )
) :-
    commission(Commission).

must_use(
    Enterprise,
    form(
        reference(article(11, 1)),
        provision(technical_documentation(System, element_set(annex(iv))))
    )
) :-
    small_and_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System),
    opts_for_simplified_provision(
        Enterprise,
        technical_documentation(System, information_required(annex(iv)))
    ).

must_accept(
    Body,
    simplified_technical_documentation_form(
        reference(article(11, 1)),
        purpose(conformity_assessment)
    )
) :-
    notified_body(Body).

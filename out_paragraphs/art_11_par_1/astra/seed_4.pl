:- module(technical_documentation, [
    required_technical_documentation/1,
    required_drawing_up/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic technical_documentation_of/2.
:- dynamic small_or_medium_enterprise/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_provision/2.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

required_drawing_up(before(Documentation, placing_on_market(System))) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System).

required_drawing_up(before(Documentation, putting_into_service(System))) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System).

required_updating(keeping_up_to_date(Documentation)) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System).

required_demonstration(
    documentation(Documentation, compliance(System, requirement(chapter(3))))
) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System).

required_information(
    documentation(
        Documentation,
        recipient(Authority),
        necessary_information(
            assessment(compliance(System, requirement(chapter(3)))),
            clear_and_comprehensive_form
        )
    )
) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System),
    national_competent_authority(Authority).

required_information(
    documentation(
        Documentation,
        recipient(Body),
        necessary_information(
            assessment(compliance(System, requirement(chapter(3)))),
            clear_and_comprehensive_form
        )
    )
) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System),
    notified_body(Body).

required_content(
    documentation(Documentation, minimum(element_set(annex(iv))))
) :-
    required_technical_documentation(System),
    technical_documentation_of(Documentation, System).

% Small or medium enterprises include those that are start-ups.
permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex(iv)))
) :-
    small_or_medium_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    technical_documentation_of(Documentation, System),
    required_technical_documentation(System).

must_establish(
    Commission,
    simplified_technical_documentation_form(
        reference(article(11, 1)),
        targeted_at(needs(small_enterprise, microenterprise)),
        purpose(simplified_provision(element_set(annex(iv))))
    )
) :-
    commission(Commission).

must_use(
    Enterprise,
    form(
        reference(article(11, 1)),
        provision(Documentation, information_required(annex(iv)))
    )
) :-
    permitted_simplified_provision(
        provision(Enterprise, Documentation, element_set(annex(iv)))
    ),
    opts_for_simplified_provision(
        Enterprise,
        provision(Documentation, information_required(annex(iv)))
    ).

must_accept(
    Body,
    form(reference(article(11, 1)), purpose(conformity_assessment))
) :-
    notified_body(Body).

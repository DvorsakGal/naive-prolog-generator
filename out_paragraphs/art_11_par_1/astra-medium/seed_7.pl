:- module(technical_documentation, [
    required_technical_documentation/1,
    required_preparation/1,
    required_updating/1,
    required_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    small_or_medium_sized/1,
    permitted_simplified_documentation/1,
    must_establish/2,
    required_targeting/1,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system_applies/1.
:- dynamic small_or_medium_sized_enterprise_applies/1.
:- dynamic small_or_medium_sized_start_up_applies/1.
:- dynamic national_competent_authority_applies/1.
:- dynamic notified_body_applies/1.
:- dynamic commission_applies/1.
:- dynamic opts_to_provide/2.

required_technical_documentation(System) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_preparation(
    preparation(
        technical_documentation(System),
        before(placing_on_market(System))
    )
) :-
    required_technical_documentation(System).

required_preparation(
    preparation(
        technical_documentation(System),
        before(putting_into_service(System))
    )
) :-
    required_technical_documentation(System).

required_updating(technical_documentation(System)) :-
    required_technical_documentation(System).

required_demonstration(
    demonstration(
        technical_documentation(System),
        compliance(System, requirements(chp_3))
    )
) :-
    required_technical_documentation(System).

required_information_provision(
    provision(
        technical_documentation(System),
        Authority,
        necessary_information(
            assessment(compliance(System, requirements(chp_3)))
        ),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(System),
    national_competent_authority_applies(Authority).

required_information_provision(
    provision(
        technical_documentation(System),
        Body,
        necessary_information(
            assessment(compliance(System, requirements(chp_3)))
        ),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(System),
    notified_body_applies(Body).

required_minimum_content(
    content(technical_documentation(System), element_set(annex_iv))
) :-
    required_technical_documentation(System).

small_or_medium_sized(Enterprise) :-
    small_or_medium_sized_enterprise_applies(Enterprise).

small_or_medium_sized(Enterprise) :-
    small_or_medium_sized_start_up_applies(Enterprise).

permitted_simplified_documentation(
    provision(
        Enterprise,
        technical_documentation(System),
        element_set(annex_iv),
        simplified_manner
    )
) :-
    small_or_medium_sized(Enterprise),
    required_technical_documentation(System).

must_establish(
    Commission,
    simplified_technical_documentation_form(article(11, 1))
) :-
    commission_applies(Commission).

required_targeting(
    targeting(
        simplified_technical_documentation_form(article(11, 1)),
        needs(small_enterprise, microenterprise)
    )
).

must_use(
    Enterprise,
    use(
        simplified_technical_documentation_form(article(11, 1)),
        provision(
            technical_documentation(System),
            required_information(annex_iv),
            simplified_manner
        )
    )
) :-
    small_or_medium_sized(Enterprise),
    required_technical_documentation(System),
    opts_to_provide(
        Enterprise,
        provision(
            technical_documentation(System),
            required_information(annex_iv),
            simplified_manner
        )
    ).

must_accept(
    Body,
    acceptance(
        simplified_technical_documentation_form(article(11, 1)),
        purpose(conformity_assessment)
    )
) :-
    notified_body_applies(Body).

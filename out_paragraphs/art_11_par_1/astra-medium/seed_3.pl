:- module(technical_documentation, [
    required_technical_documentation/1,
    required_preparation/1,
    required_up_to_date_documentation/1,
    required_demonstration/1,
    required_information/1,
    required_clarity/1,
    required_comprehensiveness/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    objective_meet_small_enterprise_need/1,
    objective_meet_microenterprise_need/1,
    must_use/2,
    must_accept/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic high_risk/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_or_medium_sized_enterprise/1.
:- dynamic commission/1.
:- dynamic opts_for_simplified_provision/2.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

required_preparation(
    preparation(technical_documentation(System), before(placing_on_market(System)))
) :-
    required_technical_documentation(System).

required_preparation(
    preparation(technical_documentation(System), before(putting_into_service(System)))
) :-
    required_technical_documentation(System).

required_up_to_date_documentation(technical_documentation(System)) :-
    required_technical_documentation(System).

required_demonstration(
    demonstration(
        technical_documentation(System),
        compliance(System, requirement_set(chapter(3)))
    )
) :-
    required_technical_documentation(System).

required_information(
    provision(
        technical_documentation(System),
        Authority,
        necessary_information_for(
            assessment(compliance(System, requirement_set(chapter(3))))
        )
    )
) :-
    required_technical_documentation(System),
    national_competent_authority(Authority).

required_information(
    provision(
        technical_documentation(System),
        Body,
        necessary_information_for(
            assessment(compliance(System, requirement_set(chapter(3))))
        )
    )
) :-
    required_technical_documentation(System),
    notified_body(Body).

required_clarity(Provision) :-
    required_information(Provision).

required_comprehensiveness(Provision) :-
    required_information(Provision).

required_minimum_content(
    content(technical_documentation(System), element_set(annex(4)))
) :-
    required_technical_documentation(System).

% Small or medium-sized enterprises include start-ups that qualify as such.
permitted_simplified_provision(
    provision(
        Enterprise,
        technical_documentation(System),
        element_set(annex(4))
    )
) :-
    small_or_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System).

must_establish(
    Commission,
    simplified_technical_documentation_form(article(11, 1))
) :-
    commission(Commission).

objective_meet_small_enterprise_need(
    simplified_technical_documentation_form(article(11, 1))
).

objective_meet_microenterprise_need(
    simplified_technical_documentation_form(article(11, 1))
).

must_use(
    Enterprise,
    form_for(
        simplified_technical_documentation_form(article(11, 1)),
        technical_documentation(System)
    )
) :-
    small_or_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System),
    opts_for_simplified_provision(
        Enterprise,
        information(technical_documentation(System), annex(4))
    ).

must_accept(
    Body,
    form_for(
        simplified_technical_documentation_form(article(11, 1)),
        conformity_assessment
    )
) :-
    notified_body(Body).

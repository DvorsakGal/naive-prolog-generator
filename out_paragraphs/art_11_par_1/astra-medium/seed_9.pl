:- module(technical_documentation, [
    required_technical_documentation/1,
    required_preparation/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_inclusion/1,
    eligible_for_simplified_technical_documentation/1,
    permitted_simplified_provision/1,
    must_establish/2,
    objective_meet_small_and_microenterprise_need/1,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic small_or_medium_sized_enterprise_applies/1.
:- dynamic small_or_medium_sized_start_up_applies/1.
:- dynamic opts_for_simplified_provision/2.
:- dynamic notified_body_applies/1.

required_technical_documentation(technical_documentation(System)) :-
    high_risk(System).

required_preparation(
    preparation(
        technical_documentation(System),
        before(placement_on_market(System))
    )
) :-
    required_technical_documentation(technical_documentation(System)).

required_preparation(
    preparation(
        technical_documentation(System),
        before(putting_into_service(System))
    )
) :-
    required_technical_documentation(technical_documentation(System)).

required_updating(technical_documentation(System)) :-
    required_technical_documentation(technical_documentation(System)).

required_demonstration(
    demonstration(
        technical_documentation(System),
        compliance(System, requirement_set(chapter(3)))
    )
) :-
    required_technical_documentation(technical_documentation(System)).

required_information(
    information(
        technical_documentation(System),
        recipient(national_competent_authority),
        necessary_for(
            assessment(compliance(System, requirement_set(chapter(3))))
        ),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(technical_documentation(System)).

required_information(
    information(
        technical_documentation(System),
        recipient(notified_body),
        necessary_for(
            assessment(compliance(System, requirement_set(chapter(3))))
        ),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(technical_documentation(System)).

required_inclusion(
    inclusion(Documentation, minimum(element_set(annex(iv))))
) :-
    required_technical_documentation(Documentation).

eligible_for_simplified_technical_documentation(Enterprise) :-
    small_or_medium_sized_enterprise_applies(Enterprise).

eligible_for_simplified_technical_documentation(Enterprise) :-
    small_or_medium_sized_start_up_applies(Enterprise).

permitted_simplified_provision(
    provision(Enterprise, annex_iv_element_set(Documentation))
) :-
    eligible_for_simplified_technical_documentation(Enterprise),
    required_technical_documentation(Documentation).

must_establish(
    commission,
    simplified_technical_documentation_form(article(11, 1))
).

objective_meet_small_and_microenterprise_need(
    simplified_technical_documentation_form(article(11, 1))
).

must_use(
    Enterprise,
    form_for(
        simplified_technical_documentation_form(article(11, 1)),
        provision(annex_iv_information(Documentation))
    )
) :-
    eligible_for_simplified_technical_documentation(Enterprise),
    required_technical_documentation(Documentation),
    opts_for_simplified_provision(
        Enterprise,
        annex_iv_information(Documentation)
    ).

must_accept(
    Body,
    form_for(
        simplified_technical_documentation_form(article(11, 1)),
        conformity_assessment
    )
) :-
    notified_body_applies(Body).

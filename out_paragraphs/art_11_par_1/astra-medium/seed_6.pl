:- module(technical_documentation, [
    required_technical_documentation/1,
    required_prior_drawing_up/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    simplified/1,
    objective_address_enterprise_need/1,
    must_use/2,
    must_accept/2
]).

:- dynamic artificial_intelligence_system_applies/1.
:- dynamic high_risk/1.
:- dynamic national_competent_authority_applies/1.
:- dynamic notified_body_applies/1.
:- dynamic small_or_medium_sized_enterprise_applies/1.
:- dynamic opts_to_provide_information/2.

required_technical_documentation(System) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_prior_drawing_up(
    drawing_up(technical_documentation(System), before(placing_on_market(System)))
) :-
    required_technical_documentation(System).

required_prior_drawing_up(
    drawing_up(technical_documentation(System), before(putting_into_service(System)))
) :-
    required_technical_documentation(System).

required_updating(keeping_up_to_date(technical_documentation(System))) :-
    required_technical_documentation(System).

required_compliance_demonstration(
    demonstration(
        technical_documentation(System),
        compliance(System, requirement_set(chp_3))
    )
) :-
    required_technical_documentation(System).

required_information_provision(
    provision(
        technical_documentation(System),
        Authority,
        necessary_information(
            assess_compliance(System, requirement_set(chp_3)),
            form(clear, comprehensive)
        )
    )
) :-
    required_technical_documentation(System),
    national_competent_authority_applies(Authority).

required_information_provision(
    provision(
        technical_documentation(System),
        Body,
        necessary_information(
            assess_compliance(System, requirement_set(chp_3)),
            form(clear, comprehensive)
        )
    )
) :-
    required_technical_documentation(System),
    notified_body_applies(Body).

required_minimum_content(
    content(technical_documentation(System), element_set(annex_iv))
) :-
    required_technical_documentation(System).

% The enterprise condition includes start-ups that are small or medium-sized enterprises.
permitted_simplified_provision(
    provision(
        Enterprise,
        element_set(annex_iv, technical_documentation(System)),
        simplified_manner
    )
) :-
    small_or_medium_sized_enterprise_applies(Enterprise),
    required_technical_documentation(System).

must_establish(
    commission,
    technical_documentation_form(article(11, 1))
).

simplified(technical_documentation_form(article(11, 1))).

objective_address_enterprise_need(
    purpose(
        technical_documentation_form(article(11, 1)),
        need(small_enterprise)
    )
).

objective_address_enterprise_need(
    purpose(
        technical_documentation_form(article(11, 1)),
        need(microenterprise)
    )
).

must_use(
    Enterprise,
    documentation_form(
        technical_documentation_form(article(11, 1)),
        technical_documentation(System)
    )
) :-
    small_or_medium_sized_enterprise_applies(Enterprise),
    opts_to_provide_information(
        Enterprise,
        provision(
            element_set(annex_iv, technical_documentation(System)),
            simplified_manner
        )
    ).

must_accept(
    Body,
    form_for_purpose(
        technical_documentation_form(article(11, 1)),
        conformity_assessment
    )
) :-
    notified_body_applies(Body).

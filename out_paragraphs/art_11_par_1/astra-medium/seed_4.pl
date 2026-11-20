:- module(technical_documentation, [
    required_preparation/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    objective_meeting_small_and_microenterprise_need/1,
    refers_to_form/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system_applies/1.
:- dynamic small_and_medium_sized_enterprise_applies/1.
:- dynamic national_competent_authority_applies/1.
:- dynamic notified_body_applies/1.
:- dynamic opts_for/2.

required_preparation(
    preparation(
        technical_documentation(System),
        before(placing_on_market(System))
    )
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_preparation(
    preparation(
        technical_documentation(System),
        before(putting_into_service(System))
    )
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_updating(technical_documentation(System)) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_compliance_demonstration(
    demonstration(
        technical_documentation(System),
        compliance(System, requirement_set(chp_3))
    )
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_information_provision(
    provision(
        technical_documentation(System),
        Authority,
        necessary_information(
            assessment(compliance(System, requirement_set(chp_3)))
        ),
        form(clear, comprehensive)
    )
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System),
    national_competent_authority_applies(Authority).

required_information_provision(
    provision(
        technical_documentation(System),
        Body,
        necessary_information(
            assessment(compliance(System, requirement_set(chp_3)))
        ),
        form(clear, comprehensive)
    )
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System),
    notified_body_applies(Body).

required_minimum_content(
    content(technical_documentation(System), element_set(annex_iv))
) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

% Small and medium-sized enterprise status includes qualifying start-ups.
permitted_simplified_provision(
    provision(
        Enterprise,
        annex_iv_element_set(technical_documentation(System)),
        simplified_manner
    )
) :-
    small_and_medium_sized_enterprise_applies(Enterprise),
    artificial_intelligence_system_applies(System),
    high_risk(System).

must_establish(commission, simplified_technical_documentation_form).

objective_meeting_small_and_microenterprise_need(
    simplified_technical_documentation_form
).

refers_to_form(article_11_1, simplified_technical_documentation_form).

must_use(
    Enterprise,
    form(
        simplified_technical_documentation_form,
        provision(
            annex_iv_element_set(technical_documentation(System)),
            simplified_manner
        )
    )
) :-
    permitted_simplified_provision(
        provision(
            Enterprise,
            annex_iv_element_set(technical_documentation(System)),
            simplified_manner
        )
    ),
    opts_for(
        Enterprise,
        provision(
            annex_iv_element_set(technical_documentation(System)),
            simplified_manner
        )
    ).

must_accept(
    Body,
    form(
        simplified_technical_documentation_form,
        purpose(conformity_assessment)
    )
) :-
    notified_body_applies(Body).

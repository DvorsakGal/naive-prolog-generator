:- module(technical_documentation, [
    required_pre_market_documentation/1,
    required_pre_service_documentation/1,
    required_up_to_date_documentation/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    eligible_for_simplified_documentation/1,
    permitted_simplified_documentation/1,
    must_establish/2,
    required_needs_alignment/1,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk_artificial_intelligence_system/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_or_medium_sized_enterprise/1.
:- dynamic start_up/1.
:- dynamic opts_for_simplified_documentation/2.

required_pre_market_documentation(
    drawing_up(technical_documentation(System), before(placement_on_market(System)))
) :-
    high_risk_artificial_intelligence_system(System).

required_pre_service_documentation(
    drawing_up(technical_documentation(System), before(putting_into_service(System)))
) :-
    high_risk_artificial_intelligence_system(System).

required_up_to_date_documentation(technical_documentation(System)) :-
    high_risk_artificial_intelligence_system(System).

required_compliance_demonstration(
    drawing_up(
        technical_documentation(System),
        demonstrate(compliance(System, requirement_set(chp_3)))
    )
) :-
    high_risk_artificial_intelligence_system(System).

required_information_provision(
    provision(
        technical_documentation(System),
        Authority,
        necessary_information(assess_compliance(System, requirement_set(chp_3))),
        form(clear, comprehensive)
    )
) :-
    high_risk_artificial_intelligence_system(System),
    national_competent_authority(Authority).

required_information_provision(
    provision(
        technical_documentation(System),
        Body,
        necessary_information(assess_compliance(System, requirement_set(chp_3))),
        form(clear, comprehensive)
    )
) :-
    high_risk_artificial_intelligence_system(System),
    notified_body(Body).

required_minimum_content(
    content(technical_documentation(System), element_set(annex_iv))
) :-
    high_risk_artificial_intelligence_system(System).

eligible_for_simplified_documentation(Enterprise) :-
    small_or_medium_sized_enterprise(Enterprise).

eligible_for_simplified_documentation(Enterprise) :-
    small_or_medium_sized_enterprise(Enterprise),
    start_up(Enterprise).

permitted_simplified_documentation(
    provision(
        Enterprise,
        technical_documentation(System),
        element_set(annex_iv),
        simplified_manner
    )
) :-
    eligible_for_simplified_documentation(Enterprise),
    high_risk_artificial_intelligence_system(System).

must_establish(
    commission,
    simplified_technical_documentation_form(article_11(1))
).

required_needs_alignment(
    alignment(
        simplified_technical_documentation_form(article_11(1)),
        need_set(small_enterprise)
    )
).

required_needs_alignment(
    alignment(
        simplified_technical_documentation_form(article_11(1)),
        need_set(microenterprise)
    )
).

must_use(
    Enterprise,
    form_for(
        simplified_technical_documentation_form(article_11(1)),
        provision(
            technical_documentation(System),
            required_information(annex_iv),
            simplified_manner
        )
    )
) :-
    eligible_for_simplified_documentation(Enterprise),
    high_risk_artificial_intelligence_system(System),
    opts_for_simplified_documentation(Enterprise, technical_documentation(System)).

must_accept(
    Body,
    form_for(
        simplified_technical_documentation_form(article_11(1)),
        conformity_assessment
    )
) :-
    notified_body(Body).

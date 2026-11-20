:- module(technical_documentation, [
    required_preparation/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    small_or_medium_enterprise_applies/1,
    must_establish/2,
    objective_meeting_need/1,
    must_use/2,
    must_accept/2
]).

:- dynamic technical_documentation_applies/1.
:- dynamic high_risk_artificial_intelligence_system_applies/1.
:- dynamic small_or_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_provision/2.
:- dynamic notified_body/1.

required_preparation(preparation(Documentation, before(placement_on_market(System)))) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_preparation(preparation(Documentation, before(putting_into_service(System)))) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_updating(Documentation) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_compliance_demonstration(
    preparation(Documentation, demonstrating(compliance(System, requirement(chp_3))))
) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_information_provision(
    preparation(Documentation,
        providing(national_competent_authority,
            necessary_information(
                assessment(compliance(System, requirement(chp_3))),
                clear_and_comprehensive_form)))
) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_information_provision(
    preparation(Documentation,
        providing(notified_body,
            necessary_information(
                assessment(compliance(System, requirement(chp_3))),
                clear_and_comprehensive_form)))
) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

required_minimum_content(content(Documentation, element_set(annex_iv))) :-
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

small_or_medium_enterprise_applies(Enterprise) :-
    small_or_medium_enterprise(Enterprise).

small_or_medium_enterprise_applies(Enterprise) :-
    start_up(Enterprise),
    small_or_medium_enterprise(Enterprise).

permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex_iv))
) :-
    small_or_medium_enterprise_applies(Enterprise),
    provides_documentation(Enterprise, Documentation),
    technical_documentation_applies(documentation(Documentation, System)),
    high_risk_artificial_intelligence_system_applies(System).

must_establish(commission, simplified_technical_documentation_form(article_11_1)).

objective_meeting_need(
    targeting(simplified_technical_documentation_form(article_11_1), small_enterprise)
).

objective_meeting_need(
    targeting(simplified_technical_documentation_form(article_11_1), microenterprise)
).

must_use(Enterprise,
    form_for(
        simplified_technical_documentation_form(article_11_1),
        provision(Documentation, required_information(annex_iv))))
 :-
    permitted_simplified_provision(
        provision(Enterprise, Documentation, element_set(annex_iv))),
    opts_for_simplified_provision(
        Enterprise, provision(Documentation, required_information(annex_iv))).

must_accept(Body,
    form_for(
        simplified_technical_documentation_form(article_11_1),
        conformity_assessment)) :-
    notified_body(Body).

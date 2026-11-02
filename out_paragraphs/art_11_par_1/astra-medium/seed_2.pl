:- module(technical_documentation, [
    required_technical_documentation/1,
    technical_documentation_applies/1,
    required_drafting/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    required_targeting/1,
    identifies_form/2,
    must_use/2,
    must_accept/2
]).

:- dynamic artificial_intelligence_system/1.
:- dynamic high_risk/1.
:- dynamic technical_documentation/1.
:- dynamic documents_system/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_and_medium_sized_enterprise/1.
:- dynamic start_up/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_provision/2.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

technical_documentation_applies(documentation(Documentation, System)) :-
    technical_documentation(Documentation),
    documents_system(Documentation, System),
    required_technical_documentation(System).

required_drafting(drafting(Documentation, before(placing_on_market(System)))) :-
    technical_documentation_applies(documentation(Documentation, System)).

required_drafting(drafting(Documentation, before(putting_into_service(System)))) :-
    technical_documentation_applies(documentation(Documentation, System)).

required_updating(keeping_up_to_date(Documentation)) :-
    technical_documentation_applies(documentation(Documentation, _System)).

required_compliance_demonstration(
    drafting(Documentation, demonstrates(compliance(System, requirement_set(chp_3))))
) :-
    technical_documentation_applies(documentation(Documentation, System)).

required_information_provision(
    provision(
        Documentation,
        Authority,
        necessary_information(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    technical_documentation_applies(documentation(Documentation, System)),
    national_competent_authority(Authority).

required_information_provision(
    provision(
        Documentation,
        Body,
        necessary_information(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    technical_documentation_applies(documentation(Documentation, System)),
    notified_body(Body).

required_minimum_content(content(Documentation, element_set(annex_iv))) :-
    technical_documentation_applies(documentation(Documentation, _System)).

permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex_iv))
) :-
    small_and_medium_sized_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    technical_documentation_applies(documentation(Documentation, _System)).

% Start-ups that are SMEs are included in the permission.
permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex_iv))
) :-
    start_up(Enterprise),
    small_and_medium_sized_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    technical_documentation_applies(documentation(Documentation, _System)).

must_establish(commission, simplified_technical_documentation_form).

required_targeting(
    targeting(simplified_technical_documentation_form, need(small_enterprise))
).

required_targeting(
    targeting(simplified_technical_documentation_form, need(microenterprise))
).

identifies_form(article_11_1, simplified_technical_documentation_form).

must_use(Enterprise, Form) :-
    small_and_medium_sized_enterprise(Enterprise),
    opts_for_simplified_provision(
        Enterprise,
        required_information(Documentation, annex_iv)
    ),
    technical_documentation_applies(documentation(Documentation, _System)),
    identifies_form(article_11_1, Form).

must_accept(Body, use(Form, purpose(conformity_assessment))) :-
    notified_body(Body),
    identifies_form(article_11_1, Form).

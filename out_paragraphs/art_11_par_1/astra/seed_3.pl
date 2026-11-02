:- module(technical_documentation, [
    required_drawing_up/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_inclusion/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic documents_system/2.
:- dynamic small_or_medium_sized_enterprise/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic opts_for_simplified_provision/2.

required_drawing_up(before(Documentation, placing_on_market(System))) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_drawing_up(before(Documentation, putting_into_service(System))) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_updating(Documentation) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_demonstration(
    drawing_up(Documentation, compliance(System, requirement_set(chp_3)))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_information(
    documentation_information(
        Documentation,
        recipient(Authority),
        necessary_for(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System),
    national_competent_authority(Authority).

required_information(
    documentation_information(
        Documentation,
        recipient(Body),
        necessary_for(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System),
    notified_body(Body).

required_inclusion(
    documentation_content(Documentation, minimum(element_set(annex_iv)))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

% Small and medium-sized enterprises include start-ups meeting that description.
permitted_simplified_provision(
    provision(Enterprise, annex_iv_element_set(Documentation), simplified_manner)
) :-
    small_or_medium_sized_enterprise(Enterprise),
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

must_establish(
    commission,
    simplified_technical_documentation_form(
        reference(article_11_1),
        targeted_at(needs(small_enterprise, microenterprise)),
        purpose(simplified_provision(annex_iv_element_set))
    )
).

must_use(
    Enterprise,
    form(
        simplified_technical_documentation_form(reference(article_11_1)),
        provision(annex_iv_information(Documentation))
    )
) :-
    permitted_simplified_provision(
        provision(Enterprise, annex_iv_element_set(Documentation), simplified_manner)
    ),
    opts_for_simplified_provision(Enterprise, annex_iv_information(Documentation)).

must_accept(
    Body,
    form(
        simplified_technical_documentation_form(reference(article_11_1)),
        purpose(conformity_assessment)
    )
) :-
    notified_body(Body).

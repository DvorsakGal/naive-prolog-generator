:- module(technical_documentation, [
    required_technical_documentation/1,
    required_preparation/1,
    required_updating/1,
    required_compliance_demonstration/1,
    must_provide/2,
    required_minimum_content/1,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic documents_system/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_or_medium_sized_enterprise/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_provision/2.

required_technical_documentation(System) :-
    ai_system(System),
    high_risk(System).

required_preparation(
    technical_documentation(Documentation, before(placing_on_market(System)))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_preparation(
    technical_documentation(Documentation, before(putting_into_service(System)))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_updating(Documentation) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

required_compliance_demonstration(
    technical_documentation(Documentation, compliance(System, requirement(chapter(3))))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

must_provide(
    Documentation,
    information(
        Authority,
        necessary_for(assessing(compliance(System, requirement(chapter(3))))),
        form(clear, comprehensive)
    )
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System),
    national_competent_authority(Authority).

must_provide(
    Documentation,
    information(
        Body,
        necessary_for(assessing(compliance(System, requirement(chapter(3))))),
        form(clear, comprehensive)
    )
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System),
    notified_body(Body).

required_minimum_content(
    technical_documentation(Documentation, element_set(annex(iv)))
) :-
    ai_system(System),
    high_risk(System),
    documents_system(Documentation, System).

% Small or medium-sized enterprise status includes qualifying start-ups.
permitted_simplified_provision(
    provision(Enterprise, Documentation, element_set(annex(iv)))
) :-
    small_or_medium_sized_enterprise(Enterprise),
    provides_documentation(Enterprise, Documentation),
    documents_system(Documentation, System),
    ai_system(System),
    high_risk(System).

must_establish(
    commission,
    simplified_technical_documentation_form(
        article(11, 1),
        targeted_at(needs(small_enterprise, microenterprise))
    )
).

must_use(
    Enterprise,
    form(article(11, 1), for(Documentation))
) :-
    permitted_simplified_provision(
        provision(Enterprise, Documentation, element_set(annex(iv)))
    ),
    opts_for_simplified_provision(
        Enterprise,
        information(Documentation, annex(iv))
    ).

must_accept(
    Body,
    form(article(11, 1), for(conformity_assessment))
) :-
    notified_body(Body).

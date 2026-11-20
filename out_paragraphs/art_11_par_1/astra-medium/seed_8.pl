:- module(technical_documentation, [
    required_technical_documentation/1,
    required_prior_drawing_up/1,
    required_up_to_date_maintenance/1,
    must_demonstrate/2,
    must_provide/2,
    must_contain/2,
    permitted_simplified_provision/1,
    must_establish/2,
    objective_meeting_need/1,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_or_medium_sized_enterprise/1.
:- dynamic opts_for/2.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

required_prior_drawing_up(
    drawing_up(technical_documentation(System),
               before(placing_on_market(System)))
) :-
    required_technical_documentation(System).

required_prior_drawing_up(
    drawing_up(technical_documentation(System),
               before(putting_into_service(System)))
) :-
    required_technical_documentation(System).

required_up_to_date_maintenance(technical_documentation(System)) :-
    required_technical_documentation(System).

must_demonstrate(
    technical_documentation(System),
    compliance(System, requirement_set(chp_3))
) :-
    required_technical_documentation(System).

must_provide(
    technical_documentation(System),
    information(
        recipient(Authority),
        necessary_for(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(System),
    national_competent_authority(Authority).

must_provide(
    technical_documentation(System),
    information(
        recipient(Body),
        necessary_for(assessment(compliance(System, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    required_technical_documentation(System),
    notified_body(Body).

must_contain(
    technical_documentation(System),
    minimum_content(element_set(annex_iv))
) :-
    required_technical_documentation(System).

% The enterprise condition includes start-ups that are SMEs.
permitted_simplified_provision(
    provision(
        Enterprise,
        element_set(technical_documentation(System), annex_iv),
        manner(simplified)
    )
) :-
    small_or_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System).

must_establish(
    commission,
    simplified_technical_documentation_form(article_11_1)
).

objective_meeting_need(
    purpose(
        simplified_technical_documentation_form(article_11_1),
        need(small_enterprise)
    )
).

objective_meeting_need(
    purpose(
        simplified_technical_documentation_form(article_11_1),
        need(microenterprise)
    )
).

must_use(
    Enterprise,
    simplified_technical_documentation_form(article_11_1)
) :-
    small_or_medium_sized_enterprise(Enterprise),
    required_technical_documentation(System),
    opts_for(
        Enterprise,
        provision(
            Enterprise,
            element_set(technical_documentation(System), annex_iv),
            manner(simplified)
        )
    ).

must_accept(
    Body,
    use(
        simplified_technical_documentation_form(article_11_1),
        purpose(conformity_assessment)
    )
) :-
    notified_body(Body).

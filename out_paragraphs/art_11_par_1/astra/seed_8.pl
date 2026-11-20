:- module(technical_documentation, [
    required_technical_documentation/1,
    required_preparation/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_content/1,
    permitted_simplified_submission/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic ai_system_applies/1.
:- dynamic high_risk/1.
:- dynamic small_and_medium_enterprise_applies/1.
:- dynamic start_up/1.
:- dynamic commission_applies/1.
:- dynamic notified_body_applies/1.
:- dynamic opts_for/2.

required_technical_documentation(System) :-
    ai_system_applies(System),
    high_risk(System).

required_preparation(
    technical_documentation(System, before(placing_on_market(System)))
) :-
    required_technical_documentation(System).

required_preparation(
    technical_documentation(System, before(putting_into_service(System)))
) :-
    required_technical_documentation(System).

required_updating(technical_documentation(System, kept_up_to_date)) :-
    required_technical_documentation(System).

required_demonstration(
    technical_documentation(System, compliance(System, requirement(chp_3)))
) :-
    required_technical_documentation(System).

required_information(
    technical_documentation(
        System,
        information(
            recipient(national_competent_authority),
            necessary_for(assessing(compliance(System, requirement(chp_3)))),
            form(clear, comprehensive)
        )
    )
) :-
    required_technical_documentation(System).

required_information(
    technical_documentation(
        System,
        information(
            recipient(notified_body),
            necessary_for(assessing(compliance(System, requirement(chp_3)))),
            form(clear, comprehensive)
        )
    )
) :-
    required_technical_documentation(System).

required_content(
    technical_documentation(System, minimum(element_set(annex_iv)))
) :-
    required_technical_documentation(System).

permitted_simplified_submission(
    submission(Enterprise, technical_documentation(System), element_set(annex_iv))
) :-
    small_and_medium_enterprise_applies(Enterprise),
    required_technical_documentation(System).

permitted_simplified_submission(
    submission(Enterprise, technical_documentation(System), element_set(annex_iv))
) :-
    small_and_medium_enterprise_applies(Enterprise),
    start_up(Enterprise),
    required_technical_documentation(System).

must_establish(
    Commission,
    simplified_technical_documentation_form(
        article_11_1,
        targeted_at(needs(small_enterprise, microenterprise))
    )
) :-
    commission_applies(Commission).

must_use(
    Enterprise,
    form(
        article_11_1,
        simplified_submission(
            technical_documentation(System),
            information_required(annex_iv)
        )
    )
) :-
    small_and_medium_enterprise_applies(Enterprise),
    required_technical_documentation(System),
    opts_for(
        Enterprise,
        simplified_submission(
            technical_documentation(System),
            information_required(annex_iv)
        )
    ).

must_accept(
    NotifiedBody,
    simplified_technical_documentation_form(
        article_11_1,
        purpose(conformity_assessment)
    )
) :-
    notified_body_applies(NotifiedBody).

:- module(technical_documentation, [
    required_technical_documentation/1,
    required_drawing_up/1,
    required_updating/1,
    required_demonstration/1,
    required_information/1,
    required_content/1,
    permitted_simplified_submission/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic technical_documentation_applies/1.
:- dynamic small_or_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic provides_documentation/2.
:- dynamic opts_for_simplified_submission/2.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.

required_technical_documentation(System) :-
    artificial_intelligence_system(System),
    high_risk(System).

required_drawing_up(before(technical_documentation(System), placing_on_market(System))) :-
    required_technical_documentation(System).

required_drawing_up(before(technical_documentation(System), putting_into_service(System))) :-
    required_technical_documentation(System).

required_updating(technical_documentation(System)) :-
    required_technical_documentation(System).

required_demonstration(
    technical_documentation(System, compliance(System, requirement(chp_3))))
    :-
    required_technical_documentation(System).

required_information(
    provision(technical_documentation(System), Authority,
        necessary_information(
            assess_compliance(System, requirement(chp_3)),
            clear_and_comprehensive_form)))
    :-
    required_technical_documentation(System),
    national_competent_authority(Authority).

required_information(
    provision(technical_documentation(System), Body,
        necessary_information(
            assess_compliance(System, requirement(chp_3)),
            clear_and_comprehensive_form)))
    :-
    required_technical_documentation(System),
    notified_body(Body).

required_content(
    technical_documentation(System, minimum_element_set(annex_iv)))
    :-
    required_technical_documentation(System).

permitted_simplified_submission(
    submission(Enterprise, technical_documentation(System), element_set(annex_iv)))
    :-
    small_or_medium_enterprise(Enterprise),
    provides_documentation(Enterprise, System),
    required_technical_documentation(System).

% Start-ups that are SMEs are included in the permission.
permitted_simplified_submission(
    submission(Enterprise, technical_documentation(System), element_set(annex_iv)))
    :-
    start_up(Enterprise),
    small_or_medium_enterprise(Enterprise),
    provides_documentation(Enterprise, System),
    required_technical_documentation(System).

must_establish(Commission,
    simplified_technical_documentation_form(
        article_11_1,
        targeted_needs(small_enterprise, microenterprise))) :-
    commission(Commission).

must_use(Enterprise,
    form(article_11_1, technical_documentation(System))) :-
    permitted_simplified_submission(
        submission(Enterprise, technical_documentation(System), element_set(annex_iv))),
    opts_for_simplified_submission(Enterprise,
        information(technical_documentation(System), annex_iv)).

must_accept(Body,
    form(article_11_1, purpose(conformity_assessment))) :-
    notified_body(Body).

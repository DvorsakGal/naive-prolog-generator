:- module(technical_documentation, [
    technical_documentation_applies/1,
    required_technical_documentation/1,
    required_drawing_up/1,
    required_up_to_date/1,
    required_compliance_demonstration/1,
    documentation_information_applies/1,
    required_information_provision/1,
    required_clear_form/1,
    required_comprehensive_form/1,
    must_contain/2,
    permitted_simplified_provision/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic artificial_intelligence_system_applies/1.
:- dynamic high_risk/1.
:- dynamic small_or_medium_sized_enterprise_applies/1.
:- dynamic opts_for_provision/2.
:- dynamic notified_body_applies/1.

technical_documentation_applies(technical_documentation(System)) :-
    artificial_intelligence_system_applies(System),
    high_risk(System).

required_technical_documentation(System) :-
    technical_documentation_applies(technical_documentation(System)).

required_drawing_up(
    drawing_up(technical_documentation(System),
               before(placing_on_market(System)))
) :-
    technical_documentation_applies(technical_documentation(System)).

required_drawing_up(
    drawing_up(technical_documentation(System),
               before(putting_into_service(System)))
) :-
    technical_documentation_applies(technical_documentation(System)).

required_up_to_date(Documentation) :-
    technical_documentation_applies(Documentation).

required_compliance_demonstration(
    demonstration(technical_documentation(System),
                  compliance(System, requirement_set(chapter(3)))))
) :-
    technical_documentation_applies(technical_documentation(System)).

documentation_information_applies(
    information(technical_documentation(System),
                recipient(national_competent_authority),
                necessary_for(assessment(
                    compliance(System, requirement_set(chapter(3)))))))
) :-
    technical_documentation_applies(technical_documentation(System)).

documentation_information_applies(
    information(technical_documentation(System),
                recipient(notified_body),
                necessary_for(assessment(
                    compliance(System, requirement_set(chapter(3)))))))
) :-
    technical_documentation_applies(technical_documentation(System)).

required_information_provision(Information) :-
    documentation_information_applies(Information).

required_clear_form(Information) :-
    documentation_information_applies(Information).

required_comprehensive_form(Information) :-
    documentation_information_applies(Information).

must_contain(Documentation, minimum_element_set(annex(iv))) :-
    technical_documentation_applies(Documentation).

% The enterprise category includes start-ups that are small or medium-sized.
permitted_simplified_provision(
    provision(Enterprise,
              annex_element_set(annex(iv), technical_documentation(System)),
              simplified_manner)
) :-
    small_or_medium_sized_enterprise_applies(Enterprise),
    technical_documentation_applies(technical_documentation(System)).

must_establish(
    commission,
    simplified_technical_documentation_form(
        article(11, 1),
        targeted_at(need(small_enterprise), need(microenterprise)))
).

must_use(
    Enterprise,
    simplified_technical_documentation_form(article(11, 1))
) :-
    permitted_simplified_provision(
        provision(Enterprise,
                  annex_element_set(annex(iv), technical_documentation(System)),
                  simplified_manner)),
    opts_for_provision(
        Enterprise,
        provision(
            annex_element_set(annex(iv), technical_documentation(System)),
            simplified_manner)).

must_accept(
    Body,
    use(simplified_technical_documentation_form(article(11, 1)),
        purpose(conformity_assessment))
) :-
    notified_body_applies(Body).

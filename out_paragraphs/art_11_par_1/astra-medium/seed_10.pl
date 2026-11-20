:- module(technical_documentation, [
    required_preparation/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_information_provision/1,
    required_clarity/1,
    required_comprehensiveness/1,
    required_inclusion/1,
    permitted_simplified_provision/1,
    must_establish/2,
    objective_meeting_enterprise_need/1,
    must_use/2,
    must_accept/2,
    identifies_form/2
]).

:- dynamic high_risk/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic small_or_medium_sized/1.
:- dynamic opts_for_simplified_provision/2.

required_preparation(
    preparation(technical_documentation(System),
                before(placing_on_market(System)))
) :-
    high_risk(System).

required_preparation(
    preparation(technical_documentation(System),
                before(putting_into_service(System)))
) :-
    high_risk(System).

required_updating(technical_documentation(System)) :-
    high_risk(System).

required_compliance_demonstration(
    demonstration(technical_documentation(System),
                  compliance(System, requirement_set(chapter(3)))))
    :-
    high_risk(System).

required_information_provision(
    provision(technical_documentation(System),
              Authority,
              necessary_information(
                  assessment(compliance(System, requirement_set(chapter(3)))))))
    :-
    high_risk(System),
    national_competent_authority(Authority).

required_information_provision(
    provision(technical_documentation(System),
              Body,
              necessary_information(
                  assessment(compliance(System, requirement_set(chapter(3)))))))
    :-
    high_risk(System),
    notified_body(Body).

required_clarity(Provision) :-
    required_information_provision(Provision).

required_comprehensiveness(Provision) :-
    required_information_provision(Provision).

required_inclusion(
    minimum_content(technical_documentation(System),
                    element_set(annex(4))))
    :-
    high_risk(System).

% Small or medium-sized enterprises include start-ups that are SMEs.
permitted_simplified_provision(
    provision(Enterprise,
              element_set(annex(4), technical_documentation(System))))
    :-
    small_or_medium_sized(Enterprise),
    high_risk(System).

must_establish(commission, simplified_technical_documentation_form).

objective_meeting_enterprise_need(
    targeted_form(simplified_technical_documentation_form,
                  small_enterprise)).

objective_meeting_enterprise_need(
    targeted_form(simplified_technical_documentation_form,
                  microenterprise)).

identifies_form(article(11, 1), simplified_technical_documentation_form).

must_use(
    Enterprise,
    form(simplified_technical_documentation_form,
         provision(element_set(annex(4), technical_documentation(System)))))
    :-
    small_or_medium_sized(Enterprise),
    high_risk(System),
    opts_for_simplified_provision(
        Enterprise,
        element_set(annex(4), technical_documentation(System))).

must_accept(
    Body,
    form(simplified_technical_documentation_form,
         purpose(conformity_assessment)))
    :-
    notified_body(Body).

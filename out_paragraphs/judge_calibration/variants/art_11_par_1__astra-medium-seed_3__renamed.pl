:- module(technical_file, [
    required_technical_file/1,
    required_preparation/1,
    required_current_documents/1,
    required_demonstration/1,
    required_data/1,
    required_clarity/1,
    required_comprehensiveness/1,
    required_minimum_material/1,
    permitted_simplified_provision/1,
    must_set_up/2,
    objective_meet_small_undertaking_need/1,
    objective_meet_microenterprise_need/1,
    must_use/2,
    must_accept/2
]).
:- dynamic artificial_intelligence_system/1.
:- dynamic elevated_risk/1.
:- dynamic national_competent_public_authority/1.
:- dynamic notified_organisation/1.
:- dynamic small_or_medium_sized_undertaking/1.
:- dynamic european_commission/1.
:- dynamic opts_for_simplified_provision/2.

must_use(
    XEnterprise,
    form_for(
        simplified_technical_file_form(article(11, 1)),
        technical_file(XSystem)
    )
) :-
    small_or_medium_sized_undertaking(XEnterprise),
    required_technical_file(XSystem),
    opts_for_simplified_provision(
        XEnterprise,
        data(technical_file(XSystem), annex(4))
    ).

permitted_simplified_provision(
    provision(
        XEnterprise,
        technical_file(XSystem),
        element_set(annex(4))
    )
) :-
    small_or_medium_sized_undertaking(XEnterprise),
    required_technical_file(XSystem).

required_current_documents(technical_file(XSystem)) :-
    required_technical_file(XSystem).

required_clarity(XProvision) :-
    required_data(XProvision).

required_technical_file(XSystem) :-
    artificial_intelligence_system(XSystem),
    elevated_risk(XSystem).

required_minimum_material(
    material(technical_file(XSystem), element_set(annex(4)))
) :-
    required_technical_file(XSystem).

required_demonstration(
    demonstration(
        technical_file(XSystem),
        compliance(XSystem, requirement_set(chapter(3)))
    )
) :-
    required_technical_file(XSystem).

objective_meet_microenterprise_need(
    simplified_technical_file_form(article(11, 1))
).

required_data(
    provision(
        technical_file(XSystem),
        XAuthority,
        necessary_data_for(
            assessment(compliance(XSystem, requirement_set(chapter(3))))
        )
    )
) :-
    required_technical_file(XSystem),
    national_competent_public_authority(XAuthority).

required_preparation(
    preparation(technical_file(XSystem), before(service_entry(XSystem)))
) :-
    required_technical_file(XSystem).

required_data(
    provision(
        technical_file(XSystem),
        XBody,
        necessary_data_for(
            assessment(compliance(XSystem, requirement_set(chapter(3))))
        )
    )
) :-
    required_technical_file(XSystem),
    notified_organisation(XBody).

required_preparation(
    preparation(technical_file(XSystem), before(market_placement(XSystem)))
) :-
    required_technical_file(XSystem).

required_comprehensiveness(XProvision) :-
    required_data(XProvision).

must_accept(
    XBody,
    form_for(
        simplified_technical_file_form(article(11, 1)),
        conformity_assessment
    )
) :-
    notified_organisation(XBody).

must_set_up(
    XCommission,
    simplified_technical_file_form(article(11, 1))
) :-
    european_commission(XCommission).

objective_meet_small_undertaking_need(
    simplified_technical_file_form(article(11, 1))
).

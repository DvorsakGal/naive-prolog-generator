:- module(technical_file, [
    required_pre_market_documents/1,
    required_pre_service_documents/1,
    required_current_documents/1,
    required_compliance_demonstration/1,
    required_data_provision/1,
    required_minimum_material/1,
    eligible_for_simplified_documents/1,
    permitted_simplified_documents/1,
    must_set_up/2,
    required_needs_alignment/1,
    must_use/2,
    must_accept/2
]).
:- dynamic elevated_risk_artificial_intelligence_system/1.
:- dynamic national_competent_public_authority/1.
:- dynamic notified_organisation/1.
:- dynamic small_or_medium_sized_undertaking/1.
:- dynamic start_up/1.
:- dynamic opts_for_simplified_documents/2.

required_data_provision(
    provision(
        technical_file(XSystem),
        XBody,
        necessary_data(assess_compliance(XSystem, requirement_set(chp_3))),
        form(clear, comprehensive)
    )
) :-
    elevated_risk_artificial_intelligence_system(XSystem),
    notified_organisation(XBody).

required_data_provision(
    provision(
        technical_file(XSystem),
        XAuthority,
        necessary_data(assess_compliance(XSystem, requirement_set(chp_3))),
        form(clear, comprehensive)
    )
) :-
    elevated_risk_artificial_intelligence_system(XSystem),
    national_competent_public_authority(XAuthority).

permitted_simplified_documents(
    provision(
        XEnterprise,
        technical_file(XSystem),
        element_set(annex_iv),
        simplified_manner
    )
) :-
    eligible_for_simplified_documents(XEnterprise),
    elevated_risk_artificial_intelligence_system(XSystem).

eligible_for_simplified_documents(XEnterprise) :-
    small_or_medium_sized_undertaking(XEnterprise).

must_use(
    XEnterprise,
    form_for(
        simplified_technical_file_form(article_11(1)),
        provision(
            technical_file(XSystem),
            required_data(annex_iv),
            simplified_manner
        )
    )
) :-
    eligible_for_simplified_documents(XEnterprise),
    elevated_risk_artificial_intelligence_system(XSystem),
    opts_for_simplified_documents(XEnterprise, technical_file(XSystem)).

required_compliance_demonstration(
    preparation(
        technical_file(XSystem),
        demonstrate(compliance(XSystem, requirement_set(chp_3)))
    )
) :-
    elevated_risk_artificial_intelligence_system(XSystem).

required_needs_alignment(
    alignment(
        simplified_technical_file_form(article_11(1)),
        need_set(small_undertaking)
    )
).

must_accept(
    XBody,
    form_for(
        simplified_technical_file_form(article_11(1)),
        conformity_assessment
    )
) :-
    notified_organisation(XBody).

eligible_for_simplified_documents(XEnterprise) :-
    small_or_medium_sized_undertaking(XEnterprise),
    start_up(XEnterprise).

required_minimum_material(
    material(technical_file(XSystem), element_set(annex_iv))
) :-
    elevated_risk_artificial_intelligence_system(XSystem).

required_pre_service_documents(
    preparation(technical_file(XSystem), before(service_entry(XSystem)))
) :-
    elevated_risk_artificial_intelligence_system(XSystem).

required_pre_market_documents(
    preparation(technical_file(XSystem), before(placement_on_market(XSystem)))
) :-
    elevated_risk_artificial_intelligence_system(XSystem).

must_set_up(
    european_commission,
    simplified_technical_file_form(article_11(1))
).

required_current_documents(technical_file(XSystem)) :-
    elevated_risk_artificial_intelligence_system(XSystem).

required_needs_alignment(
    alignment(
        simplified_technical_file_form(article_11(1)),
        need_set(microenterprise)
    )
).

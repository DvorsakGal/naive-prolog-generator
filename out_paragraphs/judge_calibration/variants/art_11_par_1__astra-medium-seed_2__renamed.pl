:- module(technical_file, [
    required_technical_file/1,
    technical_file_applies/1,
    required_drafting/1,
    required_updating/1,
    required_compliance_demonstration/1,
    required_data_provision/1,
    required_minimum_material/1,
    permitted_simplified_provision/1,
    must_set_up/2,
    required_targeting/1,
    identifies_form/2,
    must_use/2,
    must_accept/2
]).
:- dynamic artificial_intelligence_system/1.
:- dynamic elevated_risk/1.
:- dynamic technical_file/1.
:- dynamic documents_system/2.
:- dynamic national_competent_public_authority/1.
:- dynamic notified_organisation/1.
:- dynamic small_and_medium_sized_undertaking/1.
:- dynamic start_up/1.
:- dynamic provides_documents/2.
:- dynamic opts_for_simplified_provision/2.

required_targeting(
    targeting(simplified_technical_file_form, need(small_undertaking))
).

permitted_simplified_provision(
    provision(XEnterprise, XDocumentation, element_set(annex_iv))
) :-
    start_up(XEnterprise),
    small_and_medium_sized_undertaking(XEnterprise),
    provides_documents(XEnterprise, XDocumentation),
    technical_file_applies(documents(XDocumentation, _System)).

required_data_provision(
    provision(
        XDocumentation,
        XBody,
        necessary_data(assessment(compliance(XSystem, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    technical_file_applies(documents(XDocumentation, XSystem)),
    notified_organisation(XBody).

must_set_up(european_commission, simplified_technical_file_form).

must_accept(XBody, use(XForm, purpose(conformity_assessment))) :-
    notified_organisation(XBody),
    identifies_form(article_11_1, XForm).

required_technical_file(XSystem) :-
    artificial_intelligence_system(XSystem),
    elevated_risk(XSystem).

permitted_simplified_provision(
    provision(XEnterprise, XDocumentation, element_set(annex_iv))
) :-
    small_and_medium_sized_undertaking(XEnterprise),
    provides_documents(XEnterprise, XDocumentation),
    technical_file_applies(documents(XDocumentation, _System)).

required_drafting(drafting(XDocumentation, before(market_placement(XSystem)))) :-
    technical_file_applies(documents(XDocumentation, XSystem)).

required_compliance_demonstration(
    drafting(XDocumentation, demonstrates(compliance(XSystem, requirement_set(chp_3))))
) :-
    technical_file_applies(documents(XDocumentation, XSystem)).

required_targeting(
    targeting(simplified_technical_file_form, need(microenterprise))
).

required_updating(keeping_current(XDocumentation)) :-
    technical_file_applies(documents(XDocumentation, _System)).

must_use(XEnterprise, XForm) :-
    small_and_medium_sized_undertaking(XEnterprise),
    opts_for_simplified_provision(
        XEnterprise,
        required_data(XDocumentation, annex_iv)
    ),
    technical_file_applies(documents(XDocumentation, _System)),
    identifies_form(article_11_1, XForm).

technical_file_applies(documents(XDocumentation, XSystem)) :-
    technical_file(XDocumentation),
    documents_system(XDocumentation, XSystem),
    required_technical_file(XSystem).

required_drafting(drafting(XDocumentation, before(service_entry(XSystem)))) :-
    technical_file_applies(documents(XDocumentation, XSystem)).

identifies_form(article_11_1, simplified_technical_file_form).

required_data_provision(
    provision(
        XDocumentation,
        XAuthority,
        necessary_data(assessment(compliance(XSystem, requirement_set(chp_3)))),
        form(clear, comprehensive)
    )
) :-
    technical_file_applies(documents(XDocumentation, XSystem)),
    national_competent_public_authority(XAuthority).

required_minimum_material(material(XDocumentation, element_set(annex_iv))) :-
    technical_file_applies(documents(XDocumentation, _System)).

:- module(technical_file, [
    required_technical_file/1,
    required_preparation/1,
    required_updating/1,
    required_demonstration/1,
    required_data/1,
    required_material/1,
    permitted_simplified_submission/1,
    must_set_up/2,
    must_use/2,
    must_accept/2
]).
:- dynamic elevated_risk/1.
:- dynamic artificial_intelligence_system/1.
:- dynamic technical_file_applies/1.
:- dynamic small_or_medium_undertaking/1.
:- dynamic start_up/1.
:- dynamic provides_documents/2.
:- dynamic opts_for_simplified_submission/2.
:- dynamic european_commission/1.
:- dynamic notified_organisation/1.
:- dynamic national_competent_public_authority/1.

must_set_up(XCommission,
    simplified_technical_file_form(
        article_11_1,
        targeted_needs(small_undertaking, microenterprise))) :-
    european_commission(XCommission).

must_accept(XBody,
    form(article_11_1, purpose(conformity_assessment))) :-
    notified_organisation(XBody).

required_data(
    provision(technical_file(XSystem), XBody,
        necessary_data(
            assess_compliance(XSystem, requirement(chp_3)),
            clear_and_comprehensive_form)))
    :-
    required_technical_file(XSystem),
    notified_organisation(XBody).

required_updating(technical_file(XSystem)) :-
    required_technical_file(XSystem).

required_technical_file(XSystem) :-
    artificial_intelligence_system(XSystem),
    elevated_risk(XSystem).

required_preparation(before(technical_file(XSystem), service_entry(XSystem))) :-
    required_technical_file(XSystem).

required_demonstration(
    technical_file(XSystem, compliance(XSystem, requirement(chp_3))))
    :-
    required_technical_file(XSystem).

required_data(
    provision(technical_file(XSystem), XAuthority,
        necessary_data(
            assess_compliance(XSystem, requirement(chp_3)),
            clear_and_comprehensive_form)))
    :-
    required_technical_file(XSystem),
    national_competent_public_authority(XAuthority).

permitted_simplified_submission(
    submission(XEnterprise, technical_file(XSystem), element_set(annex_iv)))
    :-
    start_up(XEnterprise),
    small_or_medium_undertaking(XEnterprise),
    provides_documents(XEnterprise, XSystem),
    required_technical_file(XSystem).

must_use(XEnterprise,
    form(article_11_1, technical_file(XSystem))) :-
    permitted_simplified_submission(
        submission(XEnterprise, technical_file(XSystem), element_set(annex_iv))),
    opts_for_simplified_submission(XEnterprise,
        data(technical_file(XSystem), annex_iv)).

required_material(
    technical_file(XSystem, minimum_element_set(annex_iv)))
    :-
    required_technical_file(XSystem).

permitted_simplified_submission(
    submission(XEnterprise, technical_file(XSystem), element_set(annex_iv)))
    :-
    small_or_medium_undertaking(XEnterprise),
    provides_documents(XEnterprise, XSystem),
    required_technical_file(XSystem).

required_preparation(before(technical_file(XSystem), market_placement(XSystem))) :-
    required_technical_file(XSystem).

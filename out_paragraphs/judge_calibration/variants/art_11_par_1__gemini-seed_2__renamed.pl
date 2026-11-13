:- module(technical_file_elevated_risk_ai, [
    required_technical_file/1,
    must_prepare/2,
    must_maintain/2,
    demonstrates_compliance_chapter_three/1,
    provides_assessment_data/1,
    contains_minimum_annex_four_elements/1,
    permitted_simplified_manner/2,
    must_set_up/2,
    must_use/2,
    must_accept/2
]).
:- dynamic elevated_risk/1.
:- dynamic ai_system/1.
:- dynamic supplier/1.
:- dynamic places_on_market/2.
:- dynamic puts_into_service/2.
:- dynamic small_medium_undertaking/1.
:- dynamic start_up/1.
:- dynamic european_commission/1.
:- dynamic notified_organisation/1.
:- dynamic opts_simplified_manner/2.
:- dynamic form_referred_to_in_article_eleven_one/1.

required_technical_file(technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem).

demonstrates_compliance_chapter_three(technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem).

must_maintain(XProvider, technical_file(XSystem)) :-
    supplier(XProvider),
    ai_system(XSystem),
    elevated_risk(XSystem).

must_prepare(XProvider, technical_file(XSystem)) :-
    supplier(XProvider),
    ai_system(XSystem),
    elevated_risk(XSystem),
    puts_into_service(XProvider, XSystem).

must_prepare(XProvider, technical_file(XSystem)) :-
    supplier(XProvider),
    ai_system(XSystem),
    elevated_risk(XSystem),
    places_on_market(XProvider, XSystem).

contains_minimum_annex_four_elements(technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem).

must_use(XEnterprise, XForm) :-
    small_medium_undertaking(XEnterprise),
    opts_simplified_manner(XEnterprise, technical_file(XSystem)),
    ai_system(XSystem),
    form_referred_to_in_article_eleven_one(XForm).

permitted_simplified_manner(XEnterprise, technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem),
    start_up(XEnterprise).

provides_assessment_data(technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem).

must_use(XEnterprise, XForm) :-
    start_up(XEnterprise),
    opts_simplified_manner(XEnterprise, technical_file(XSystem)),
    ai_system(XSystem),
    form_referred_to_in_article_eleven_one(XForm).

must_accept(XNotifiedBody, form_conformity_assessment(XForm)) :-
    notified_organisation(XNotifiedBody),
    form_referred_to_in_article_eleven_one(XForm).

must_set_up(XCommission, simplified_form(small_and_microenterprises)) :-
    european_commission(XCommission).

permitted_simplified_manner(XEnterprise, technical_file(XSystem)) :-
    ai_system(XSystem),
    elevated_risk(XSystem),
    small_medium_undertaking(XEnterprise).

% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 85196bc32c99fbf9284df15daba3d34b4d15a4cf382b4f81cc5ccc33279d7233
% cached     : False
% title      : Confidentiality
:- pred must_treat_information_confidentially/2, gloss('obligation to treat information and documentation in accordance with confidentiality obligations'), source('reconciled').
:- pred must_respect_confidentiality/2, gloss('who must respect confidentiality, of what information'), source('celex:32024R1689/oj#art_78').
:- pred protected_by_confidentiality/1, gloss('information protected by confidentiality obligation'), source('celex:32024R1689/oj#art_78').
:- pred intellectual_property_rights/1, gloss('intellectual property rights'), source('celex:32024R1689/oj#art_78').
:- pred confidential_business_information/1, gloss('confidential business information'), source('celex:32024R1689/oj#art_78').
:- pred trade_secrets/1, gloss('trade secrets'), source('celex:32024R1689/oj#art_78').
:- pred source_code/1, gloss('source code'), source('celex:32024R1689/oj#art_78').
:- pred effective_implementation_of_regulation/1, gloss('effective implementation of the regulation'), source('celex:32024R1689/oj#art_78').
:- pred inspections_investigations_audits/1, gloss('inspections, investigations or audits'), source('celex:32024R1689/oj#art_78').
:- pred public_and_national_security_interests/1, gloss('public and national security interests'), source('celex:32024R1689/oj#art_78').
:- pred conduct_of_criminal_or_administrative_proceedings/1, gloss('conduct of criminal or administrative proceedings'), source('celex:32024R1689/oj#art_78').
:- pred information_classified_pursuant_to_law/1, gloss('information classified pursuant to Union or national law'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_strictly_necessary_data/2, gloss('authority must request only data strictly necessary, for what purpose'), source('celex:32024R1689/oj#art_78').
:- pred must_put_in_place_cybersecurity_measures/2, gloss('authority must put in place adequate and effective cybersecurity measures, for what'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('authority must delete data when no longer needed, what data'), source('celex:32024R1689/oj#art_78').
:- pred confidential_information_exchange/2, gloss('information exchanged on confidential basis, between whom'), source('celex:32024R1689/oj#art_78').
:- pred must_not_disclose_without_prior_consultation/3, gloss('information must not be disclosed without prior consultation, of whom, what information'), source('celex:32024R1689/oj#art_78').
:- pred jeopardises_public_and_national_security/1, gloss('disclosure would jeopardise public and national security interests'), source('celex:32024R1689/oj#art_78').
:- pred sensitive_operational_data_excluded_from_exchange/1, gloss('sensitive operational data excluded from exchange of information'), source('celex:32024R1689/oj#art_78').
:- pred technical_documentation_remains_on_premises/2, gloss('technical documentation remains on premises, of which authority'), source('celex:32024R1689/oj#art_78').
:- pred must_ensure_immediate_access_to_documentation/2, gloss('authority must ensure immediate access to documentation, for which market surveillance authority'), source('celex:32024R1689/oj#art_78').
:- pred staff_with_security_clearance_only/1, gloss('only staff with appropriate security clearance allowed access'), source('celex:32024R1689/oj#art_78').
:- pred must_not_affect_exchange_of_information_rights/1, gloss('provisions do not affect rights or obligations regarding exchange of information and dissemination of warnings'), source('celex:32024R1689/oj#art_78').
:- pred must_not_affect_criminal_law_information_obligations/1, gloss('provisions do not affect obligations to provide information under criminal law'), source('celex:32024R1689/oj#art_78').
:- pred may_exchange_confidential_information_with_third_countries/2, gloss('Commission and Member States may exchange confidential information, with which third country regulatory authorities'), source('celex:32024R1689/oj#art_78').
:- pred bilateral_or_multilateral_confidentiality_arrangement/1, gloss('bilateral or multilateral confidentiality arrangement guaranteeing adequate level of confidentiality'), source('celex:32024R1689/oj#art_78').
:- pred involved_in_application_of_regulation/1, gloss('natural or legal person involved in application of the regulation'), source('celex:32024R1689/oj#art_78').
:- pred obtained_in_carrying_out_tasks/1, gloss('information and data obtained in carrying out tasks and activities'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(Actor, Info) :-
    involved_in_application_of_regulation(Actor),
    obtained_in_carrying_out_tasks(Info).

must_respect_confidentiality(commission, Info) :-
    obtained_in_carrying_out_tasks(Info).

must_respect_confidentiality(market_surveillance_authority(A), Info) :-
    market_surveillance_authority(A),
    obtained_in_carrying_out_tasks(Info).

must_respect_confidentiality(notified_body(B), Info) :-
    notified_body(B),
    obtained_in_carrying_out_tasks(Info).

protected_by_confidentiality(Info) :-
    intellectual_property_rights(Info).

protected_by_confidentiality(Info) :-
    confidential_business_information(Info).

protected_by_confidentiality(Info) :-
    trade_secrets(Info).

protected_by_confidentiality(Info) :-
    source_code(Info).

protected_by_confidentiality(Info) :-
    effective_implementation_of_regulation(Info),
    inspections_investigations_audits(Purpose),
    serves(Info, Purpose).

protected_by_confidentiality(Info) :-
    public_and_national_security_interests(Info).

protected_by_confidentiality(Info) :-
    conduct_of_criminal_or_administrative_proceedings(Info).

protected_by_confidentiality(Info) :-
    information_classified_pursuant_to_law(Info).

must_treat_information_confidentially(Actor, Info) :-
    must_respect_confidentiality(Actor, Info),
    protected_by_confidentiality(Info).

must_request_only_strictly_necessary_data(Authority, Purpose) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for(Purpose, assessment_of_risk_posed_by_ai_systems).

must_request_only_strictly_necessary_data(Authority, Purpose) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for(Purpose, exercise_of_powers).

must_put_in_place_cybersecurity_measures(Authority, Info) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Info),
    adequate_and_effective(cybersecurity_measures),
    protects(security_and_confidentiality, Info).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Data),
    no_longer_needed_for_original_purpose(Data).

confidential_information_exchange(Info, between(Authority1, Authority2)) :-
    national_competent_authority(Authority1),
    national_competent_authority(Authority2),
    exchanged_on_confidential_basis(Info).

confidential_information_exchange(Info, between(national_competent_authority(A), commission)) :-
    national_competent_authority(A),
    exchanged_on_confidential_basis(Info).

must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_law_enforcement_authority(S, A),
    law_enforcement_authority(A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).

must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_border_control_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).

must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_immigration_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).

must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_asylum_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).

sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, law_enforcement).

sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, border_control).

sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, immigration).

sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, asylum).

technical_documentation_remains_on_premises(Doc, Authority) :-
    law_enforcement_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).

technical_documentation_remains_on_premises(Doc, Authority) :-
    immigration_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).

technical_documentation_remains_on_premises(Doc, Authority) :-
    asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).

must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    law_enforcement_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).

must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    immigration_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).

must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).

staff_with_security_clearance_only(Staff) :-
    market_surveillance_authority(A),
    staff_of(Staff, A),
    holds_appropriate_level_of_security_clearance(Staff).

must_not_affect_exchange_of_information_rights(commission).
must_not_affect_exchange_of_information_rights(member_state(M)) :-
    member_state(M).
must_not_affect_exchange_of_information_rights(notified_body(B)) :-
    notified_body(B).

must_not_affect_criminal_law_information_obligations(member_state(M)) :-
    member_state(M).

may_exchange_confidential_information_with_third_countries(Info, RegulatoryAuthority) :-
    regulatory_authority_of_third_country(RegulatoryAuthority),
    bilateral_or_multilateral_confidentiality_arrangement(Arrangement),
    concluded_with(Arrangement, RegulatoryAuthority),
    guarantees_adequate_level_of_confidentiality(Arrangement),
    necessary_for_purposes(Info, international_trade_agreements).

involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(market_surveillance_authority(A)) :-
    market_surveillance_authority(A).
involved_in_application_of_regulation(notified_body(B)) :-
    notified_body(B).
involved_in_application_of_regulation(Person) :-
    natural_or_legal_person(Person),
    involved_in_application_of_regulation_tasks(Person).

provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(protected_by_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(intellectual_property_rights/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_business_information/1, 'celex:32024R1689/oj#art_78').
provenance(trade_secrets/1, 'celex:32024R1689/oj#art_78').
provenance(source_code/1, 'celex:32024R1689/oj#art_78').
provenance(effective_implementation_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(inspections_investigations_audits/1, 'celex:32024R1689/oj#art_78').
provenance(public_and_national_security_interests/1, 'celex:32024R1689/oj#art_78').
provenance(conduct_of_criminal_or_administrative_proceedings/1, 'celex:32024R1689/oj#art_78').
provenance(information_classified_pursuant_to_law/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_exchange/2, 'celex:32024R1689/oj#art_78').
provenance(must_not_disclose_without_prior_consultation/3, 'celex:32024R1689/oj#art_78').
provenance(jeopardises_public_and_national_security/1, 'celex:32024R1689/oj#art_78').
provenance(sensitive_operational_data_excluded_from_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(staff_with_security_clearance_only/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_affect_exchange_of_information_rights/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_affect_criminal_law_information_obligations/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').
provenance(bilateral_or_multilateral_confidentiality_arrangement/1, 'celex:32024R1689/oj#art_78').
provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(obtained_in_carrying_out_tasks/1, 'celex:32024R1689/oj#art_78').

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

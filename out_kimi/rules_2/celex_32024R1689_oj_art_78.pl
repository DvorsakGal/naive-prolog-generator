% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 23c4e2de70497655e3cf9cf954fd9faed4d609ee9540efb129137cba08cd2a90
% cached     : False
% title      : Confidentiality
:- pred must_ensure_confidentiality/1, gloss('ensure confidentiality of information and data'), source('celex:32024R1689/oj#art_78/par_1').
:- pred must_request_necessary_data_only/1, gloss('request only data strictly necessary for risk assessment and exercise of powers'), source('celex:32024R1689/oj#art_78/par_2').
:- pred must_implement_cybersecurity_measures/1, gloss('put in place adequate and effective cybersecurity measures'), source('celex:32024R1689/oj#art_78/par_2').
:- pred must_delete_data_when_no_longer_needed/1, gloss('delete data collected as soon as no longer needed'), source('celex:32024R1689/oj#art_78/par_2').
:- pred confidential_information_not_disclosed_without_consultation/1, gloss('confidential information not disclosed without prior consultation'), source('celex:32024R1689/oj#art_78/par_3').
:- pred technical_documentation_remains_on_premises/1, gloss('technical documentation remains within premises of authorities'), source('celex:32024R1689/oj#art_78/par_3').
:- pred market_surveillance_access_to_documentation/2, gloss('market surveillance authorities can access documentation upon request'), source('celex:32024R1689/oj#art_78/par_3').
:- pred only_cleared_staff_access_documentation/1, gloss('only staff with appropriate security clearance allowed access'), source('celex:32024R1689/oj#art_78/par_3').
:- pred may_exchange_confidential_information_with_third_countries/2, gloss('may exchange confidential information with third country regulatory authorities'), source('celex:32024R1689/oj#art_78/par_5').

must_ensure_confidentiality(Party) :-
    (commission(Party) ; market_surveillance_authority(Party) ; notified_body(Party) ; natural_person(Party) ; legal_person(Party)),
    involved_in_application(Party, 'celex:32024R1689/oj').

must_request_necessary_data_only(Authority) :-
    authority_involved_in_application(Authority),
    data_requested(Authority, Data),
    necessary_for_risk_assessment(Data),
    necessary_for_exercise_of_powers(Data).

must_implement_cybersecurity_measures(Authority) :-
    authority_involved_in_application(Authority).

must_delete_data_when_no_longer_needed(Authority) :-
    authority_involved_in_application(Authority),
    data_collected(Authority, Data),
    \+ still_needed_for_purpose(Data).

confidential_information_not_disclosed_without_consultation(Information) :-
    exchanged_confidentially_between_national_competent_authorities(Information),
    high_risk_ai_system_used_by_sensitive_authority(System),
    disclosure_would_jeopardise_security(System),
    \+ prior_consultation_originating_authority(Information),
    \+ prior_consultation_deployer(Information).

confidential_information_not_disclosed_without_consultation(Information) :-
    exchanged_confidentially_with_commission(Information),
    high_risk_ai_system_used_by_sensitive_authority(System),
    disclosure_would_jeopardise_security(System),
    \+ prior_consultation_originating_authority(Information),
    \+ prior_consultation_deployer(Information).

high_risk_ai_system_used_by_sensitive_authority(System) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System) ; annex_3_point_6_applies(System) ; annex_3_point_7_applies(System)),
    used_by_law_enforcement_immigration_asylum_authority(System).

sensitive_operational_data_excluded(Information) :-
    exchanged_confidentially_between_national_competent_authorities(Information),
    sensitive_operational_data_law_enforcement(Information).

sensitive_operational_data_excluded(Information) :-
    exchanged_confidentially_with_commission(Information),
    sensitive_operational_data_law_enforcement(Information).

technical_documentation_remains_on_premises(System) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System) ; annex_3_point_6_applies(System) ; annex_3_point_7_applies(System)),
    law_enforcement_immigration_asylum_authority(Authority),
    provider(Authority, System).

market_surveillance_access_to_documentation(Authority, System) :-
    technical_documentation_remains_on_premises(System),
    market_surveillance_authority(Authority),
    (referred_to_in('celex:32024R1689/oj#art_74/par_8', Authority) ; referred_to_in('celex:32024R1689/oj#art_74/par_9', Authority)),
    upon_request(Authority, System).

only_cleared_staff_access_documentation(System) :-
    technical_documentation_remains_on_premises(System),
    access_allowed(Staff, System),
    appropriate_security_clearance(Staff).

may_exchange_confidential_information_with_third_countries(Commission, ThirdCountryAuthority) :-
    commission(Commission),
    regulatory_authority_third_country(ThirdCountryAuthority),
    necessary_exchange(Commission, ThirdCountryAuthority),
    international_trade_agreement_applies(Exchange),
    confidentiality_arrangement_adequate(Exchange).

provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_necessary_data_only/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_not_disclosed_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(market_surveillance_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(only_cleared_staff_access_documentation/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

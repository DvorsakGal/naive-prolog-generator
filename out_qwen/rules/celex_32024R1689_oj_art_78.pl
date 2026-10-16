% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 82900389165694ed9b961c7c4c666416d3827b35d87e3debd46903a61de584cf
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('obligation to protect confidential information obtained during tasks'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/2, gloss('obligation to limit data requests to what is strictly necessary'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/2, gloss('obligation to protect security and confidentiality of obtained data'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('obligation to delete collected data once purpose is fulfilled'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure_of_confidential_exchange/1, gloss('prohibition on disclosing confidential exchanges without consultation under specific conditions'), source('celex:32024R1689/oj#art_78').
:- pred sensitive_operational_data_excluded_from_exchange/1, gloss('exclusion of sensitive operational data from confidential exchanges'), source('celex:32024R1689/oj#art_78').
:- pred must_keep_technical_documentation_on_premises/2, gloss('obligation for LEA providers to keep technical documentation within their premises'), source('celex:32024R1689/oj#art_78').
:- pred must_allow_access_to_documentation/2, gloss('obligation to grant immediate access to technical documentation upon request'), source('celex:32024R1689/oj#art_78').
:- pred restricted_access_by_security_clearance/2, gloss('restriction of documentation access to staff with appropriate clearance'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_with_third_country_authority/1, gloss('permission to exchange confidential info with third countries under arrangements'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(Entity, Information) :-
    involved_in_application_of_regulation(Entity),
    obtained_during_tasks(Entity, Information).

involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(E) :- market_surveillance_authority(E).
involved_in_application_of_regulation(E) :- notified_body(E).
involved_in_application_of_regulation(E) :- natural_or_legal_person_involved(E).

must_request_only_necessary_data(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for_risk_assessment(Data),
    strictly_necessary_for_exercise_of_powers(Data).

must_implement_cybersecurity_measures(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    obtained_during_tasks(Authority, Data),
    adequate_and_effective(Measure).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    collected_data(Authority, Data),
    no_longer_needed_for_purpose(Data).

prohibited_disclosure_of_confidential_exchange(Exchange) :-
    confidential_exchange_between_competent_authorities(Exchange),
    involves_high_risk_ai_system_for_law_enforcement(Exchange),
    disclosure_would_jeopardise_public_and_national_security(Exchange),
    \+ prior_consultation_held(Exchange).

sensitive_operational_data_excluded_from_exchange(Exchange) :-
    confidential_exchange_between_competent_authorities(Exchange),
    relates_to_law_enforcement_activities(Exchange),
    contains_sensitive_operational_data(Exchange).

must_keep_technical_documentation_on_premises(Authority, Documentation) :-
    law_enforcement_immigration_or_asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system_for_specific_use(S),
    technical_documentation(Documentation, S).

must_allow_access_to_documentation(Authority, Documentation) :-
    must_keep_technical_documentation_on_premises(Authority, Documentation),
    market_surveillance_authority(MSA),
    upon_request(MSA, Documentation).

restricted_access_by_security_clearance(Staff, Documentation) :-
    must_allow_access_to_documentation(_Authority, Documentation),
    staff_of_market_surveillance_authority(Staff),
    holds_appropriate_security_clearance(Staff).

permitted_exchange_with_third_country_authority(Exchange) :-
    commission_or_member_state(Sender),
    regulatory_authority_of_third_country(Recipient),
    bilateral_or_multilateral_confidentiality_arrangement(Sender, Recipient),
    guarantees_adequate_level_of_confidentiality(Arrangement).

% Provenance
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_of_confidential_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(sensitive_operational_data_excluded_from_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_allow_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(restricted_access_by_security_clearance/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country_authority/1, 'celex:32024R1689/oj#art_78').

% References
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

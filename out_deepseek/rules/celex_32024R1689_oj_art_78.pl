% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 835e631b30754c2453c4d48d07e52665033b0d49393f9d99c1d757469f479300
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('entity must respect confidentiality of information and data obtained'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_strictly_necessary_data/2, gloss('authority must request only data strictly necessary for risk assessment and powers'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/2, gloss('authority must implement adequate cybersecurity measures to protect information'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('authority must delete collected data when no longer needed'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure_without_consultation/1, gloss('disclosure prohibited without prior consultation of originating authority and deployer'), source('celex:32024R1689/oj#art_78').
:- pred must_keep_technical_documentation_on_premises/2, gloss('law enforcement, immigration or asylum authority provider must keep technical documentation on premises'), source('celex:32024R1689/oj#art_78').
:- pred must_ensure_market_surveillance_access/2, gloss('authority must ensure market surveillance authorities can access documentation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_with_third_country_authorities/1, gloss('exchange of confidential information with third country authorities permitted under conditions'), source('celex:32024R1689/oj#art_78').

% Paragraph 1
must_respect_confidentiality(Entity, information_and_data) :-
    (   Entity = commission
    ;   market_surveillance_authority(Entity)
    ;   notified_body(Entity)
    ;   involved_in_application(Entity)
    ),
    obtained_in_carrying_out_tasks(Entity, information_and_data).

% Paragraph 2
must_request_only_strictly_necessary_data(Authority, data) :-
    authority_involved_in_application(Authority),
    strictly_necessary_for_risk_assessment_or_powers(Authority, data).

must_implement_cybersecurity_measures(Authority, information_and_data) :-
    authority_involved_in_application(Authority),
    obtained_in_carrying_out_tasks(Authority, information_and_data).

must_delete_data_when_no_longer_needed(Authority, data) :-
    authority_involved_in_application(Authority),
    collected_by(Authority, data),
    \+ needed_for_purpose(data).

% Paragraph 3
prohibited_disclosure_without_consultation(disclosure(Information, OriginatingAuthority, Deployer)) :-
    confidential_information(Information),
    exchanged_between_competent_authorities_or_with_commission(Information),
    high_risk_ai_system_used_by_sensitive_authorities(Deployer),
    would_jeopardise_public_or_national_security(disclosure(Information)),
    \+ prior_consultation(OriginatingAuthority),
    \+ prior_consultation(Deployer).

must_keep_technical_documentation_on_premises(Authority, technical_documentation) :-
    (   law_enforcement_authority(Authority)
    ;   immigration_authority(Authority)
    ;   asylum_authority(Authority)
    ),
    provider(Authority),
    high_risk_ai_system_referred_to_in_annex_iii_points_1_6_7(_S).

must_ensure_market_surveillance_access(Authority, technical_documentation) :-
    must_keep_technical_documentation_on_premises(Authority, technical_documentation),
    market_surveillance_authority_referred_to_in_art_74_par_8_or_9(MSA),
    can_access_or_obtain_copy(MSA, technical_documentation),
    staff_with_appropriate_security_clearance(MSA).

% Paragraph 5
permitted_exchange_with_third_country_authorities(exchange(CommissionOrMemberState, ThirdCountryAuthority, confidential_information)) :-
    (   CommissionOrMemberState = commission
    ;   member_state(CommissionOrMemberState)
    ),
    regulatory_authority_of_third_country(ThirdCountryAuthority),
    confidentiality_arrangement_exists(CommissionOrMemberState, ThirdCountryAuthority),
    adequate_level_of_confidentiality(ThirdCountryAuthority).

% Helper predicates
involved_in_application(Entity) :-
    natural_or_legal_person(Entity),
    involved_in_application_of_regulation(Entity).

authority_involved_in_application(Authority) :-
    involved_in_application(Authority),
    (   market_surveillance_authority(Authority)
    ;   notified_body(Authority)
    ;   national_competent_authority(Authority)
    ;   Authority = commission
    ).

high_risk_ai_system_used_by_sensitive_authorities(Deployer) :-
    deployer(Deployer),
    (   law_enforcement_authority(Deployer)
    ;   border_control_authority(Deployer)
    ;   immigration_authority(Deployer)
    ;   asylum_authority(Deployer)
    ),
    high_risk_ai_system_referred_to_in_annex_iii_points_1_6_7(_S).

% Provenance
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_market_surveillance_access/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country_authorities/1, 'celex:32024R1689/oj#art_78').

% References
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').

% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 75991c7e28dabe1607d48d7450123658701c6147d2f1ee7025fe3da0864d8a3f
% cached     : False
% title      : Confidentiality
:- pred involved_in_application_of_regulation/1, gloss('entity involved in the application of the AI Regulation'), source('celex:32024R1689/oj#art_78').
:- pred strictly_necessary_data/2, gloss('data is strictly necessary for risk assessment or exercise of powers for an AI system'), source('celex:32024R1689/oj#art_78').
:- pred confidential_basis_exchange/2, gloss('information was exchanged on a confidential basis between competent authorities or Commission'), source('celex:32024R1689/oj#art_78').
:- pred sensitive_security_high_risk_system/1, gloss('high-risk AI system under Annex III points 1, 6, or 7 used or provided by sensitive authorities'), source('celex:32024R1689/oj#art_78').
:- pred prior_consultation_conducted/2, gloss('prior consultation of originating authority and deployer was conducted'), source('celex:32024R1689/oj#art_78').
:- pred jeopardises_public_or_national_security/1, gloss('disclosure of information would jeopardise public or national security interests'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure/1, gloss('disclosure of confidential information is prohibited'), source('celex:32024R1689/oj#art_78').
:- pred permitted_access_technical_documentation/2, gloss('person or authority is permitted to access technical documentation'), source('celex:32024R1689/oj#art_78').
:- pred security_clearance_appropriate/1, gloss('staff member holds appropriate level of security clearance'), source('celex:32024R1689/oj#art_78').
:- pred bilateral_confidentiality_arrangement_exists/2, gloss('bilateral or multilateral confidentiality arrangement exists with third country regulatory authority guaranteeing adequate confidentiality'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_confidential_information/3, gloss('actor is permitted to exchange confidential information with a third country authority'), source('celex:32024R1689/oj#art_78').

% Paragraph 1: Entities involved in the application of the Regulation
involved_in_application_of_regulation(Entity) :-
    commission(Entity).
involved_in_application_of_regulation(Entity) :-
    market_surveillance_authority(Entity).
involved_in_application_of_regulation(Entity) :-
    notified_body(Entity).

% Obligation to respect confidentiality (Paragraph 1)
must_comply(Entity, respect_confidentiality) :-
    involved_in_application_of_regulation(Entity).

% Paragraph 2: Obligations on authorities when requesting and handling data
must_comply(Authority, request_only_strictly_necessary_data(System)) :-
    market_surveillance_authority(Authority),
    ai_system(System).
must_comply(Authority, request_only_strictly_necessary_data(System)) :-
    commission(Authority),
    ai_system(System).

must_comply(Authority, implement_cybersecurity_measures) :-
    market_surveillance_authority(Authority).
must_comply(Authority, implement_cybersecurity_measures) :-
    commission(Authority).

must_comply(Authority, delete_data_when_no_longer_needed) :-
    market_surveillance_authority(Authority).
must_comply(Authority, delete_data_when_no_longer_needed) :-
    commission(Authority).

% Paragraph 3: Confidential exchange and restrictions on disclosure
prohibited_disclosure(Info) :-
    confidential_basis_exchange(Info, System),
    sensitive_security_high_risk_system(System),
    jeopardises_public_or_national_security(Info),
    \+ prior_consultation_conducted(Info, System).

% Paragraph 3: Access to technical documentation held by law enforcement/immigration/asylum authorities
permitted_access_technical_documentation(Staff, System) :-
    market_surveillance_authority_for(Authority, System),
    sensitive_security_high_risk_system(System),
    security_clearance_appropriate(Staff).

% Paragraph 5: Exchange of confidential information with third country authorities
permitted_exchange_confidential_information(commission, ThirdCountryAuthority, Info) :-
    bilateral_confidentiality_arrangement_exists(commission, ThirdCountryAuthority),
    confidential_basis_exchange(Info, _System).

permitted_exchange_confidential_information(MemberState, ThirdCountryAuthority, Info) :-
    bilateral_confidentiality_arrangement_exists(MemberState, ThirdCountryAuthority),
    confidential_basis_exchange(Info, _System).

% Provenance facts
provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(must_comply/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_access_technical_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/3, 'celex:32024R1689/oj#art_78').

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

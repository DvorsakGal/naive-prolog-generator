% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 652700255f51a68f1117e3a547aedb4ae1ac35ed5808b4b489d246828a4e4541
% cached     : False
% title      : Confidentiality
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_78').
:- pred involved_in_application/1, gloss('entity involved in the application of the AI Regulation'), source('celex:32024R1689/oj#art_78').
:- pred must_respect_confidentiality(Actor, Object), gloss('Actor must respect the confidentiality of Object'), source('celex:32024R1689/oj#art_78').
:- pred exception_trade_secret_disclosure/1, gloss('lawful disclosure of trade secrets under Directive (EU) 2016/943'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data(Actor, Object), gloss('Actor must request only strictly necessary data for risk assessment or powers'), source('celex:32024R1689/oj#art_78').
:- pred must_put_in_place_cybersecurity_measures(Actor, Object), gloss('Actor must put in place cybersecurity measures to protect information and data'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed(Actor, Object), gloss('Actor must delete data when no longer needed for purpose'), source('celex:32024R1689/oj#art_78').
:- pred sensitive_security_high_risk_ai_system/1, gloss('high-risk AI system under Annex III points 1, 6, or 7 used or provided by sensitive authorities'), source('celex:32024R1689/oj#art_78').
:- pred sensitive_authority/1, gloss('law enforcement, border control, immigration, or asylum authority'), source('celex:32024R1689/oj#art_78').
:- pred prior_consultation_held/2, gloss('prior consultation held between receiving body, originating authority, and deployer'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure(Object), gloss('disclosure of confidential information is prohibited'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_exchange(Object), gloss('exchange of sensitive operational data is prohibited'), source('celex:32024R1689/oj#art_78').
:- pred must_keep_technical_documentation_on_premises(Actor, Object), gloss('Actor must keep technical documentation on its premises'), source('celex:32024R1689/oj#art_78').
:- pred must_ensure_immediate_access(Actor, Object), gloss('Actor must ensure market surveillance authority can immediately access documentation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_access(Staff, Documentation), gloss('Staff is permitted to access documentation if holding appropriate security clearance'), source('celex:32024R1689/oj#art_78').
:- pred staff_of_market_surveillance_authority(Staff, Authority), gloss('Staff belongs to market surveillance authority'), source('celex:32024R1689/oj#art_78').
:- pred holds_appropriate_security_clearance(Staff), gloss('Staff holds appropriate level of security clearance'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_with_third_country(Actor, Object), gloss('Actor may exchange confidential information with third-country authority under bilateral/multilateral arrangement'), source('celex:32024R1689/oj#art_78').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_78').
:- pred confidentiality_arrangement_in_place(ThirdCountryAuthority), gloss('bilateral or multilateral confidentiality arrangement guaranteeing adequate confidentiality is in place'), source('celex:32024R1689/oj#art_78').
:- pred necessary_exchange(Info), gloss('exchange of information is necessary'), source('celex:32024R1689/oj#art_78').

% Paragraph 1: Entities involved in the application of the Regulation
involved_in_application(E) :- commission(E).
involved_in_application(E) :- market_surveillance_authority(E).
involved_in_application(E) :- notified_body(E).
involved_in_application(E) :- national_competent_authority(E).

% Duty to respect confidentiality of information/data obtained in carrying out tasks
must_respect_confidentiality(Actor, Data) :-
    involved_in_application(Actor),
    \+ exception_trade_secret_disclosure(Data).

% Paragraph 2: Minimisation, cybersecurity, and deletion
must_request_only_necessary_data(Authority, System) :-
    involved_in_application(Authority),
    ai_system(System).

must_put_in_place_cybersecurity_measures(Authority, Data) :-
    involved_in_application(Authority),
    ( personal_data(Data) ; non_personal_data(Data) ).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application(Authority),
    ( personal_data(Data) ; non_personal_data(Data) ).

% Paragraph 3: Exchanged information regarding sensitive high-risk AI systems
prohibited_disclosure(confidential_exchange(Info, System)) :-
    sensitive_security_high_risk_ai_system(System),
    \+ prior_consultation_held(Info, System).

prohibited_exchange(sensitive_operational_data_in_exchange(Data, Authority)) :-
    sensitive_operational_data(Data),
    sensitive_authority(Authority).

% Technical documentation of sensitive high-risk AI systems provided by sensitive authorities
must_keep_technical_documentation_on_premises(Authority, technical_documentation(System)) :-
    provider(Authority),
    sensitive_authority(Authority),
    sensitive_security_high_risk_ai_system(System).

must_ensure_immediate_access(Authority, access_to(technical_documentation(System), MSA)) :-
    provider(Authority),
    sensitive_authority(Authority),
    sensitive_security_high_risk_ai_system(System),
    market_surveillance_authority(MSA).

permitted_access(Staff, technical_documentation(System)) :-
    staff_of_market_surveillance_authority(Staff, MSA),
    market_surveillance_authority(MSA),
    sensitive_security_high_risk_ai_system(System),
    holds_appropriate_security_clearance(Staff).

% Paragraph 5: International cooperation with third-country authorities
permitted_exchange_with_third_country(commission, exchange(Info, ThirdCountryAuthority)) :-
    necessary_exchange(Info),
    confidentiality_arrangement_in_place(ThirdCountryAuthority).

permitted_exchange_with_third_country(MS, exchange(Info, ThirdCountryAuthority)) :-
    member_state(MS),
    necessary_exchange(Info),
    confidentiality_arrangement_in_place(ThirdCountryAuthority).

% Provenance facts
provenance(involved_in_application/1, 'celex:32024R1689/oj#art_78').
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(prohibited_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(must_keep_technical_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_with_third_country/2, 'celex:32024R1689/oj#art_78').

% Reference facts
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

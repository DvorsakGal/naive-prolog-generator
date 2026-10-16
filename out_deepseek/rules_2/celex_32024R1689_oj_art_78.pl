% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : a40743756b0baa7f871dc43a57bbe1e6236e78e25e79340d920a3827972059a4
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('entity must respect confidentiality of information and data obtained in carrying out tasks'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_strictly_necessary_data/1, gloss('authority must request only data strictly necessary for risk assessment and exercise of powers'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/1, gloss('authority must put in place adequate and effective cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/1, gloss('authority must delete collected data when no longer needed for purpose obtained'), source('celex:32024R1689/oj#art_78').
:- pred confidential_information_exchange_restriction_applies/2, gloss('restriction on disclosure of confidential information exchanged applies'), source('celex:32024R1689/oj#art_78').
:- pred must_obtain_prior_consultation_before_disclosure/2, gloss('entity must obtain prior consultation before disclosing confidential information'), source('celex:32024R1689/oj#art_78').
:- pred must_retain_technical_documentation_on_premises/1, gloss('law enforcement, immigration or asylum authority provider must retain technical documentation on premises'), source('celex:32024R1689/oj#art_78').
:- pred must_ensure_immediate_access_to_documentation/2, gloss('authority must ensure market surveillance authority can immediately access documentation'), source('celex:32024R1689/oj#art_78').
:- pred must_have_security_clearance_to_access_documentation/1, gloss('staff must hold appropriate level of security clearance to access documentation'), source('celex:32024R1689/oj#art_78').
:- pred may_exchange_confidential_information_with_third_countries/2, gloss('Commission and Member States may exchange confidential information with third-country regulatory authorities'), source('celex:32024R1689/oj#art_78').

% Paragraph 1
must_respect_confidentiality(Entity, information_and_data) :-
    involved_in_application(Entity),
    (   Entity = commission
    ;   market_surveillance_authority(Entity)
    ;   notified_body(Entity)
    ;   true  % any other natural or legal person involved
    ).

% Paragraph 2
must_request_only_strictly_necessary_data(Authority) :-
    involved_in_application(Authority).

must_implement_cybersecurity_measures(Authority) :-
    involved_in_application(Authority).

must_delete_data_when_no_longer_needed(Authority) :-
    involved_in_application(Authority).

% Paragraph 3
confidential_information_exchange_restriction_applies(Information, disclosure) :-
    exchanged_on_confidential_basis(Information, national_competent_authorities),
    high_risk_ai_system(System),
    (   annex_3_point_1_a_system(System)
    ;   annex_3_point_2_system(System)  % points 6 and 7 are within point 2
    ),
    used_by(System, law_enforcement_border_control_immigration_asylum_authority),
    disclosure_jeopardises_public_national_security(disclosure).

must_obtain_prior_consultation_before_disclosure(Entity, disclosure(Information)) :-
    confidential_information_exchange_restriction_applies(Information, disclosure),
    (   Entity = national_competent_authority
    ;   Entity = commission
    ).

must_retain_technical_documentation_on_premises(Authority) :-
    (   law_enforcement_authority(Authority)
    ;   true  % immigration or asylum authority
    ),
    provider(Authority),
    high_risk_ai_system(System),
    (   annex_3_point_1_a_system(System)
    ;   annex_3_point_2_system(System)
    ),
    provides(Authority, System).

must_ensure_immediate_access_to_documentation(Authority, market_surveillance_authority) :-
    must_retain_technical_documentation_on_premises(Authority).

must_have_security_clearance_to_access_documentation(Staff) :-
    market_surveillance_authority(MSA),
    staff_of(Staff, MSA).

% Paragraph 5
may_exchange_confidential_information_with_third_countries(Entity, third_country_regulatory_authority) :-
    (   Entity = commission
    ;   Entity = member_state
    ),
    concluded_confidentiality_arrangement(Entity, third_country_regulatory_authority).

% Auxiliary predicates
:- pred exchanged_on_confidential_basis/2, gloss('information exchanged on confidential basis between entities'), source('celex:32024R1689/oj#art_78').
:- pred used_by/2, gloss('system used by authority'), source('celex:32024R1689/oj#art_78').
:- pred disclosure_jeopardises_public_national_security/1, gloss('disclosure would jeopardise public and national security interests'), source('celex:32024R1689/oj#art_78').
:- pred provides/2, gloss('provider provides system'), source('celex:32024R1689/oj#art_78').
:- pred staff_of/2, gloss('staff member of an authority'), source('celex:32024R1689/oj#art_78').
:- pred concluded_confidentiality_arrangement/2, gloss('entity concluded bilateral or multilateral confidentiality arrangement with third country'), source('celex:32024R1689/oj#art_78').
:- pred law_enforcement_border_control_immigration_asylum_authority/1, gloss('authority for law enforcement, border control, immigration or asylum'), source('celex:32024R1689/oj#art_78').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_78').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_78').

% Provenance
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_exchange_restriction_applies/2, 'celex:32024R1689/oj#art_78').
provenance(must_obtain_prior_consultation_before_disclosure/2, 'celex:32024R1689/oj#art_78').
provenance(must_retain_technical_documentation_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(must_have_security_clearance_to_access_documentation/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').

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

% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 15f658f3c646556e4e0570a041ed1eb5812cad1221e2cf06ffb44df7d0e5f865
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_74').
:- pred financial_institution/1, gloss('financial institution regulated by Union financial services law'), source('celex:32024R1689/oj#art_74').
:- pred direct_connection_financial_services/1, gloss('system use or placing on market has direct connection with provision of financial services'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervisory_authority/2, gloss('national authority responsible for financial supervision of institution'), source('celex:32024R1689/oj#art_74').
:- pred designated_other_authority/2, gloss('Member State designated another authority with coordination ensured'), source('celex:32024R1689/oj#art_74').
:- pred designated_sectoral_market_surveillance_authority/2, gloss('market surveillance authority designated under Annex I legislation'), source('celex:32024R1689/oj#art_74').
:- pred equivalent_protection_procedure_exists/1, gloss('sectoral legal act provides procedures ensuring equivalent protection and same objective'), source('celex:32024R1689/oj#art_74').
:- pred exempt_surveillance_procedures/1, gloss('AI system exempt from market surveillance procedures under Articles 79 to 83'), source('celex:32024R1689/oj#art_74').
:- pred annex_3_point_1_system/1, gloss('AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_74').
:- pred annex_3_point_6_7_or_8_system/1, gloss('AI system listed in Annex III point 6, 7 or 8'), source('celex:32024R1689/oj#art_74').
:- pred used_for_law_enforcement_border_justice_democracy/1, gloss('AI system used for law enforcement, border management, justice or democracy'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_supervisory_authority/1, gloss('competent data protection supervisory authority or equivalent under Directive (EU) 2016/680'), source('celex:32024R1689/oj#art_74').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor (EDPS)'), source('celex:32024R1689/oj#art_74').
:- pred cjeu_in_judicial_capacity/1, gloss('Court of Justice of the European Union acting in its judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access/2, gloss('actor must grant access to information or material to recipient'), source('celex:32024R1689/oj#art_74').
:- pred access_to_source_code_necessary/2, gloss('access to source code is necessary to assess conformity with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_74').
:- pred other_verification_insufficient_or_exhausted/2, gloss('testing or auditing procedures based on data and documentation exhausted or insufficient'), source('celex:32024R1689/oj#art_74').
:- pred regulated_credit_institution_ssm/1, gloss('regulated credit institution participating in Single Supervisory Mechanism'), source('celex:32024R1689/oj#art_74').
:- pred national_competition_authority/1, gloss('national competition authority'), source('celex:32024R1689/oj#art_74').
:- pred european_central_bank/1, gloss('European Central Bank'), source('celex:32024R1689/oj#art_74').

% Paragraph 2: Reporting obligations
must_report(Authority, competition_rules_information(Info)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority_for(Authority, _System),
    commission(Commission),
    national_competition_authority(NCA),
    must_report(Authority, recipient(Commission)),
    must_report(Authority, recipient(NCA)).

must_report(Authority, prohibited_practices_use(annual)) :-
    market_surveillance_authority(Authority),
    commission(Commission),
    must_report(Authority, recipient(Commission)).

% Paragraph 3: Market surveillance authority for Annex I high-risk AI systems
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    \+ designated_other_authority(Auth, S),
    designated_sectoral_market_surveillance_authority(Auth, S).

market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    designated_other_authority(Auth, S).

% Paragraph 4: Exemption from Articles 79-83 procedures
exempt_surveillance_procedures(S) :-
    high_risk_ai_system(S),
    system_covered_by_annex_1(S),
    equivalent_protection_procedure_exists(S).

% Paragraph 6 and 7: AI systems used by financial institutions
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    direct_connection_financial_services(S),
    operator(Inst),
    financial_institution(Inst),
    \+ designated_other_authority(Auth, S),
    financial_supervisory_authority(Auth, Inst).

market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    direct_connection_financial_services(S),
    operator(Inst),
    financial_institution(Inst),
    designated_other_authority(Auth, S).

% Paragraph 7, subparagraph 2: Reporting to ECB
must_report(Authority, ecb_prudential_supervisory_information(Info)) :-
    market_surveillance_authority(Authority),
    operator(Inst),
    regulated_credit_institution_ssm(Inst),
    european_central_bank(ECB),
    must_report(Authority, recipient(ECB)).

% Paragraph 8: Law enforcement, border, justice, democracy and Annex III points 1, 6, 7, 8
market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    annex_3_point_1_system(S),
    used_for_law_enforcement_border_justice_democracy(S),
    data_protection_supervisory_authority(Auth).

market_surveillance_authority_for(Auth, S) :-
    high_risk_ai_system(S),
    annex_3_point_6_7_or_8_system(S),
    data_protection_supervisory_authority(Auth).

% Paragraph 9: Union institutions, bodies, offices and agencies
market_surveillance_authority_for(EDPS, S) :-
    ai_system(S),
    operator(Inst),
    union_institution_body_office_agency(Inst),
    \+ cjeu_in_judicial_capacity(Inst),
    european_data_protection_supervisor(EDPS).

% Paragraph 12: Access to documentation and data sets
must_grant_access(Provider, data_and_documentation(S, Auth)) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority(Auth),
    market_surveillance_authority_for(Auth, S).

% Paragraph 13: Access to source code upon reasoned request
must_grant_access(Provider, source_code(S, Auth)) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority(Auth),
    market_surveillance_authority_for(Auth, S),
    access_to_source_code_necessary(S, Auth),
    other_verification_insufficient_or_exhausted(S, Auth).

% Provenance
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(exempt_surveillance_procedures/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_report/2, 'celex:32024R1689/oj#art_74').

% References
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_14').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_74', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_41').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_42').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_43').
references('celex:32024R1689/oj#art_74', 'celex:32016L0680/oj#art_44').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').

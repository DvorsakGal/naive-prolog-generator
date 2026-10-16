% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 745f8e06e3b080eda0454effd95947a3ca190ec359e63871a860d0ad64bfca7e
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_74').
:- pred financial_institution/1, gloss('financial institution regulated by Union financial services law'), source('celex:32024R1689/oj#art_74').
:- pred direct_connection_with_financial_services/1, gloss('AI system used in direct connection with the provision of financial services'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for/2, gloss('authority acting as market surveillance authority for an AI system or entity'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervisory_authority/1, gloss('national authority responsible for financial supervision'), source('celex:32024R1689/oj#art_74').
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_74').
:- pred court_of_justice_judicial_capacity/1, gloss('Court of Justice of the European Union acting in its judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred must_report(Actor, Object), gloss('entity must report specified information to a recipient'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access(Actor, Object), gloss('provider must grant market surveillance authorities access to data/docs/source code'), source('celex:32024R1689/oj#art_74').
:- pred must_treat_confidential(Actor, Object), gloss('authority must treat information in accordance with confidentiality rules'), source('celex:32024R1689/oj#art_74').
:- pred permitted_remote_powers/1, gloss('market surveillance authority is permitted to exercise certain powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_condition_necessary/1, gloss('access to source code is necessary to assess conformity with Chapter III Section 2'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_condition_exhausted/1, gloss('testing or auditing procedures based on data and documentation proved insufficient or exhausted'), source('celex:32024R1689/oj#art_74').

% Paragraph 2: Market surveillance authorities reporting
must_report(Authority, competition_information(commission)) :-
    market_surveillance_authority(Authority).

must_report(Authority, competition_information(national_competition_authority)) :-
    market_surveillance_authority(Authority).

must_report(Authority, prohibited_practices_and_measures(commission)) :-
    market_surveillance_authority(Authority).

% Paragraph 5: Remote powers
permitted_remote_powers(Authority) :-
    market_surveillance_authority(Authority).

% Paragraph 6: Market surveillance authority for financial institutions
market_surveillance_authority_for(Authority, System) :-
    high_risk_ai_system(System),
    financial_institution(Institution),
    operator(Institution),
    direct_connection_with_financial_services(System),
    financial_supervisory_authority(Authority).

% Paragraph 9: EDPS for Union institutions
market_surveillance_authority_for(edps, Entity) :-
    union_institution_body_office_agency(Entity),
    \+ court_of_justice_judicial_capacity(Entity).

% Paragraph 12: Provider access obligations for documentation and datasets
must_grant_access(Provider, documentation_and_datasets(Authority, System)) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).

% Paragraph 13: Access to source code upon reasoned request and conditions
must_grant_access(Provider, source_code(Authority, System)) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    source_code_access_condition_necessary(System),
    source_code_access_condition_exhausted(System).

% Paragraph 14: Confidentiality
must_treat_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    non_personal_data(Information).
must_treat_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    personal_data(Information).

% Provenance
provenance(must_report/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_remote_powers/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_treat_confidential/2, 'celex:32024R1689/oj#art_74').

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

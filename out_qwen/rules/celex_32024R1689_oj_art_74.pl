% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 876cdbf7b63ed37341c0f730a566bf39c05b5991c242a1b487e093c058400341
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_74').
:- pred financial_institution/1, gloss('institution regulated by Union financial services law'), source('celex:32024R1689/oj#art_74').
:- pred union_harmonisation_legislation_product/1, gloss('product covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_74').
:- pred law_enforcement_purpose/1, gloss('use for law enforcement, border management, justice or democracy'), source('celex:32024R1689/oj#art_74').
:- pred annex_3_point_1_system/1, gloss('high-risk AI system listed in Annex III point 1'), source('celex:32024R1689/oj#art_74').
:- pred annex_3_point_6_8_system/1, gloss('high-risk AI system listed in Annex III points 6, 7 or 8'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_supervisory_authority/1, gloss('competent data protection supervisory authority under GDPR or LED'), source('celex:32024R1689/oj#art_74').
:- pred european_data_protection_supervisor/1, gloss('EDPS acting as market surveillance authority for Union bodies'), source('celex:32024R1689/oj#art_74').
:- pred union_body/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_74').
:- pred court_of_justice_acting_judicially/1, gloss('Court of Justice of the EU acting in judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred serious_risk_across_member_states/1, gloss('serious risk presented across two or more Member States'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_necessary/1, gloss('access to source code is necessary to assess conformity'), source('celex:32024R1689/oj#art_74').
:- pred testing_exhausted_or_insufficient/1, gloss('testing and auditing based on provided data have been exhausted or proved insufficient'), source('celex:32024R1689/oj#art_74').

must_report_competition_info(Authority, Commission) :-
    market_surveillance_authority(Authority),
    information_identified_during_surveillance(Info),
    potential_interest_for_competition_law(Info).

must_report_prohibited_practices(Authority, Commission) :-
    market_surveillance_authority(Authority),
    prohibited_practice_occurred_during_year(_Practice).

must_report_measures_taken(Authority, Commission) :-
    market_surveillance_authority(Authority),
    measure_taken_during_year(_Measure).

market_surveillance_authority_for_product_sector(Authority, S) :-
    high_risk_ai_system(S),
    related_to_product(S, P),
    union_harmonisation_legislation_product(P),
    designated_under_sectoral_legislation(Authority, P).

exempt_procedure(S, Procedure) :-
    high_risk_ai_system(S),
    related_to_product(S, P),
    union_harmonisation_legislation_product(P),
    equivalent_protection_procedure_exists(P, Procedure).

permitted_remote_power_exercise(Authority, Power) :-
    market_surveillance_authority(Authority),
    remote_power(Power),
    appropriate_for_remote_exercise(Power).

market_surveillance_authority_for_financial_sector(Authority, S) :-
    high_risk_ai_system(S),
    financial_institution_context(S, Institution),
    financial_institution(Institution),
    national_financial_supervisory_authority(Authority, Institution),
    direct_connection_to_financial_services(S).

market_surveillance_authority_for_law_enforcement(Authority, S) :-
    high_risk_ai_system(S),
    law_enforcement_purpose(S),
    (annex_3_point_1_system(S) ; annex_3_point_6_8_system(S)),
    data_protection_supervisory_authority(Authority).

market_surveillance_authority_for_union_body(Authority, Body) :-
    union_body(Body),
    \+ court_of_justice_acting_judicially(Body),
    european_data_protection_supervisor(Authority).

must_facilitate_coordination(MemberState) :-
    member_state(MemberState),
    market_surveillance_authority_designated(_Authority).

permitted_joint_activity(Activity) :-
    joint_investigation(Activity),
    serious_risk_across_member_states(_Category),
    aim_of_activity(Activity, Aim),
    valid_joint_activity_aim(Aim).

must_grant_access_to_documentation(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    relevant_for_tasks(Authority, S).

must_grant_access_to_datasets(Provider, Authority) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    dataset_used_for_development(S, _Dataset).

must_grant_source_code_access(Provider, Authority, S) :-
    provider(Provider),
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_made(Authority, S),
    source_code_access_necessary(S),
    testing_exhausted_or_insufficient(S).

must_treat_as_confidential(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_during_surveillance(Authority, Information).

provenance(must_report_competition_info/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_measures_taken/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_product_sector/2, 'celex:32024R1689/oj#art_74').
provenance(exempt_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_remote_power_exercise/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_sector/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_law_enforcement/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_union_body/2, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(permitted_joint_activity/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_datasets/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/3, 'celex:32024R1689/oj#art_74').
provenance(must_treat_as_confidential/2, 'celex:32024R1689/oj#art_74').

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

% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 689ce9d98f86090640c455b2b43e6fb050d210a09fe00043ba2540a3db5eff95
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred must_submit_annual_report/2, gloss('authority must submit annual report to Commission'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/2, gloss('authority must report prohibited practices and measures taken'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for_harmonised_product/2, gloss('market surveillance authority for high-risk AI system under harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred alternative_market_surveillance_authority_designated/2, gloss('Member State may designate alternative authority as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('sectoral procedures apply instead of Articles 79-83'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/2, gloss('market surveillance authority may exercise powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervisory_authority/2, gloss('financial supervisory authority acts as market surveillance authority for financial institutions'), source('celex:32024R1689/oj#art_74').
:- pred alternative_authority_for_financial_institution/2, gloss('alternative authority may be designated for financial institution'), source('celex:32024R1689/oj#art_74').
:- pred must_report_to_ecb/2, gloss('national authority must report to European Central Bank'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_supervisory_authority/2, gloss('data protection supervisory authority or other designated authority as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor acts as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('Member States shall facilitate coordination between authorities'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_investigation/2, gloss('authority or Commission may propose joint investigation'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_full_access/2, gloss('provider must grant full access to documentation and data sets'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_source_code_access/2, gloss('provider must grant access to source code upon reasoned request'), source('celex:32024R1689/oj#art_74').
:- pred confidentiality_obligations_apply/1, gloss('confidentiality obligations apply to information obtained'), source('celex:32024R1689/oj#art_74').

must_submit_annual_report(Authority, competition_information) :-
    market_surveillance_authority(Authority),
    report_annually(Authority).

must_report_prohibited_practices(Authority, prohibited_practices_and_measures) :-
    market_surveillance_authority(Authority),
    report_annually(Authority).

market_surveillance_authority_for_harmonised_product(S, Authority) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    market_surveillance_authority_designated(S, Authority).

alternative_market_surveillance_authority_designated(S, AlternativeAuthority) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    member_state_designates(AlternativeAuthority),
    coordination_ensured(AlternativeAuthority, SectoralAuthority),
    market_surveillance_authority_designated(S, SectoralAuthority).

sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    equivalent_protection_procedures_exist(S),
    same_objective_procedures_exist(S).

may_exercise_powers_remotely(Authority, powers(article_14_4_d_j)) :-
    market_surveillance_authority(Authority),
    effective_enforcement_required.

financial_supervisory_authority(S, FinancialAuthority) :-
    high_risk_ai_system(S),
    placed_or_put_into_service_by(_P, S),
    used_by(S, FinancialInstitution),
    regulated_by_union_financial_services_law(FinancialInstitution),
    financial_supervision_authority(FinancialInstitution, FinancialAuthority),
    direct_connection_with_financial_services(S).

alternative_authority_for_financial_institution(S, AlternativeAuthority) :-
    high_risk_ai_system(S),
    financial_supervisory_authority(S, _FinancialAuthority),
    member_state_identifies(AlternativeAuthority),
    appropriate_circumstances,
    coordination_ensured(AlternativeAuthority, FinancialAuthority).

must_report_to_ecb(Authority, prudential_information) :-
    market_surveillance_authority(Authority),
    supervises_credit_institution(Authority, Institution),
    regulated_under(Institution, 'celex:32013L0036/oj'),
    participates_in_single_supervisory_mechanism(Institution),
    information_of_prudential_interest(Information).

data_protection_supervisory_authority(S, Authority) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S),
    used_for_purpose(S, law_enforcement_border_management_justice_democracy),
    data_protection_authority(Authority).

data_protection_supervisory_authority(S, Authority) :-
    high_risk_ai_system(S),
    (annex_3_point_6_applies(S); annex_3_point_7_applies(S); annex_3_point_8_applies(S)),
    designated_under_conditions(Authority, 'celex:32016L0680/oj#art_41-44').

european_data_protection_supervisor(UnionEntity) :-
    union_institution(UnionEntity),
    \+ court_of_justice_acting_in_judicial_capacity(UnionEntity).

must_facilitate_coordination(MemberState, coordination_between(Authority, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    other_authority(OtherAuthority),
    supervises_harmonisation_legislation(OtherAuthority).

may_propose_joint_investigation(Proposer, joint_investigation(S)) :-
    (market_surveillance_authority(Proposer); Proposer = commission),
    high_risk_ai_system(S),
    serious_risk_across_member_states(S),
    specific_category(S).

must_grant_full_access(Provider, access_to(documentation_and_datasets(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    market_surveillance_authority_requests(Authority, Provider, S),
    limited_to_necessary_tasks(Authority).

must_grant_source_code_access(Provider, access_to(source_code(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, source_code(S)),
    access_necessary_for_conformity_assessment(S),
    testing_or_auditing_exhausted_or_insufficient(S).

confidentiality_obligations_apply(Information) :-
    obtained_by_market_surveillance_authority(Information).

% Provenance
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_harmonised_product/2, 'celex:32024R1689/oj#art_74').
provenance(alternative_market_surveillance_authority_designated/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_supervisory_authority/2, 'celex:32024R1689/oj#art_74').
provenance(alternative_authority_for_financial_institution/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(data_protection_supervisory_authority/2, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_investigation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/2, 'celex:32024R1689/oj#art_74').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_74').

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
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').

% Auxiliary predicates for conditions in rules
report_annually(_Authority).
appropriate_circumstances.
member_state_designates(_AlternativeAuthority).
member_state_identifies(_AlternativeAuthority).
coordination_ensured(_AlternativeAuthority, _SectoralAuthority).
equivalent_protection_procedures_exist(_S).
same_objective_procedures_exist(_S).
effective_enforcement_required.
regulated_by_union_financial_services_law(_FinancialInstitution).
financial_supervision_authority(_FinancialInstitution, _FinancialAuthority).
direct_connection_with_financial_services(_S).
supervises_credit_institution(_Authority, _Institution).
regulated_under(_Institution, _Legislation).
participates_in_single_supervisory_mechanism(_Institution).
information_of_prudential_interest(_Information).
used_for_purpose(_S, _Purpose).
designated_under_conditions(_Authority, _Legislation).
court_of_justice_acting_in_judicial_capacity(_UnionEntity).
other_authority(_OtherAuthority).
supervises_harmonisation_legislation(_OtherAuthority).
serious_risk_across_member_states(_S).
specific_category(_S).
market_surveillance_authority_requests(_Authority, _Provider, _S).
limited_to_necessary_tasks(_Authority).
reasoned_request(_Authority, _Provider, source_code(_S)).
access_necessary_for_conformity_assessment(_S).
testing_or_auditing_exhausted_or_insufficient(_S).
obtained_by_market_surveillance_authority(_Information).
annex_3_point_8_applies(_S).

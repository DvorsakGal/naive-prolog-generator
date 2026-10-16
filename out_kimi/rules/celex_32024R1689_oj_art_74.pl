% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : de9b961e741ec3bd339873753b8385d34e77bc6dfb3a628961ae82b9699fd143
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred must_report_annually/2, gloss('market surveillance authorities must report annually to Commission and competition authorities'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/2, gloss('market surveillance authorities must report annually about prohibited practices and measures taken'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_authority_for/2, gloss('the designated market surveillance authority for a given AI system or context'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('sectoral procedures apply instead of AI Act procedures for an AI system'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/2, gloss('market surveillance authority may exercise specified powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred must_designate_market_surveillance_authority/2, gloss('Member State must designate market surveillance authority for specific high-risk AI systems'), source('celex:32024R1689/art_74').
:- pred european_data_protection_supervisor_is_authority/1, gloss('EDPS acts as market surveillance authority for Union institutions'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/1, gloss('Member States must facilitate coordination between market surveillance authorities and other bodies'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_activities/2, gloss('market surveillance authorities or Commission may propose joint activities for specific high-risk AI systems'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_full_access/2, gloss('providers must grant full access to documentation and data sets to market surveillance authorities'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_granted/2, gloss('market surveillance authority is granted access to source code upon reasoned request'), source('celex:32024R1689/oj#art_74').

% Article 74(2) - Annual reporting obligations
must_report_annually(Authority, competition_information(Information)) :-
    market_surveillance_authority(Authority),
    information_identified(Information),
    potential_interest_for_competition_rules(Information).

must_report_annually(Authority, prohibited_practices_report(Year, Practices, Measures)) :-
    market_surveillance_authority(Authority),
    prohibited_practices_occurred(Practices, Year),
    measures_taken(Measures, Practices).

% Article 74(3) - Default and derogated market surveillance authority designation
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    authority_designated_under_harmonisation_legislation(Authority, S).

market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    member_state_designated(Authority, S),
    appropriate_circumstances,
    coordination_ensured(Authority, SectoralAuthorities),
    sectoral_market_surveillance_authorities(SectoralAuthorities, S).

% Article 74(4) - Sectoral procedures take precedence
sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    product_covered_by_harmonisation_legislation(S),
    harmonisation_legislation_provides_equivalent_procedures(S),
    equivalent_protection_level(S),
    same_objective(S).

% Article 74(5) - Remote exercise of powers
may_exercise_powers_remotely(Authority, powers(article_14_4_d_j)) :-
    market_surveillance_authority(Authority),
    effective_enforcement_required.

% Article 74(6) - Financial institutions: financial supervisor as authority
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_or_used_by(S, Institution),
    financial_institution(Institution),
    regulated_by_union_financial_services_law(Institution),
    national_financial_supervision_authority(Authority, Institution),
    direct_connection_with_financial_services(S, Institution).

% Article 74(7) - Derogation from paragraph 6 for financial institutions
market_surveillance_authority_for(Authority, S) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service_or_used_by(S, Institution),
    financial_institution(Institution),
    regulated_by_union_financial_services_law(Institution),
    member_state_identified(Authority, S),
    appropriate_circumstances,
    coordination_ensured(Authority, FinancialAuthority),
    national_financial_supervision_authority(FinancialAuthority, Institution).

% Article 74(8) - Designation for specific high-risk AI systems (law enforcement, border, justice, democracy, and Annex III points 6-8)
must_designate_market_surveillance_authority(MemberState, S) :-
    high_risk_ai_system(S),
    (listed_in_annex_3_point_1(S), used_for_law_enforcement_border_justice_democracy(S));
    listed_in_annex_3_point_6(S);
    listed_in_annex_3_point_7(S);
    listed_in_annex_3_point_8(S).

market_surveillance_authority_for(Authority, S) :-
    must_designate_market_surveillance_authority(_MemberState, S),
    (data_protection_supervisory_authority(Authority); other_authority_designated(Authority)),
    designated_under_conditions(Authority, article_41_to_44).

judicial_independence_protected :-
    market_surveillance_activities_do_not_affect_judicial_independence,
    no_interference_with_judicial_activities.

% Article 74(9) - EDPS as authority for Union institutions
european_data_protection_supervisor_is_authority(Institution) :-
    union_institution_body_office_or_agency(Institution),
    falls_within_scope(Institution),
    \+ court_of_justice_acting_in_judicial_capacity(Institution).

% Article 74(10) - Coordination facilitation
must_facilitate_coordination(MemberState) :-
    market_surveillance_authorities_designated(Authorities),
    other_relevant_national_authorities(OtherAuthorities),
    supervises_harmonisation_legislation_or_other_union_law(OtherAuthorities),
    relevant_for_high_risk_ai_systems(OtherAuthorities, annex_3).

% Article 74(11) - Joint activities
may_propose_joint_activities(Proposer, joint_investigation(HighRiskSystems)) :-
    (market_surveillance_authority(Proposer); commission(Proposer)),
    high_risk_ai_systems(HighRiskSystems),
    serious_risk_across_member_states(HighRiskSystems, TwoOrMore),
    aims_compliance_identification_awareness_guidance.

% Article 74(12) - Full access to documentation and data
must_grant_full_access(Provider, access(documentation_and_data_sets, Authority)) :-
    provider(Provider),
    high_risk_ai_system(S),
    developed_by(Provider, S),
    market_surveillance_authority(Authority),
    relevant_and_necessary_for_tasks(Authority),
    limited_to_what_is_necessary(Authority),
    access_includes(training_data, validation_data, testing_data),
    remote_access_possible(api_or_other_technical_means).

% Article 74(13) - Source code access conditions
source_code_access_granted(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_made(Authority, S),
    access_necessary_for_conformity_assessment(S),
    requirements_in_chapter_3_section_2(S),
    testing_or_auditing_exhausted_or_insufficient(S).

% Article 74(14) - Confidentiality (reference to Article 78, no additional rule needed)

% Provenance facts
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(must_designate_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor_is_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_granted/2, 'celex:32024R1689/oj#art_74').

% Reference facts
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
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_9').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_78').

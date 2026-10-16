% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0697911e0aee062b60ca1411ef022b79705357ffdd6afda1f01014846f1ae06d
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred market_surveillance_authority_for_ai_system/2, gloss('authority designated as market surveillance authority for a specific AI system'), source('celex:32024R1689/oj#art_74').
:- pred must_report_annually/2, gloss('obligation to report annually to specified recipients about specified matters'), source('celex:32024R1689/oj#art_74').
:- pred designated_market_surveillance_authority/2, gloss('Member State designates an authority as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred coordination_ensured/2, gloss('coordination is ensured between authorities'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('sectoral procedures apply instead of general procedures'), source('celex:32024R1689/oj#art_74').
:- pred equivalent_level_of_protection/1, gloss('procedures ensure equivalent level of protection'), source('celex:32024R1689/oj#art_74').
:- pred same_objective/1, gloss('procedures have the same objective'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/2, gloss('authority may exercise powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred financial_institution_regulated/1, gloss('financial institution regulated by Union financial services law'), source('celex:32024R1689/oj#art_74').
:- pred national_financial_supervision_authority/1, gloss('national authority responsible for financial supervision'), source('celex:32024R1689/oj#art_74').
:- pred in_direct_connection_with_financial_services/2, gloss('AI system use is in direct connection with provision of financial services'), source('celex:32024R1689/oj#art_74').
:- pred regulated_credit_institution/1, gloss('credit institution regulated under CRD'), source('celex:32024R1689/oj#art_74').
:- pred participating_in_single_supervisory_mechanism/1, gloss('institution participating in the Single Supervisory Mechanism'), source('celex:32024R1689/oj#art_74').
:- pred must_report_without_delay/2, gloss('obligation to report without delay to specified recipient'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_supervisory_authority/1, gloss('competent data protection supervisory authority under GDPR or LED'), source('celex:32024R1689/oj#art_74').
:- pred judicial_authority_independence_unaffected/1, gloss('market surveillance activities do not affect judicial authority independence'), source('celex:32024R1689/oj#art_74').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_74').
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_74').
:- pred court_of_justice_acting_in_judicial_capacity/1, gloss('Court of Justice acting in its judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('obligation to facilitate coordination between authorities'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_activities/2, gloss('authorities may propose joint activities'), source('celex:32024R1689/oj#art_74').
:- pred joint_investigation/1, gloss('joint investigation activity'), source('celex:32024R1689/oj#art_74').
:- pred ai_office_provides_coordination_support/1, gloss('AI Office provides coordination support for joint investigations'), source('celex:32024R1689/oj#art_74').
:- pred serious_risk_across_member_states/1, gloss('serious risk across two or more Member States'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_full_access_to_documentation/2, gloss('obligation to grant full access to documentation and data sets'), source('celex:32024R1689/oj#art_74').
:- pred must_grant_access_to_source_code/2, gloss('obligation to grant access to source code under conditions'), source('celex:32024R1689/oj#art_74').
:- pred reasoned_request_for_source_code/1, gloss('reasoned request for source code access'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_necessary_for_conformity_assessment/1, gloss('access to source code is necessary to assess conformity'), source('celex:32024R1689/oj#art_74').
:- pred testing_and_auditing_exhausted_or_insufficient/1, gloss('testing or auditing procedures exhausted or proved insufficient'), source('celex:32024R1689/oj#art_74').
:- pred must_treat_information_confidentially/2, gloss('obligation to treat information and documentation in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_74').
:- pred high_risk_ai_system_related_to_harmonisation_legislation/1, gloss('high-risk AI system related to products covered by Union harmonisation legislation in Annex I Section 1'), source('celex:32024R1689/oj#art_74').
:- pred high_risk_ai_system_for_law_enforcement_border_justice/1, gloss('high-risk AI system listed in Annex III point 1 used for law enforcement, border management, justice and democracy'), source('celex:32024R1689/oj#art_74').
:- pred high_risk_ai_system_annex_3_points_6_7_8/1, gloss('high-risk AI system listed in Annex III points 6, 7, or 8'), source('celex:32024R1689/oj#art_74').
:- pred placed_on_market/1, gloss('AI system placed on the market'), source('celex:32024R1689/oj#art_74').
:- pred put_into_service/1, gloss('AI system put into service'), source('celex:32024R1689/oj#art_74').
:- pred used_by_deployer/1, gloss('AI system used by a deployer'), source('celex:32024R1689/oj#art_74').

% Paragraph 1: Regulation 2019/1020 applies to AI systems, with interpretive rules
market_surveillance_regulation_applies(ai_system).

economic_operator_reference_includes_all_operators.

product_reference_includes_all_ai_systems.

% Paragraph 2: Annual reporting obligations
must_report_annually(Authority, competition_information) :-
    market_surveillance_authority(Authority),
    identified_during_market_surveillance(Authority, competition_information).

must_report_annually(Authority, prohibited_practices_report) :-
    market_surveillance_authority(Authority).

must_report_annually(commission, competition_information) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, competition_information).

must_report_annually(commission, prohibited_practices_report) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, prohibited_practices_report).

must_report_annually(national_competition_authority, competition_information) :-
    market_surveillance_authority(Authority),
    must_report_annually(Authority, competition_information).

% Paragraph 3: Market surveillance authority for high-risk AI systems related to harmonisation legislation
market_surveillance_authority_for_ai_system(Authority, S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    sectoral_market_surveillance_authority(Authority, S).

designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    member_state_designates(Authority),
    coordination_ensured(Authority, sectoral_authority).

% Paragraph 4: Derogation - sectoral procedures apply where equivalent protection
sectoral_procedures_apply(S) :-
    high_risk_ai_system_related_to_harmonisation_legislation(S),
    sectoral_legal_act_provides_procedures(S),
    equivalent_level_of_protection(S),
    same_objective(S).

% Paragraph 5: Remote exercise of powers
may_exercise_powers_remotely(Authority, power(d_and_j)) :-
    market_surveillance_authority(Authority),
    appropriate_circumstances.

% Paragraph 6: Financial institutions
market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    placed_on_market(S),
    put_into_service(S),
    used_by_deployer(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).

market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    placed_on_market(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).

market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    put_into_service(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).

market_surveillance_authority_for_ai_system(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    used_by_deployer(S),
    deployer(S, F),
    national_financial_supervision_authority(Authority),
    in_direct_connection_with_financial_services(S, financial_services).

% Paragraph 7: Derogation for financial institutions and ECB reporting
designated_market_surveillance_authority(Authority, S) :-
    financial_institution_regulated(F),
    high_risk_ai_system(S),
    deployer(S, F),
    member_state_identifies(Authority),
    coordination_ensured(Authority, national_financial_supervision_authority).

must_report_without_delay(Authority, european_central_bank) :-
    market_surveillance_authority(Authority),
    regulated_credit_institution(I),
    participating_in_single_supervisory_mechanism(I),
    supervises(Authority, I),
    identified_during_market_surveillance(Authority, prudential_information).

% Paragraph 8: Law enforcement, border management, justice and democracy
designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    data_protection_supervisory_authority(Authority).

designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_annex_3_points_6_7_8(S),
    data_protection_supervisory_authority(Authority).

designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    member_state_designates(Authority),
    designation_conditions_met(Authority).

designated_market_surveillance_authority(Authority, S) :-
    high_risk_ai_system_annex_3_points_6_7_8(S),
    member_state_designates(Authority),
    designation_conditions_met(Authority).

judicial_authority_independence_unaffected(S) :-
    high_risk_ai_system_for_law_enforcement_border_justice(S),
    market_surveillance_activity(S).

% Paragraph 9: Union institutions - EDPS as market surveillance authority
market_surveillance_authority_for_ai_system(european_data_protection_supervisor, S) :-
    union_institution_body_office_or_agency(I),
    ai_system(S),
    within_scope_of_regulation(I),
    \+ court_of_justice_acting_in_judicial_capacity(I).

% Paragraph 10: Coordination facilitation
must_facilitate_coordination(member_state, authorities) :-
    member_state(MemberState),
    market_surveillance_authority(Authority1),
    designates(MemberState, Authority1),
    other_relevant_authority(Authority2),
    supervises_application_of_union_law(Authority2),
    relevant_for_high_risk_ai_systems(Authority2).

% Paragraph 11: Joint activities
may_propose_joint_activities(Authority, joint_investigation) :-
    market_surveillance_authority(Authority).

may_propose_joint_activities(commission, joint_investigation) :-
    market_surveillance_authority(Authority).

joint_investigation(J) :-
    proposed_by(Authority, J),
    may_propose_joint_activities(Authority, J),
    aims_at_compliance_or_identifying_non_compliance(J).

ai_office_provides_coordination_support(J) :-
    joint_investigation(J),
    involves_multiple_member_states(J).

serious_risk_across_member_states(S) :-
    high_risk_ai_system(S),
    presents_serious_risk(S),
    across_member_states(S, two_or_more).

% Paragraph 12: Full access to documentation and data sets
must_grant_full_access_to_documentation(Authority, access(documentation_and_data_sets(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    relevant_and_limited_to_necessary(Authority, access).

must_grant_full_access_to_documentation(Authority, access(training_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, training_data).

must_grant_full_access_to_documentation(Authority, access(validation_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, validation_data).

must_grant_full_access_to_documentation(Authority, access(testing_data(S))) :-
    market_surveillance_authority(Authority),
    provider(P),
    high_risk_ai_system(S),
    provides(P, S),
    uses_for_development(S, testing_data).

% Paragraph 13: Access to source code
must_grant_access_to_source_code(Authority, source_code(S)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    reasoned_request_for_source_code(Request),
    made_by(Authority, Request),
    source_code_access_necessary_for_conformity_assessment(S),
    testing_and_auditing_exhausted_or_insufficient(S).

% Paragraph 14: Confidentiality
must_treat_information_confidentially(Authority, information_or_documentation) :-
    market_surveillance_authority(Authority),
    obtained(Authority, information_or_documentation),
    in_accordance_with_art_78.

% Helper predicates (declared for completeness, defined by facts or other articles)
:- pred identified_during_market_surveillance/2, gloss('information identified during market surveillance activities'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_market_surveillance_authority/2, gloss('sectoral market surveillance authority responsible for enforcement'), source('celex:32024R1689/oj#art_74').
:- pred member_state_designates/1, gloss('Member State designates an authority'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_legal_act_provides_procedures/1, gloss('sectoral legal act provides procedures'), source('celex:32024R1689/oj#art_74').
:- pred appropriate_circumstances/0, gloss('appropriate circumstances exist'), source('celex:32024R1689/oj#art_74').
:- pred deployer/2, gloss('entity deploys AI system'), source('celex:32024R1689/oj#art_74').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_74').
:- pred member_state_identifies/1, gloss('Member State identifies an authority'), source('celex:32024R1689/oj#art_74').
:- pred supervises/2, gloss('authority supervises entity'), source('celex:32024R1689/oj#art_74').
:- pred within_scope_of_regulation/1, gloss('entity falls within scope of regulation'), source('celex:32024R1689/oj#art_74').
:- pred other_relevant_authority/1, gloss('other relevant national authority or body'), source('celex:32024R1689/oj#art_74').
:- pred designates/2, gloss('Member State designates authority'), source('celex:32024R1689/oj#art_74').
:- pred supervises_application_of_union_law/1, gloss('authority supervises application of Union law'), source('celex:32024R1689/oj#art_74').
:- pred relevant_for_high_risk_ai_systems/1, gloss('authority relevant for high-risk AI systems'), source('celex:32024R1689/oj#art_74').
:- pred proposed_by/2, gloss('activity proposed by authority'), source('celex:32024R1689/oj#art_74').
:- pred aims_at_compliance_or_identifying_non_compliance/1, gloss('activity aims at compliance or identifying non-compliance'), source('celex:32024R1689/oj#art_74').
:- pred involves_multiple_member_states/1, gloss('activity involves multiple Member States'), source('celex:32024R1689/oj#art_74').
:- pred presents_serious_risk/1, gloss('AI system presents serious risk'), source('celex:32024R1689/oj#art_74').
:- pred across_member_states/2, gloss('risk across specified number of Member States'), source('celex:32024R1689/oj#art_74').
:- pred provides/2, gloss('provider provides AI system'), source('celex:32024R1689/oj#art_74').
:- pred relevant_and_limited_to_necessary/2, gloss('access is relevant and limited to what is necessary'), source('celex:32024R1689/oj#art_74').
:- pred uses_for_development/2, gloss('data used for development of AI system'), source('celex:32024R1689/oj#art_74').
:- pred made_by/2, gloss('request made by authority'), source('celex:32024R1689/oj#art_74').
:- pred designation_conditions_met/1, gloss('designation conditions laid down in LED are met'), source('celex:32024R1689/oj#art_74').
:- pred market_surveillance_activity/1, gloss('market surveillance activity conducted'), source('celex:32024R1689/oj#art_74').
:- pred obtained/2, gloss('authority obtained information or documentation'), source('celex:32024R1689/oj#art_74').
:- pred in_accordance_with_art_78/0, gloss('in accordance with Article 78 confidentiality obligations'), source('celex:32024R1689/oj#art_74').

% Provenance facts
provenance(market_surveillance_authority_for_ai_system/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(designated_market_surveillance_authority/2, 'celex:32024R1689/oj#art_74').
provenance(coordination_ensured/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(equivalent_level_of_protection/1, 'celex:32024R1689/oj#art_74').
provenance(same_objective/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_institution_regulated/1, 'celex:32024R1689/oj#art_74').
provenance(national_financial_supervision_authority/1, 'celex:32024R1689/oj#art_74').
provenance(in_direct_connection_with_financial_services/2, 'celex:32024R1689/oj#art_74').
provenance(regulated_credit_institution/1, 'celex:32024R1689/oj#art_74').
provenance(participating_in_single_supervisory_mechanism/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_without_delay/2, 'celex:32024R1689/oj#art_74').
provenance(data_protection_supervisory_authority/1, 'celex:32024R1689/oj#art_74').
provenance(judicial_authority_independence_unaffected/1, 'celex:32024R1689/oj#art_74').
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_74').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_74').
provenance(court_of_justice_acting_in_judicial_capacity/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(joint_investigation/1, 'celex:32024R1689/oj#art_74').
provenance(ai_office_provides_coordination_support/1, 'celex:32024R1689/oj#art_74').
provenance(serious_risk_across_member_states/1, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(reasoned_request_for_source_code/1, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_necessary_for_conformity_assessment/1, 'celex:32024R1689/oj#art_74').
provenance(testing_and_auditing_exhausted_or_insufficient/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_related_to_harmonisation_legislation/1, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_for_law_enforcement_border_justice/1, 'celex:32024R1689/oj#art_74').
provenance(high_risk_ai_system_annex_3_points_6_7_8/1, 'celex:32024R1689/oj#art_74').
provenance(placed_on_market/1, 'celex:32024R1689/oj#art_74').
provenance(put_into_service/1, 'celex:32024R1689/oj#art_74').
provenance(used_by_deployer/1, 'celex:32024R1689/oj#art_74').

% References
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_74', 'celex:32019R1020/oj#art_34/par_4').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_3/unp_1').
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

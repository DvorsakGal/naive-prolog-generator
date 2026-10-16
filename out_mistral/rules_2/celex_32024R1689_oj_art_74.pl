% unit       : celex:32024R1689/oj#art_74
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 3a8c4d81557366de509bf401e691f424aacf9a7c3ced0401a336110d9a7ed73f
% cached     : False
% title      : Market surveillance and control of AI systems in the Union market
:- pred market_surveillance_authority_for_ai_system/2, gloss('market surveillance authority designated for an AI system under this Regulation'), source('celex:32024R1689/oj#art_74').
:- pred economic_operator_reference_includes/1, gloss('reference to economic operator under Regulation 2019/1020 includes this operator'), source('celex:32024R1689/oj#art_74').
:- pred product_reference_includes/1, gloss('reference to product under Regulation 2019/1020 includes this AI system'), source('celex:32024R1689/oj#art_74').
:- pred must_report_competition_information/2, gloss('market surveillance authority must report competition-relevant information to Commission and national competition authorities'), source('celex:32024R1689/oj#art_74').
:- pred must_report_prohibited_practices/2, gloss('market surveillance authority must report use of prohibited practices and measures taken to Commission'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_market_surveillance_authority/1, gloss('authority responsible for market surveillance under sectoral Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred may_designate_alternative_authority/2, gloss('Member State may designate alternative authority with coordination'), source('celex:32024R1689/oj#art_74').
:- pred equivalent_protection_procedures/1, gloss('sectoral legal acts provide procedures ensuring equivalent level of protection with same objective'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_procedures_apply/1, gloss('relevant sectoral procedures apply instead of Articles 79-83'), source('celex:32024R1689/oj#art_74').
:- pred may_exercise_powers_remotely/2, gloss('market surveillance authority may exercise powers remotely'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervision_authority/1, gloss('national authority responsible for financial supervision of regulated financial institutions'), source('celex:32024R1689/oj#art_74').
:- pred regulated_financial_institution/1, gloss('financial institution regulated by Union financial services law'), source('celex:32024R1689/oj#art_74').
:- pred must_report_to_ecb/2, gloss('national market surveillance authority must report prudential information to European Central Bank'), source('celex:32024R1689/oj#art_74').
:- pred credit_institution_participating_ssm/1, gloss('regulated credit institution participating in Single Supervisory Mechanism'), source('celex:32024R1689/oj#art_74').
:- pred data_protection_authority_designated/1, gloss('competent data protection supervisory authority designated as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred other_authority_designated/1, gloss('other authority designated pursuant to LED conditions'), source('celex:32024R1689/oj#art_74').
:- pred judicial_independence_preserved/0, gloss('market surveillance activities do not affect independence of judicial authorities'), source('celex:32024R1689/oj#art_74').
:- pred edps_acts_as_authority/1, gloss('European Data Protection Supervisor acts as market surveillance authority for this entity'), source('celex:32024R1689/oj#art_74').
:- pred union_institution_body_office_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_74').
:- pred court_of_justice_judicial_capacity/1, gloss('Court of Justice of the European Union acting in its judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred must_facilitate_coordination/2, gloss('Member State must facilitate coordination between authorities'), source('celex:32024R1689/oj#art_74').
:- pred may_propose_joint_activities/2, gloss('market surveillance authorities and Commission may propose joint activities'), source('celex:32024R1689/oj#art_74').
:- pred joint_investigation_coordination_support/1, gloss('AI Office provides coordination support for joint investigations'), source('celex:32024R1689/oj#art_74').
:- pred full_access_to_documentation/2, gloss('market surveillance authority granted full access to provider documentation and data sets'), source('celex:32024R1689/oj#art_74').
:- pred access_to_source_code/2, gloss('market surveillance authority granted access to source code'), source('celex:32024R1689/oj#art_74').
:- pred source_code_access_necessary/1, gloss('access to source code is necessary to assess conformity with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_74').
:- pred testing_procedures_exhausted/1, gloss('testing or auditing procedures based on provider data and documentation exhausted or insufficient'), source('celex:32024R1689/oj#art_74').
:- pred reasoned_request_for_source_code/1, gloss('reasoned request for source code access'), source('celex:32024R1689/oj#art_74').

% Article 74(1)(a): references to economic operator include all operators in Article 2(1)
economic_operator_reference_includes(O) :-
    operator(O).

% Article 74(1)(b): references to product include all AI systems in scope
product_reference_includes(S) :-
    ai_system(S).

% Article 74(2): annual reporting obligations
must_report_competition_information(A, information(competition_rules, identified_in_market_surveillance)) :-
    market_surveillance_authority(A),
    annually(A).

must_report_prohibited_practices(A, report(prohibited_practices_use_and_measures, year(Y))) :-
    market_surveillance_authority(A),
    annually(A),
    year(Y).

% Helper: annual reporting cycle
annually(_A).

% Article 74(3): sectoral authority for products covered by Annex I Section 1
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    sectoral_market_surveillance_authority(A).

% Article 74(3) derogation: Member State may designate another authority
may_designate_alternative_authority(M, A) :-
    member_state(M),
    market_surveillance_authority(A),
    coordination_ensured(A, sectoral_market_surveillance_authority).

coordination_ensured(_A, _B).

% Article 74(4): equivalent protection procedures
sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    equivalent_protection_procedures(S).

equivalent_protection_procedures(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).

% Article 74(5): remote exercise of powers
may_exercise_powers_remotely(A, powers(article_14_4_d_j, regulation_2019_1020)) :-
    market_surveillance_authority(A),
    appropriate(A).

appropriate(_A).

% Article 74(6): financial institutions
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    placed_on_market(S),
    regulated_financial_institution(I),
    used_by_financial_institution(S, I),
    financial_supervision_authority(A),
    direct_connection_with_financial_services(S).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    putting_into_service(S),
    regulated_financial_institution(I),
    used_by_financial_institution(S, I),
    financial_supervision_authority(A),
    direct_connection_with_financial_services(S).

used_by_financial_institution(S, I) :-
    high_risk_ai_system(S),
    regulated_financial_institution(I).

direct_connection_with_financial_services(_S).

% Article 74(7): derogation for financial institutions
may_designate_alternative_authority(M, A) :-
    member_state(M),
    market_surveillance_authority(A),
    coordination_ensured(A, financial_supervision_authority).

% Article 74(7): reporting to ECB
must_report_to_ecb(A, information(prudential_supervision, identified_in_market_surveillance)) :-
    market_surveillance_authority(A),
    credit_institution_participating_ssm(I),
    supervises_credit_institution(A, I),
    without_delay(A).

supervises_credit_institution(A, I) :-
    market_surveillance_authority(A),
    credit_institution_participating_ssm(I).

% Article 74(8): data protection authorities for specific high-risk systems
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    for_purposes_of_law_enforcement(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_border_management(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_justice_and_democracy(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_6(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_7(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_8(S),
    data_protection_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    for_purposes_of_law_enforcement(S),
    other_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_border_management(S),
    other_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_justice_and_democracy(S),
    other_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_6(S),
    other_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_7(S),
    other_authority_designated(A).

market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_8(S),
    other_authority_designated(A).

% Helper predicates for Annex III points
annex_3_point_6(S) :- high_risk_ai_system(S).
annex_3_point_7(S) :- high_risk_ai_system(S).
annex_3_point_8(S) :- high_risk_ai_system(S).
used_for_border_management(S) :- high_risk_ai_system(S).
used_for_justice_and_democracy(S) :- high_risk_ai_system(S).

% Judicial independence preserved
judicial_independence_preserved.

% Article 74(9): EDPS for Union institutions
edps_acts_as_authority(E) :-
    union_institution_body_office_agency(E),
    \+ court_of_justice_judicial_capacity(E).

% Article 74(10): coordination facilitation
must_facilitate_coordination(M, coordination(market_surveillance_authorities, other_relevant_authorities)) :-
    member_state(M).

% Article 74(11): joint activities
may_propose_joint_activities(A, joint_activities(promoting_compliance, identifying_non_compliance, raising_awareness, providing_guidance)) :-
    market_surveillance_authority(A).

may_propose_joint_activities(ai_office, joint_activities(promoting_compliance, identifying_non_compliance, raising_awareness, providing_guidance)).

joint_investigation_coordination_support(ai_office).

% Article 74(12): full access to documentation and data
full_access_to_documentation(A, access(documentation, training_data, validation_data, testing_data)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S).

provides(P, S) :-
    provider(P),
    ai_system(S).

% Article 74(13): access to source code
access_to_source_code(A, source_code(S)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    reasoned_request_for_source_code(request(A, S)),
    source_code_access_necessary(assessment(S, chapter_3_section_2_requirements)),
    testing_procedures_exhausted(procedures(S)).

% Article 74(14): confidentiality
must_treat_information_confidentially(A, information_or_documentation(obtained_by_market_surveillance_authority)) :-
    market_surveillance_authority(A).

% Provenance
provenance(market_surveillance_authority_for_ai_system/2, 'celex:32024R1689/oj#art_74').
provenance(economic_operator_reference_includes/1, 'celex:32024R1689/oj#art_74').
provenance(product_reference_includes/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_competition_information/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(equivalent_protection_procedures/1, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_supervision_authority/1, 'celex:32024R1689/oj#art_74').
provenance(regulated_financial_institution/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(credit_institution_participating_ssm/1, 'celex:32024R1689/oj#art_74').
provenance(data_protection_authority_designated/1, 'celex:32024R1689/oj#art_74').
provenance(other_authority_designated/1, 'celex:32024R1689/oj#art_74').
provenance(judicial_independence_preserved/0, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_authority/1, 'celex:32024R1689/oj#art_74').
provenance(union_institution_body_office_agency/1, 'celex:32024R1689/oj#art_74').
provenance(court_of_justice_judicial_capacity/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(joint_investigation_coordination_support/1, 'celex:32024R1689/oj#art_74').
provenance(full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_necessary/1, 'celex:32024R1689/oj#art_74').
provenance(testing_procedures_exhausted/1, 'celex:32024R1689/oj#art_74').
provenance(reasoned_request_for_source_code/1, 'celex:32024R1689/oj#art_74').

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

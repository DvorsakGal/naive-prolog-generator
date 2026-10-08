% unit       : celex:32024R1689/oj#art_74
% title      : Market surveillance and control of AI systems in the Union market
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : dab212739f3ebb35ba23157b5a0321d43579c3e925fd7dc3195749ed4cf9d846
% model      : gpt-oss:120b-cloud
% prompt sha : 7d306ee1ec0293d1a10d61632c1e809ba0d8be02a436ae681cccff9fdacd6f05
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_74').
:- pred recipient_of_report/1, gloss('recipient of market surveillance report'), source('celex:32024R1689/oj#art_74').
:- pred identified_info/1, gloss('information identified in market surveillance activities'), source('celex:32024R1689/oj#art_74').
:- pred report_subject/1, gloss('subject of a market surveillance report'), source('celex:32024R1689/oj#art_74').
:- pred prohibited_practice/1, gloss('practice prohibited under Union law'), source('celex:32024R1689/oj#art_74').
:- pred power/1, gloss('power referred to in Article 14(4) points (d) and (j)'), source('celex:32024R1689/oj#art_74').
:- pred procedure/1, gloss('procedure referred to in Articles 79‑83'), source('celex:32024R1689/oj#art_74').
:- pred covered_by_union_harmonisation_legislation/1, gloss('AI system falls within scope of Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_74').
:- pred sectoral_market_surveillance_authority/1, gloss('sectoral market surveillance authority designated under Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred financial_supervision_authority/1, gloss('national authority responsible for financial supervision'), source('celex:32024R1689/oj#art_74').
:- pred used_by_financial_institution/1, gloss('AI system used by a financial institution'), source('celex:32024R1689/oj#art_74').
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_74').
:- pred authority/1, gloss('any authority that may be designated as market surveillance authority'), source('celex:32024R1689/oj#art_74').
:- pred coordination_ensured/2, gloss('coordination ensured between Member State and designated authority'), source('celex:32024R1689/oj#art_74').
:- pred competent_data_protection_supervisory_authority/1, gloss('competent data‑protection supervisory authority'), source('celex:32024R1689/oj#art_74').
:- pred other_designated_authority/1, gloss('any other authority designated under the same conditions'), source('celex:32024R1689/oj#art_74').
:- pred listed_in_anx3/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_74').
:- pred law_enforcement_purpose/1, gloss('AI system used for law‑enforcement, border‑management or justice purposes'), source('celex:32024R1689/oj#art_74').
:- pred european_data_protection_supervisor/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_74').
:- pred union_institution/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_74').
:- pred court_of_justice/1, gloss('Court of Justice of the European Union acting in its judicial capacity'), source('celex:32024R1689/oj#art_74').
:- pred other_relevant_national_authority/1, gloss('other relevant national authority supervising Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
:- pred coordination_facilitated/3, gloss('coordination facilitated between market surveillance authority and other authority by Member State'), source('celex:32024R1689/oj#art_74').
:- pred joint_activity/1, gloss('joint activity or investigation involving market surveillance authorities and/or the Commission'), source('celex:32024R1689/oj#art_74').
:- pred aim_promoting_compliance/1, gloss('aim of promoting compliance, identifying non‑compliance, raising awareness or providing guidance'), source('celex:32024R1689/oj#art_74').
:- pred data_set/1, gloss('training, validation or testing data set used for development of an AI system'), source('celex:32024R1689/oj#art_74').
:- pred remote_access_allowed/2, gloss('remote access to data set allowed by provider'), source('celex:32024R1689/oj#art_74').
:- pred reasoned_request/2, gloss('reasoned request made by market surveillance authority for source code'), source('celex:32024R1689/oj#art_74').
:- pred access_necessary/1, gloss('access to source code necessary to assess conformity'), source('celex:32024R1689/oj#art_74').
:- pred testing_exhausted/1, gloss('testing or auditing procedures based on provided data have been exhausted or proved insufficient'), source('celex:32024R1689/oj#art_74').
:- pred obtained_information/1, gloss('information or documentation obtained by market surveillance authorities'), source('celex:32024R1689/oj#art_74').
:- pred confidentiality_obligation/1, gloss('confidentiality obligations set out in Article 78'), source('celex:32024R1689/oj#art_74').

:- pred required_annual_report/3, gloss('annual report by market surveillance authority to the Commission'), source('celex:32024R1689/oj#art_74').
required_annual_report(MSA, Commission, Info) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    recipient_of_report(Commission),
    identified_info(Info),
    report_subject(Info).

:- pred required_annual_report_of_prohibited_practices/3, gloss('annual report of prohibited practices by market surveillance authority to the Commission'), source('celex:32024R1689/oj#art_74').
required_annual_report_of_prohibited_practices(MSA, Commission, Practice) :-
    market_surveillance_authority(MSA),
    commission(Commission),
    prohibited_practice(Practice),
    report_subject(Practice).

:- pred permitted_exercise_power_remotely/2, gloss('market surveillance authority may exercise powers remotely'), source('celex:32024R1689/oj#art_74').
permitted_exercise_power_remotely(MSA, Power) :-
    market_surveillance_authority(MSA),
    power(Power),
    remote(Power).

:- pred prohibited_application_of_procedure/2, gloss('procedures shall not apply to AI systems covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
prohibited_application_of_procedure(Procedure, AISystem) :-
    ai_system(AISystem),
    procedure(Procedure),
    covered_by_union_harmonisation_legislation(AISystem).

:- pred permitted_application_of_sectoral_procedure/2, gloss('sectoral procedures shall apply instead'), source('celex:32024R1689/oj#art_74').
permitted_application_of_sectoral_procedure(Procedure, AISystem) :-
    ai_system(AISystem),
    procedure(Procedure),
    covered_by_union_harmonisation_legislation(AISystem).

:- pred market_surveillance_authority_for_system/2, gloss('designated market surveillance authority for high‑risk AI system related to Union harmonisation legislation'), source('celex:32024R1689/oj#art_74').
market_surveillance_authority_for_system(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    covered_by_union_harmonisation_legislation(AISystem),
    sectoral_market_surveillance_authority(Authority).

:- pred market_surveillance_authority_for_financial_ai/2, gloss('market surveillance authority for high‑risk AI systems used by financial institutions'), source('celex:32024R1689/oj#art_74').
market_surveillance_authority_for_financial_ai(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    (   placing_on_market(AISystem)
    ;   putting_into_service(AISystem)
    ;   used_by_financial_institution(AISystem)
    ),
    financial_supervision_authority(Authority).

:- pred permitted_designation_of_alternative_authority/2, gloss('Member State may designate another authority as market surveillance authority'), source('celex:32024R1689/oj#art_74').
permitted_designation_of_alternative_authority(MemberState, Authority) :-
    member_state(MemberState),
    authority(Authority),
    coordination_ensured(MemberState, Authority).

:- pred market_surveillance_authority_for_law_enforcement_ai/2, gloss('designated market surveillance authority for law‑enforcement high‑risk AI systems'), source('celex:32024R1689/oj#art_74').
market_surveillance_authority_for_law_enforcement_ai(Authority, AISystem) :-
    high_risk_ai_system(AISystem),
    listed_in_anx3(AISystem),
    law_enforcement_purpose(AISystem),
    (   competent_data_protection_supervisory_authority(Authority)
    ;   other_designated_authority(Authority)
    ).

:- pred market_surveillance_authority_for_union_institution/2, gloss('European Data Protection Supervisor acts as market surveillance authority for Union institutions'), source('celex:32024R1689/oj#art_74').
market_surveillance_authority_for_union_institution(EDPS, Institution) :-
    european_data_protection_supervisor(EDPS),
    union_institution(Institution),
    \+ court_of_justice(Institution).

:- pred required_coordination/2, gloss('Member State shall facilitate coordination between market surveillance authorities and other relevant national authorities'), source('celex:32024R1689/oj#art_74').
required_coordination(MemberState, OtherAuthority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    other_relevant_national_authority(OtherAuthority),
    coordination_facilitated(MemberState, Authority, OtherAuthority).

:- pred permitted_propose_joint_activity/2, gloss('Market surveillance authorities and the Commission may propose joint investigations'), source('celex:32024R1689/oj#art_74').
permitted_propose_joint_activity(Actor, Activity) :-
    (   market_surveillance_authority(Actor)
    ;   commission(Actor)
    ),
    joint_activity(Activity),
    aim_promoting_compliance(Activity).

:- pred permitted_access_to_data_remotely/3, gloss('Market surveillance authorities may access documentation and data sets remotely'), source('celex:32024R1689/oj#art_74').
permitted_access_to_data_remotely(MSA, Provider, DataSet) :-
    market_surveillance_authority(MSA),
    provider(Provider),
    data_set(DataSet),
    remote_access_allowed(Provider, DataSet).

:- pred permitted_access_source_code/3, gloss('Market surveillance authorities may access source code upon a reasoned request and when conditions are fulfilled'), source('celex:32024R1689/oj#art_74').
permitted_access_source_code(MSA, Provider, AISystem) :-
    market_surveillance_authority(MSA),
    provider(Provider),
    high_risk_ai_system(AISystem),
    reasoned_request(MSA, AISystem),
    access_necessary(AISystem),
    testing_exhausted(AISystem).

:- pred must_confidentially_treat/2, gloss('Market surveillance authorities must treat obtained information confidentially'), source('celex:32024R1689/oj#art_74').
must_confidentially_treat(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtained_information(Info),
    confidentiality_obligation(Info).

provenance(required_annual_report/3, 'celex:32024R1689/oj#art_74').
provenance(required_annual_report_of_prohibited_practices/3, 'celex:32024R1689/oj#art_74').
provenance(permitted_exercise_power_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(prohibited_application_of_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_application_of_sectoral_procedure/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_system/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_ai/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_designation_of_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_law_enforcement_ai/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_union_institution/2, 'celex:32024R1689/oj#art_74').
provenance(required_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_propose_joint_activity/2, 'celex:32024R1689/oj#art_74').
provenance(permitted_access_to_data_remotely/3, 'celex:32024R1689/oj#art_74').
provenance(permitted_access_source_code/3, 'celex:32024R1689/oj#art_74').
provenance(must_confidentially_treat/2, 'celex:32024R1689/oj#art_74').

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
references('celex:32024R1689/oj#art_74', 'celex:32013L0036/oj').
references('celex:32024R1689/oj#art_74', 'celex:32013R1024/oj').
references('celex:32024R1689/oj#art_74', 'celex:32024R1689/oj#art_74/par_6').
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

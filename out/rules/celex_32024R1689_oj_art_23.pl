% unit       : celex:32024R1689/oj#art_23
% title      : Obligations of importers
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : gpt-oss:120b-cloud
% prompt sha : 9ec5936dbdb2bfdd3017c96ab4c8ee2f317f62f08321b6423bdcf10f7623a856
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred required_conformity_assessment_procedure_by_provider/2, gloss('importer must verify provider carried out conformity assessment'), source('celex:32024R1689/oj#art_23').
:- pred required_technical_documentation_by_provider/2, gloss('importer must verify provider drew up technical documentation'), source('celex:32024R1689/oj#art_23').
:- pred required_ce_marking_and_declaration/2, gloss('importer must verify system bears CE marking, EU declaration of conformity and instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred required_authorised_representative_appointment_by_provider/2, gloss('importer must verify provider appointed an authorised representative'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_conformity_before_placing/2, gloss('importer must ensure conformity before placing high‑risk AI system on the market'), source('celex:32024R1689/oj#art_23').
:- pred prohibited_placing_on_market/2, gloss('importer prohibited from placing system on market when not in conformity'), source('celex:32024R1689/oj#art_23').
:- pred non_conformity_reason/2, gloss('importer has sufficient reason to consider system not in conformity or falsified'), source('celex:32024R1689/oj#art_23').
:- pred sufficient_reason/2, gloss('importer has sufficient reason'), source('celex:32024R1689/oj#art_23').
:- pred not_in_conformity/1, gloss('system not in conformity'), source('celex:32024R1689/oj#art_23').
:- pred falsified/1, gloss('system is falsified'), source('celex:32024R1689/oj#art_23').
:- pred falsified_documentation/1, gloss('documentation is falsified'), source('celex:32024R1689/oj#art_23').
:- pred risk_present/1, gloss('system presents a risk as defined in art 79 par 1'), source('celex:32024R1689/oj#art_23').
:- pred must_inform/5, gloss('importer shall inform provider, authorised representative and market surveillance authorities of risk'), source('celex:32024R1689/oj#art_23').
:- pred required_labeling_information/2, gloss('importer shall indicate name, trade name/mark and address on system and packaging'), source('celex:32024R1689/oj#art_23').
:- pred required_storage_transport_conditions/2, gloss('importer shall ensure storage/transport do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred required_record_keeping/2, gloss('importer shall keep copies of certificate, instructions for use and declaration for 10 years'), source('celex:32024R1689/oj#art_23').
:- pred required_provide_information/3, gloss('importer shall provide competent authorities with necessary information upon request'), source('celex:32024R1689/oj#art_23').
:- pred required_cooperate/3, gloss('importer shall cooperate with competent authorities'), source('celex:32024R1689/oj#art_23').

must_ensure_conformity_before_placing(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    required_conformity_assessment_procedure_by_provider(Importer, System),
    required_technical_documentation_by_provider(Importer, System),
    required_ce_marking_and_declaration(Importer, System),
    required_authorised_representative_appointment_by_provider(Importer, System).

required_conformity_assessment_procedure_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_technical_documentation_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_ce_marking_and_declaration(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_authorised_representative_appointment_by_provider(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conformity_reason(Importer, System).

non_conformity_reason(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    sufficient_reason(Importer, System),
    (   not_in_conformity(System)
    ;   falsified(System)
    ;   falsified_documentation(System)
    ).

must_inform(Importer, Provider, Representative, Authority, System) :-
    importer(Importer),
    provider(Provider),
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    risk_present(System).

required_labeling_information(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_storage_transport_conditions(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_record_keeping(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

required_provide_information(Importer, Authority, System) :-
    importer(Importer),
    national_competent_authority(Authority),
    high_risk_ai_system(System).

required_cooperate(Importer, Authority, System) :-
    importer(Importer),
    national_competent_authority(Authority),
    high_risk_ai_system(System).

provenance(must_ensure_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(required_conformity_assessment_procedure_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_technical_documentation_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(required_authorised_representative_appointment_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(non_conformity_reason/2, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason/2, 'celex:32024R1689/oj#art_23').
provenance(not_in_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(falsified/1, 'celex:32024R1689/oj#art_23').
provenance(falsified_documentation/1, 'celex:32024R1689/oj#art_23').
provenance(risk_present/1, 'celex:32024R1689/oj#art_23').
provenance(must_inform/5, 'celex:32024R1689/oj#art_23').
provenance(required_labeling_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_storage_transport_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(required_record_keeping/2, 'celex:32024R1689/oj#art_23').
provenance(required_provide_information/3, 'celex:32024R1689/oj#art_23').
provenance(required_cooperate/3, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').

% unit       : celex:32024R1689/oj#art_23
% title      : Obligations of importers
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : gpt-oss:120b-cloud
% prompt sha : bc39dd59f3c092ce3095e32c17268b7ea90e4ddd8a9308d9a80d3ecede750b48
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred required_ensure_conformity/2, gloss('importer must ensure conformity of high‑risk AI system'), source('celex:32024R1689/oj#art_23').
:- pred required_conformity_assessment_by_provider/2, gloss('provider has carried out the relevant conformity assessment procedure'), source('celex:32024R1689/oj#art_23').
:- pred required_technical_documentation_by_provider/2, gloss('provider has drawn up the technical documentation'), source('celex:32024R1689/oj#art_23').
:- pred required_ce_marking_and_declaration/2, gloss('system bears CE marking and is accompanied by EU declaration of conformity and instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred required_authorised_representative_appointment/2, gloss('provider has appointed an authorised representative'), source('celex:32024R1689/oj#art_23').
:- pred prohibited_place_on_market_unless_conform/2, gloss('importer shall not place system on market until conformity is achieved'), source('celex:32024R1689/oj#art_23').
:- pred system_in_conformity/1, gloss('high‑risk AI system is in conformity with the Regulation'), source('celex:32024R1689/oj#art_23').
:- pred required_inform_provider_if_risk/2, gloss('importer shall inform provider, authorised representative and market surveillance authorities of a risk'), source('celex:32024R1689/oj#art_23').
:- pred risk_within_meaning_of_art_79/1, gloss('system presents a risk within the meaning of Art 79 para 1'), source('celex:32024R1689/oj#art_23').
:- pred required_label_information/2, gloss('importer shall indicate name, trade name/mark and address on system, packaging or documentation'), source('celex:32024R1689/oj#art_23').
:- pred required_maintain_compliance_storage/2, gloss('importer shall ensure storage/transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred required_maintain_records/2, gloss('importer shall keep copies of certificate, instructions for use and declaration for ten years'), source('celex:32024R1689/oj#art_23').
:- pred required_provide_information/2, gloss('importer shall provide competent authorities with necessary information upon request'), source('celex:32024R1689/oj#art_23').
:- pred required_cooperate/2, gloss('importer shall cooperate with competent authorities in actions concerning the system'), source('celex:32024R1689/oj#art_23').

% -----------------------------------------------------------------
% Main obligations
required_ensure_conformity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    required_conformity_assessment_by_provider(I, S),
    required_technical_documentation_by_provider(I, S),
    required_ce_marking_and_declaration(I, S),
    required_authorised_representative_appointment(I, S).

required_conformity_assessment_by_provider(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_carried_out_assessment(P, S).

required_technical_documentation_by_provider(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_drawn_up_technical_documentation(P, S).

required_ce_marking_and_declaration(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    system_has_ce_marking(S),
    system_accompanied_by_declaration_and_instructions(S).

required_authorised_representative_appointment(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    provider(P),
    provider_has_appointed_authorised_representative(P).

prohibited_place_on_market_unless_conform(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    \+ system_in_conformity(S).

system_in_conformity(S) :-
    required_ensure_conformity(_, S).

required_inform_provider_if_risk(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    risk_within_meaning_of_art_79(S),
    provider(P),
    authorised_representative(AR),
    market_surveillance_authority(MSA),
    inform(P, S),
    inform(AR, S),
    inform(MSA, S).

required_label_information(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    label_contains_name_trade_mark_address(I, S).

required_maintain_compliance_storage(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).

required_maintain_records(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    keep_copy_of_certificate_for_10_years(I, S),
    keep_copy_of_instructions_for_10_years(I, S),
    keep_copy_of_declaration_for_10_years(I, S).

required_provide_information(I, S) :-
    importer(I),
    high_rrisk_ai_system(S),
    competent_authority(CA),
    request_reasoned(CA),
    provide_information(CA, S).

required_cooperate(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    competent_authority(CA),
    cooperate_with(CA, I, S).

% -----------------------------------------------------------------
% Helper predicates (definitions)
provider_has_carried_out_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provider_has_drawn_up_technical_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).

system_has_ce_marking(S) :-
    high_risk_ai_system(S).

system_accompanied_by_declaration_and_instructions(S) :-
    high_risk_ai_system(S).

provider_has_appointed_authorised_representative(P) :-
    provider(P).

risk_within_meaning_of_art_79(S) :-
    high_risk_ai_system(S).

inform(Actor, S) :-
    actor(Actor),
    high_risk_ai_system(S).

label_contains_name_trade_mark_address(I, S) :-
    importer(I),
    high_risk_ai_system(S).

storage_or_transport_conditions_do_not_jeopardise_compliance(S) :-
    high_risk_ai_system(S).

keep_copy_of_certificate_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).

keep_copy_of_instructions_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).

keep_copy_of_declaration_for_10_years(I, S) :-
    importer(I),
    high_risk_ai_system(S).

competent_authority(CA) :-
    market_surveillance_authority(CA).

request_reasoned(CA) :-
    competent_authority(CA).

provide_information(CA, S) :-
    competent_authority(CA),
    high_risk_ai_system(S).

cooperate_with(CA, I, S) :-
    competent_authority(CA),
    importer(I),
    high_risk_ai_system(S).

% -----------------------------------------------------------------
% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(required_ensure_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(required_conformity_assessment_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_technical_documentation_by_provider/2, 'celex:32024R1689/oj#art_23').
provenance(required_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(required_authorised_representative_appointment/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_place_on_market_unless_conform/2, 'celex:32024R1689/oj#art_23').
provenance(system_in_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(required_inform_provider_if_risk/2, 'celex:32024R1689/oj#art_23').
provenance(risk_within_meaning_of_art_79/1, 'celex:32024R1689/oj#art_23').
provenance(required_label_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_maintain_compliance_storage/2, 'celex:32024R1689/oj#art_23').
provenance(required_maintain_records/2, 'celex:32024R1689/oj#art_23').
provenance(required_provide_information/2, 'celex:32024R1689/oj#art_23').
provenance(required_cooperate/2, 'celex:32024R1689/oj#art_23').

% -----------------------------------------------------------------
% References
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').

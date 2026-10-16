% unit       : celex:32024R1689/oj#art_46
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 19976cfce940b775e3fad4e919e795ce392264c94f8a38dddbc96e311f4af7e7
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 5fc147c3c274b57e6e94419833bba1f9bd4743d686cfde59b8a382a1fffc85fe
% cached     : False
% title      : Derogation from conformity assessment procedure
:- pred derogation_authorisation_granted/2, gloss('market surveillance authority authorises placing on market or putting into service of high-risk AI system by derogation'), source('celex:32024R1689/oj#art_46').
:- pred exceptional_reason_applies/1, gloss('exceptional reason of public security, protection of life and health, environmental protection or protection of key industrial and infrastructural assets'), source('celex:32024R1689/oj#art_46').
:- pred urgency_situation_for_law_enforcement/1, gloss('duly justified situation of urgency for exceptional reasons of public security or specific substantial imminent threat to life or physical safety'), source('celex:32024R1689/oj#art_46').
:- pred must_request_authorisation_without_undue_delay/2, gloss('law enforcement or civil protection authority must request authorisation during or after use without undue delay'), source('celex:32024R1689/oj#art_46').
:- pred must_stop_use_and_discard_outputs/2, gloss('use of high-risk AI system must be stopped and outputs discarded if authorisation refused'), source('celex:32024R1689/oj#art_46').
:- pred must_inform_commission_and_member_states_of_authorisation/2, gloss('market surveillance authority must inform Commission and other Member States of authorisation issued'), source('celex:32024R1689/oj#art_46').
:- pred objection_raised_within_period/1, gloss('objection raised by Member State or Commission within 15 calendar days of receipt of information'), source('celex:32024R1689/oj#art_46').
:- pred authorisation_deemed_justified/1, gloss('authorisation deemed justified where no objection raised within 15 calendar days'), source('celex:32024R1689/oj#art_46').
:- pred must_consult_and_decide_on_authorisation/2, gloss('Commission must enter consultations and decide whether authorisation is justified'), source('celex:32024R1689/oj#art_46').
:- pred must_withdraw_authorisation/2, gloss('market surveillance authority must withdraw authorisation considered unjustified by Commission'), source('celex:32024R1689/oj#art_46').
:- pred covered_by_union_harmonisation_legislation_annex_i_section_1/1, gloss('high-risk AI system related to product covered by Union harmonisation legislation listed in Annex I Section 1'), source('celex:32024R1689/oj#art_46').

derogation_authorisation_granted(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    exceptional_reason_applies(S),
    requirements_of_chapter_3_section_2(S).

exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_public_security(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_protection_of_life_and_health(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_environmental_protection(S).
exceptional_reason_applies(S) :-
    high_risk_ai_system(S),
    objective_protection_of_key_industrial_and_infrastructural_assets(S).

urgency_situation_for_law_enforcement(S) :-
    high_risk_ai_system(S),
    urgency_applies(S),
    objective_public_security(S).
urgency_situation_for_law_enforcement(S) :-
    high_risk_ai_system(S),
    urgency_applies(S),
    objective_protection_of_life_and_physical_safety(S).

must_request_authorisation_without_undue_delay(Actor, S) :-
    law_enforcement_authority(Actor),
    high_risk_ai_system(S),
    urgency_situation_for_law_enforcement(S).
must_request_authorisation_without_undue_delay(Actor, S) :-
    deployer(Actor),
    high_risk_ai_system(S),
    urgency_situation_for_law_enforcement(S).

must_stop_use_and_discard_outputs(Actor, S) :-
    operator(Actor),
    high_risk_ai_system(S),
    \+ derogation_authorisation_granted(_A, S).

must_inform_commission_and_member_states_of_authorisation(A, S) :-
    market_surveillance_authority(A),
    derogation_authorisation_granted(A, S),
    \+ sensitive_operational_data_excluded(S).

sensitive_operational_data_excluded(S) :-
    high_risk_ai_system(S),
    sensitive_operational_data(S).

authorisation_deemed_justified(S) :-
    derogation_authorisation_granted(_A, S),
    \+ objection_raised_within_period(S).

must_consult_and_decide_on_authorisation(C, S) :-
    ai_office(C),
    derogation_authorisation_granted(_A, S),
    objection_raised_within_period(S).

must_withdraw_authorisation(A, S) :-
    market_surveillance_authority(A),
    derogation_authorisation_granted(A, S),
    \+ authorisation_deemed_justified(S).

covered_by_union_harmonisation_legislation_annex_i_section_1(S) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).

provenance(derogation_authorisation_granted/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason_applies/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation_for_law_enforcement/1, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation_without_undue_delay/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(objection_raised_within_period/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(must_consult_and_decide_on_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(covered_by_union_harmonisation_legislation_annex_i_section_1/1, 'celex:32024R1689/oj#art_46').

references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

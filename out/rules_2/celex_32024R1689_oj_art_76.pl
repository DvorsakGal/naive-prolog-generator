% unit       : celex:32024R1689/oj#art_76
% title      : Supervision of testing in real world conditions by market surveillance authorities
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 58dcc4c461fb6a1c5355ad3fb985470be0d0f0697e47f10e185aec2d252f4b43
% model      : gpt-oss:120b-cloud
% prompt sha : 313a3b4a4c0a36c77364fd21527c0622757c18b994d1f3e2cdd957b73f0ddf1b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_competence_and_power/2, gloss('obligation for market surveillance authority to have competences and powers'), source('celex:32024R1689/oj#art_76').
:- pred testing_in_real_world_conditions/1, gloss('testing of an AI system in real‑world conditions'), source('celex:32024R1689/oj#art_76').
:- pred supervised_in_ai_regulatory_sandbox/1, gloss('AI system is supervised within an AI regulatory sandbox'), source('celex:32024R1689/oj#art_76').
:- pred required_verify_compliance/3, gloss('obligation for market surveillance authority to verify compliance with a given article'), source('celex:32024R1689/oj#art_76').
:- pred permitted_testing_conducted_by/3, gloss('permission for market surveillance authority to allow testing to be conducted by a provider or prospective provider'), source('celex:32024R1689/oj#art_76').
:- pred prospective_provider/1, gloss('entity that may become a provider of an AI system'), source('celex:32024R1689/oj#art_76').
:- pred prospective_deployer/1, gloss('entity that may become a deployer of an AI system'), source('celex:32024R1689/oj#art_76').
:- pred serious_incident_reported/1, gloss('serious incident concerning an AI system has been reported'), source('celex:32024R1689/oj#art_76').
:- pred conditions_not_met_applies/1, gloss('conditions set out in the relevant articles are not met'), source('celex:32024R1689/oj#art_76').
:- pred permitted_suspend_or_terminate_testing/2, gloss('permission for market surveillance authority to suspend or terminate real‑world testing'), source('celex:32024R1689/oj#art_76').
:- pred permitted_require_modification/4, gloss('permission for market surveillance authority to require modification of testing'), source('celex:32024R1689/oj#art_76').
:- pred required_indication_of_grounds_and_challenge/2, gloss('obligation to indicate grounds and how the provider can challenge a decision or objection'), source('celex:32024R1689/oj#art_76').
:- pred decision/1, gloss('decision taken by a market surveillance authority'), source('celex:32024R1689/oj#art_76').
:- pred decision_refers_to_art_76_par_3/1, gloss('decision refers to paragraph 3 of article 76'), source('celex:32024R1689/oj#art_76').
:- pred objection_under_art_60_par_4_b/1, gloss('objection issued under paragraph 4 point b of article 60'), source('celex:32024R1689/oj#art_76').
:- pred required_communication_of_grounds/3, gloss('obligation to communicate grounds to other Member State authorities'), source('celex:32024R1689/oj#art_76').

required_competence_and_power(MSA, testing_in_real_world_conditions(S)) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S).

required_verify_compliance(MSA, S, 'art_60') :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    supervised_in_ai_regulatory_sandbox(S).

permitted_testing_conducted_by(MSA, Provider, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( provider(Provider) ; prospective_provider(Provider) ),
    supervised_in_ai_regulatory_sandbox(S).

permitted_suspend_or_terminate_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( serious_incident_reported(S) ; conditions_not_met_applies(S) ).

permitted_require_modification(MSA, Provider, Deployer, S) :-
    market_surveillance_authority(MSA),
    testing_in_real_world_conditions(S),
    ( provider(Provider) ; prospective_provider(Provider) ),
    ( deployer(Deployer) ; prospective_deployer(Deployer) ).

required_indication_of_grounds_and_challenge(MSA, Decision) :-
    market_surveillance_authority(MSA),
    decision(Decision),
    ( decision_refers_to_art_76_par_3(Decision) ; objection_under_art_60_par_4_b(Decision) ).

required_communication_of_grounds(MSA, OtherMSA, S) :-
    market_surveillance_authority(MSA),
    market_surveillance_authority(OtherMSA),
    testing_in_real_world_conditions(S),
    decision_refers_to_art_76_par_3(_).

provenance(required_competence_and_power/2, 'celex:32024R1689/oj#art_76').
provenance(required_verify_compliance/3, 'celex:32024R1689/oj#art_76').
provenance(permitted_testing_conducted_by/3, 'celex:32024R1689/oj#art_76').
provenance(permitted_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(permitted_require_modification/4, 'celex:32024R1689/oj#art_76').
provenance(required_indication_of_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
provenance(required_communication_of_grounds/3, 'celex:32024R1689/oj#art_76').

references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_f').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_g').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_76/par_3').
references('celex:32024R1689/oj#art_76', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_b').

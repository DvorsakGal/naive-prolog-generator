% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7aabff9bf9ed819b8b42ad87c7314fd1f44af19c93c2694cec03fd40a6c63232
% cached     : False
% title      : Human oversight
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_14').
:- pred required_human_oversight/1, gloss('High-risk AI system requires effective human oversight during use'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight_measure/2, gloss('Oversight measure established for a high-risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred enables_human_oversight/2, gloss('System enables an oversight capability for assigned natural persons'), source('celex:32024R1689/oj#art_14').
:- pred biometrics_annex_3_1_a/1, gloss('High-risk AI system referred to in Annex III point 1(a)'), source('celex:32024R1689/oj#art_14').
:- pred exempt_two_person_verification/1, gloss('System exempt from two-person verification requirement under Union or national law'), source('celex:32024R1689/oj#art_14').
:- pred verified_and_confirmed_by_two_persons/1, gloss('Identification output verified and confirmed by at least two competent persons'), source('celex:32024R1689/oj#art_14').
:- pred permitted_action_on_biometric_id/2, gloss('Deployer is permitted to act or decide based on biometric identification'), source('celex:32024R1689/oj#art_14').
:- pred must_design_and_develop/2, gloss('Provider must design and develop system with human oversight capability'), source('celex:32024R1689/oj#art_14').

% Article 14(1): High-risk AI systems must be designed and developed for effective oversight
must_design_and_develop(Provider, human_oversight(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

required_human_oversight(System) :-
    high_risk_ai_system(System).

% Article 14(3): Oversight measures must be built-in or identified for the deployer
human_oversight_measure(System, built_in(Provider)) :-
    high_risk_ai_system(System),
    provider(Provider).

human_oversight_measure(System, deployer_implementable(Provider)) :-
    high_risk_ai_system(System),
    provider(Provider).

% Article 14(4): Oversight capabilities to be enabled
enables_human_oversight(System, understand_and_monitor) :-
    high_risk_ai_system(System).

enables_human_oversight(System, avoid_automation_bias) :-
    high_risk_ai_system(System).

enables_human_oversight(System, correctly_interpret_output) :-
    high_risk_ai_system(System).

enables_human_oversight(System, disregard_override_or_reverse) :-
    high_risk_ai_system(System).

enables_human_oversight(System, intervene_or_interrupt) :-
    high_risk_ai_system(System).

% Article 14(5): Dual-person verification for Annex III point 1(a) systems
permitted_action_on_biometric_id(Deployer, action(System, Output)) :-
    deployer(Deployer),
    biometrics_annex_3_1_a(System),
    verified_and_confirmed_by_two_persons(Output).

permitted_action_on_biometric_id(Deployer, action(System, _Output)) :-
    deployer(Deployer),
    biometrics_annex_3_1_a(System),
    exempt_two_person_verification(System).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measure/2, 'celex:32024R1689/oj#art_14').
provenance(enables_human_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(biometrics_annex_3_1_a/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(verified_and_confirmed_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(permitted_action_on_biometric_id/2, 'celex:32024R1689/oj#art_14').
provenance(must_design_and_develop/2, 'celex:32024R1689/oj#art_14').

references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

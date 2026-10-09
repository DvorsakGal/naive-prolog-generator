% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6396a10f8adba48850bc55dc13ff9c4aa9bebfb61c2b4c0994cd57475a34d8c2
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred must_ensure_transparency/2, gloss('provider must ensure transparency of high‑risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred must_provide_instructions/2, gloss('provider must provide instructions for use to deployers'), source('celex:32024R1689/oj#art_13').

:- pred required_provider_identity/1, gloss('instructions must contain identity and contact details of the provider and, where applicable, its authorised representative'), source('celex:32024R1689/oj#art_13').
:- pred required_system_characteristics/1, gloss('instructions must contain characteristics, capabilities and limitations of performance of the high‑risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred required_intended_purpose/1, gloss('instructions must contain the intended purpose of the high‑risk AI system'), source('celex:32024R1689/oj#art_13').
:- pred required_accuracy_information/1, gloss('instructions must contain level of accuracy, metrics, robustness and cybersecurity, and known or foreseeable circumstances affecting them'), source('celex:32024R1689/oj#art_13').
:- pred required_risk_information/1, gloss('instructions must contain any known or foreseeable circumstance that may lead to risks to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_13').
:- pred required_technical_capabilities/1, gloss('instructions must contain technical capabilities and characteristics relevant to explain the system’s output'), source('celex:32024R1689/oj#art_13').
:- pred required_performance_on_persons/1, gloss('instructions must contain performance regarding specific persons or groups of persons on which the system is intended to be used'), source('celex:32024R1689/oj#art_13').
:- pred required_input_data_specifications/1, gloss('instructions must contain specifications for the input data or other relevant information on training, validation and testing data sets'), source('celex:32024R1689/oj#art_13').
:- pred required_interpretation_information/1, gloss('instructions must contain information enabling deployers to interpret the output and use it appropriately'), source('celex:32024R1689/oj#art_13').
:- pred required_change_information/1, gloss('instructions must contain changes to the system and its performance pre‑determined by the provider at the moment of the initial conformity assessment'), source('celex:32024R1689/oj#art_13').
:- pred required_human_oversight_measures/1, gloss('instructions must contain human oversight measures and technical measures facilitating interpretation of outputs'), source('celex:32024R1689/oj#art_13').
:- pred required_computational_resources/1, gloss('instructions must contain computational and hardware resources needed, expected lifetime and maintenance measures'), source('celex:32024R1689/oj#art_13').
:- pred required_log_mechanisms/1, gloss('instructions must contain description of mechanisms for collecting, storing and interpreting logs'), source('celex:32024R1689/oj#art_13').

must_ensure_transparency(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_provide_instructions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    instructions_for_use(_Info).

required_provider_identity(System) :-
    high_risk_ai_system(System).

required_system_characteristics(System) :-
    high_risk_ai_system(System).

required_intended_purpose(System) :-
    high_risk_ai_system(System).

required_accuracy_information(System) :-
    high_risk_ai_system(System).

required_risk_information(System) :-
    high_risk_ai_system(System).

required_technical_capabilities(System) :-
    high_risk_ai_system(System).

required_performance_on_persons(System) :-
    high_risk_ai_system(System).

required_input_data_specifications(System) :-
    high_risk_ai_system(System).

required_interpretation_information(System) :-
    high_risk_ai_system(System).

required_change_information(System) :-
    high_risk_ai_system(System).

required_human_oversight_measures(System) :-
    high_risk_ai_system(System).

required_computational_resources(System) :-
    high_risk_ai_system(System).

required_log_mechanisms(System) :-
    high_risk_ai_system(System).

provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions/2, 'celex:32024R1689/oj#art_13').
provenance(required_provider_identity/1, 'celex:32024R1689/oj#art_13').
provenance(required_system_characteristics/1, 'celex:32024R1689/oj#art_13').
provenance(required_intended_purpose/1, 'celex:32024R1689/oj#art_13').
provenance(required_accuracy_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_risk_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_technical_capabilities/1, 'celex:32024R1689/oj#art_13').
provenance(required_performance_on_persons/1, 'celex:32024R1689/oj#art_13').
provenance(required_input_data_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(required_interpretation_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_change_information/1, 'celex:32024R1689/oj#art_13').
provenance(required_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(required_computational_resources/1, 'celex:32024R1689/oj#art_13').
provenance(required_log_mechanisms/1, 'celex:32024R1689/oj#art_13').

references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

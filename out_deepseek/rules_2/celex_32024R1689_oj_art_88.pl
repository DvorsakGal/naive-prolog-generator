% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 9ec06a5b9a2b1a386eef81aa32e80256f74fcd25da2f1d4dca0ccf17e8cb878e
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred must_supervise_and_enforce/2, gloss('entity must supervise and enforce obligations'), source('celex:32024R1689/oj#art_88').
:- pred may_request_exercise_of_powers/2, gloss('entity may request Commission to exercise powers'), source('celex:32024R1689/oj#art_88').

must_supervise_and_enforce(Commission, obligations_of_providers_of_general_purpose_ai_models) :-
    taking_into_account(procedural_guarantees(art_94)).

must_entrust_implementation(Commission, ai_office, tasks(supervision_and_enforcement)) :-
    must_supervise_and_enforce(Commission, obligations_of_providers_of_general_purpose_ai_models).

may_request_exercise_of_powers(market_surveillance_authority, Commission) :-
    necessary_and_proportionate_to_assist(tasks_under_regulation).

provenance(must_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust_implementation/3, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

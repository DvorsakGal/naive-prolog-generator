% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : f306cd3aafad9eacc00be7832adbcb575df8bbda9a6463d5f90cc0ee75329cab
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
must_supervise(commission, Provider) :-
    general_purpose_ai_model_provider(Provider).

must_enforce(commission, Provider) :-
    general_purpose_ai_model_provider(Provider).

must_entrust(commission, ai_office).

permitted_request_exercise_powers(Authority) :-
    market_surveillance_authority(Authority).

provenance(must_supervise/2, 'celex:32024R1689/oj#art_88').
provenance(must_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/1, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

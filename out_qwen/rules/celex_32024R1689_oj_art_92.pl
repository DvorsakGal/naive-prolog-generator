% unit       : celex:32024R1689/oj#art_92
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : d5c5b0811c9a72bcd0b9d192d2b415eecbdc80f14c025983b47481f9dc3ba30f
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5db9819c580fef5e5d5b86e8be9d620cc296b06c1772d8adb1dc85f53ae8d8ab
% cached     : False
% title      : Power to conduct evaluations
:- pred permitted_evaluation_purpose/1, gloss('purpose for which the AI Office may conduct an evaluation'), source('celex:32024R1689/oj#art_92').
:- pred must_supply_requested_information(Actor, Model), gloss('provider or representative must supply information requested for evaluation'), source('celex:32024R1689/oj#art_92').
:- pred must_provide_access_to_model(Actor, Model), gloss('authorised person must provide access to model on behalf of provider'), source('celex:32024R1689/oj#art_92').
:- pred request_for_access_applies/1, gloss('request for access to a general-purpose AI model for evaluation'), source('celex:32024R1689/oj#art_92').
:- pred valid_request_for_access/1, gloss('request for access that states legal basis, purpose, reasons, period and fines'), source('celex:32024R1689/oj#art_92').

permitted_evaluation_purpose(assess_compliance(M)) :-
    general_purpose_ai_model(M),
    information_gathered_insufficient(M).

permitted_evaluation_purpose(investigate_systemic_risk(M)) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_supply_requested_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    request_for_access_applies(M).

must_supply_requested_information(R, M) :-
    authorised_representative(R),
    general_purpose_ai_model(M),
    request_for_access_applies(M).

must_provide_access_to_model(A, M) :-
    general_purpose_ai_model(M),
    request_for_access_applies(M),
    authorised_to_represent_provider(A, M).

valid_request_for_access(R) :-
    request_for_access_applies(R),
    states_legal_basis(R),
    states_purpose(R),
    states_reasons(R),
    sets_period(R),
    states_fines_for_failure(R).

provenance(permitted_evaluation_purpose/1, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_provide_access_to_model/2, 'celex:32024R1689/oj#art_92').
provenance(request_for_access_applies/1, 'celex:32024R1689/oj#art_92').
provenance(valid_request_for_access/1, 'celex:32024R1689/oj#art_92').

references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

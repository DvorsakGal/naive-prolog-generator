% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 6e925f01300a234da584275c6abb9e32f10b928283783bc8d84f1580e4e31510
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred has_exclusive_powers_to_supervise_and_enforce/2, gloss('entity has exclusive powers to supervise and enforce a specific chapter'), source('celex:32024R1689/oj#art_88').
:- pred must_entrust_implementation_to_ai_office/2, gloss('entity must entrust implementation of tasks to the AI Office'), source('celex:32024R1689/oj#art_88').
:- pred may_request_commission_to_exercise_powers/2, gloss('market surveillance authority may request Commission to exercise powers for assistance'), source('celex:32024R1689/oj#art_88').

has_exclusive_powers_to_supervise_and_enforce(commission, chapter_v).

must_entrust_implementation_to_ai_office(commission, tasks_of_chapter_v_supervision_and_enforcement).

may_request_commission_to_exercise_powers(Authority, powers_of_chapter_ix_section_5) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_for_fulfilment_of_tasks(Authority).

necessary_and_proportionate_for_fulfilment_of_tasks(_Authority).

provenance(has_exclusive_powers_to_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust_implementation_to_ai_office/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_commission_to_exercise_powers/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate_for_fulfilment_of_tasks/1, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').

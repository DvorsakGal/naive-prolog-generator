% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : ed6181835679444ea1103b072377dfdbb8b1d91fab2e3e5dedb34d0dfc5fe8eb
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred commission_has_exclusive_powers/1, gloss('Commission has exclusive powers to supervise and enforce Chapter V'), source('celex:32024R1689/oj#art_88').
:- pred commission_entrusts_implementation_to_ai_office/1, gloss('Commission entrusts implementation of supervision and enforcement tasks to the AI Office'), source('celex:32024R1689/oj#art_88').
:- pred market_surveillance_authority_may_request_commission/2, gloss('market surveillance authority may request Commission to exercise powers under Chapter 9 Section 5'), source('celex:32024R1689/oj#art_88').

commission_has_exclusive_powers(supervise_and_enforce_chapter_v).

commission_entrusts_implementation_to_ai_office(implementation(supervise_and_enforce_chapter_v)).

market_surveillance_authority_may_request_commission(A, exercise_powers(chapter_9_section_5)) :-
    market_surveillance_authority(A),
    necessary_and_proportionate_to_assist_fulfilment_of_tasks(A).

necessary_and_proportionate_to_assist_fulfilment_of_tasks(A) :-
    market_surveillance_authority(A).

provenance(commission_has_exclusive_powers/1, 'celex:32024R1689/oj#art_88').
provenance(commission_entrusts_implementation_to_ai_office/1, 'celex:32024R1689/oj#art_88').
provenance(market_surveillance_authority_may_request_commission/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

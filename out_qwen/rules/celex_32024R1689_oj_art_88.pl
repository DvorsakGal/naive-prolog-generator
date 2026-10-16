% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7f7931c04d758acc67a550fbd9a0d9f95e4d966024b2d732b9c565daab8902df
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred must_supervise_and_enforce_chapter_v(Actor, Object), gloss('Commission has exclusive power to supervise and enforce Chapter V obligations'), source('celex:32024R1689/oj#art_88').
:- pred may_request_exercise_of_powers(Actor, Object), gloss('Market surveillance authority may request Commission to exercise Section 5 powers'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate_to_assist(X), gloss('Request is necessary and proportionate to assist with tasks under this Regulation'), source('celex:32024R1689/oj#art_88').

must_supervise_and_enforce_chapter_v(commission, obligations(providers_of_general_purpose_ai_models)).

may_request_exercise_of_powers(Authority, powers(section_5)) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate_to_assist(request(Authority, powers(section_5))).

necessary_and_proportionate_to_assist(request(Authority, powers(section_5))) :-
    market_surveillance_authority(Authority).

provenance(must_supervise_and_enforce_chapter_v/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').
provenance(necessary_and_proportionate_to_assist/1, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').

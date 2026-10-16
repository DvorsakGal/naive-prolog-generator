% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 506443de6e204d3f59b3c9349b015be7343a6af6b98ee8a78f83ff0d52d2464c
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred must_supervise_and_enforce/2, gloss('Commission has exclusive powers to supervise and enforce'), source('celex:32024R1689/oj#art_88').
:- pred entrust_implementation/2, gloss('Commission entrusts implementation to an entity'), source('celex:32024R1689/oj#art_88').
:- pred may_request_exercise_of_powers/2, gloss('authority may request another to exercise powers'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate/1, gloss('measure is necessary and proportionate'), source('celex:32024R1689/oj#art_88').

must_supervise_and_enforce(commission, chapter_5) :-
    general_purpose_ai_model(_).

entrust_implementation(commission, ai_office) :-
    must_supervise_and_enforce(commission, chapter_5).

may_request_exercise_of_powers(market_surveillance_authority, commission) :-
    market_surveillance_authority(Authority),
    necessary_and_proportionate(request(Authority, commission, powers(chapter_9_section_5))).

provenance(must_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(entrust_implementation/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% unit       : celex:32024R1689/oj#art_88
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dd52f588092bd9e6b0ee4a806af7e9809615fd1a8f0f17080205edba1c9f4e49
% cached     : False
% title      : Enforcement of the obligations of providers of general-purpose AI models
:- pred exclusive_power/2, gloss('entity has exclusive power over a subject matter'), source('celex:32024R1689/oj#art_88').
:- pred entrusted_implementation/2, gloss('entity entrusted with implementation of tasks by another entity'), source('celex:32024R1689/oj#art_88').
:- pred may_request_commission/2, gloss('entity may request Commission to exercise powers'), source('celex:32024R1689/oj#art_88').

exclusive_power(commission, supervision_and_enforcement_chapter_5).

entrusted_implementation(ai_office, supervision_and_enforcement_chapter_5) :-
    exclusive_power(commission, supervision_and_enforcement_chapter_5).

may_request_commission(market_surveillance_authority, exercise_powers_chapter_9_section_5) :-
    market_surveillance_authority(_A).

provenance(exclusive_power/2, 'celex:32024R1689/oj#art_88').
provenance(entrusted_implementation/2, 'celex:32024R1689/oj#art_88').
provenance(may_request_commission/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% unit       : celex:32024R1689/oj#art_88
% title      : Enforcement of the obligations of providers of general-purpose AI models
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 78e08fc15356970ba7573083a322d63e76ff18199d51a2a0d33ca830de948737
% model      : gpt-oss:120b-cloud
% prompt sha : 0488dd6303e61a7ce8250e435dca38719a494002cf755a37950e70b69048ad96
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_88').
:- pred necessary_and_proportionate_applies/1, gloss('condition that a request is necessary and proportionate'), source('celex:32024R1689/oj#art_88').

required_exclusive_power_supervise_and_enforce(Commission) :-
    commission(Commission).

must_entrust(Commission, AIOffice) :-
    commission(Commission),
    ai_office(AIOffice).

permitted_request_exercise_powers(MarketSurveillanceAuthority, Commission) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    commission(Commission),
    necessary_and_proportionate_applies(Commission).

provenance(required_exclusive_power_supervise_and_enforce/1, 'celex:32024R1689/oj#art_88').
provenance(must_entrust/2, 'celex:32024R1689/oj#art_88').
provenance(permitted_request_exercise_powers/2, 'celex:32024R1689/oj#art_88').

references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').

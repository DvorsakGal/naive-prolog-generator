% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 66fde8195e7b50d3ebc99584dc510badba8eb3c9c045be2162e97ad982c7bd44
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred detailed_measure/1, gloss('measure related to technical specifications and procedures for approval and use of security equipment'), source('celex:32024R1689/oj#art_102').
:- pred concerns_ai_system/1, gloss('relates to Artificial Intelligence systems within the meaning of this Regulation'), source('celex:32024R1689/oj#art_102').
:- pred must_take_into_account_requirements/1, gloss('obligation to consider requirements set out in Chapter III Section 2 when adopting measures'), source('celex:32024R1689/oj#art_102').

detailed_measure(M) :-
    concerns_ai_system(M).

must_take_into_account_requirements(M) :-
    detailed_measure(M).

provenance(detailed_measure/1, 'celex:32024R1689/oj#art_102').
provenance(concerns_ai_system/1, 'celex:32024R1689/oj#art_102').
provenance(must_take_into_account_requirements/1, 'celex:32024R1689/oj#art_102').

references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').

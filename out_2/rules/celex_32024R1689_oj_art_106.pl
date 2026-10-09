% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 45c685e0916d127f7d409c8c1d0643e9f6a300d7627967a9fa9eff175d9efb5a
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred adopting_delegated_act/1, gloss('entity adopting delegated act pursuant to a provision'), source('celex:32024R1689/oj#art_106').
:- pred implementing_act/1, gloss('entity implementing act pursuant to a provision'), source('celex:32024R1689/oj#art_106').
:- pred pursuant_to/2, gloss('actor acts pursuant to the given provision'), source('celex:32024R1689/oj#art_106').

must_take_into_account(Actor, requirements_set_out_in(chapter_3_section_2)) :-
    adopting_delegated_act(Actor),
    pursuant_to(Actor, 'celex:32016L0797/oj#art_5/par_1'),
    implementing_act(Actor),
    pursuant_to(Actor, 'celex:32016L0797/oj#art_5/par_11'),
    safety_component(S),
    ai_system(S).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#art_5/par_12').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_1').
references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj#art_5/par_11').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_106', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_106', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_106', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_106', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_106', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_106', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_106', 'celex:32024R1689/oj#chp_3/sec_2').

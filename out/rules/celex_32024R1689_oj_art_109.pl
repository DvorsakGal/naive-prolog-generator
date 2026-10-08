% unit       : celex:32024R1689/oj#art_109
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : gpt-oss:120b-cloud
% prompt sha : 3317ca4c44ed81c995d1fa5cda96d8f82cfc3a843ffc7186f59e485e5b2d40e2
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_take_into_account/2, gloss('obligation to take into account requirements'), source('celex:32024R1689/oj#art_109').
:- pred adopting_implementing_act/2, gloss('entity adopting an implementing act'), source('celex:32024R1689/oj#art_109').
:- pred pursuant_to_art_11_par_2/1, gloss('implementing act is pursuant to article 11 paragraph 2'), source('celex:32024R1689/oj#art_109').

required_take_into_account(Actor, requirement_set_out_in(chapter_3_section_2)) :-
    adopting_implementing_act(Actor, Act),
    pursuant_to_art_11_par_2(Act),
    safety_component(S),
    ai_system(S).

provenance(required_take_into_account/2, 'celex:32024R1689/oj#art_109').

references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').

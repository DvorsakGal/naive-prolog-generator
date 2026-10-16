% unit       : celex:32024R1689/oj#art_109
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 6f5ea89660d7516781c8d50f8d8b8dc43f673fa5079de2f6959998344c9b6715
% cached     : False
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
:- pred must_take_into_account_requirements/2, gloss('requirements of Chapter 3 Section 2 taken into account when adopting implementing acts'), source('celex:32024R1689/oj#art_109').
:- pred implementing_act_concerning_ai_safety_components/1, gloss('implementing act concerning AI systems which are safety components'), source('celex:32024R1689/oj#art_109').
:- pred adopting_implementing_acts_pursuant_to/2, gloss('adopting implementing acts pursuant to a specific article paragraph'), source('celex:32024R1689/oj#art_109').

implementing_act_concerning_ai_safety_components(A) :-
    ai_system_safety_component(S),
    implementing_act(A, S).

adopting_implementing_acts_pursuant_to(Commission, art_11_par_2) :-
    member_state(Commission).

must_take_into_account_requirements(Commission, requirements(chp_3, sec_2)) :-
    adopting_implementing_acts_pursuant_to(Commission, art_11_par_2),
    implementing_act_concerning_ai_safety_components(A),
    adopting(A, Commission).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(implementing_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_acts_pursuant_to/2, 'celex:32024R1689/oj#art_109').

references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').

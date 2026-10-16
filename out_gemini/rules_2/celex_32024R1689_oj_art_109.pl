% unit       : celex:32024R1689/oj#art_109
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 6c43fea0ce514dd71b3b041b3b9a804b274e1a5d872893ddc09361fe03d618f4
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 1ec1f53c8e1740c8a0d19a799c9b21e58df2b15917038442a90aeceefb0a6c52
% cached     : False
% title      : Amendment to <ref id="celex:32019R2144/oj"/>
:- pred implementing_act_pursuant_to_regulation_2019_2144_art_11_2/1,
   gloss('implementing act adopted pursuant to Article 11(2) of Regulation (EU) 2019/2144'),
   source('celex:32024R1689/oj#art_109').
:- pred must_take_into_account/2,
   gloss('actor must take into account specified considerations or requirements'),
   source('celex:32024R1689/oj#art_109').

% When adopting implementing acts pursuant to Article 11(2) of Regulation (EU) 2019/2144
% concerning AI systems which are safety components within the meaning of Regulation (EU) 2024/1689,
% the Commission must take into account the requirements set out in Chapter III, Section 2.
must_take_into_account(Commission, requirements_chapter_3_section_2(Act)) :-
    commission(Commission),
    implementing_act_pursuant_to_regulation_2019_2144_art_11_2(Act),
    concerns_ai_safety_component(Act).

provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_109').

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

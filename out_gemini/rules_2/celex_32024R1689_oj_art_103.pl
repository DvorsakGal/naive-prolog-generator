% unit       : celex:32024R1689/oj#art_103
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 89070c433da11c7fdfdcc3815fae4b1bd5e95a36b71f333ed6f97c6b1976144b
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0e68d95086fb14a197cb88d567cff6f0d6347efce400db8ebbda3412412590f2
% cached     : False
% title      : Amendment to <ref id="celex:32013R0167/oj"/>
:- pred delegated_act_under_regulation_2013_167_art_17_5/1,
   gloss('Delegated act adopted pursuant to Article 17(5) of Regulation (EU) No 167/2013'),
   source('celex:32024R1689/oj#art_103').
:- pred must_take_into_account/2,
   gloss('Actor must take into account specified requirements when acting'),
   source('celex:32024R1689/oj#art_103').

% Article 103: When adopting delegated acts pursuant to Article 17(5) of Regulation (EU) No 167/2013
% concerning artificial intelligence systems which are safety components within the meaning of
% Regulation (EU) 2024/1689, the requirements set out in Chapter III, Section 2 shall be taken into account.

must_take_into_account(Commission, chapter_3_section_2_requirements) :-
    commission(Commission),
    delegated_act_under_regulation_2013_167_art_17_5(Act),
    concerns_ai_safety_component(Act).

% Provenance
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_103').

% References
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_103', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_103', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_103', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_103', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_103', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj#chp_3/sec_2').

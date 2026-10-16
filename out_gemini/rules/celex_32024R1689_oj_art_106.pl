% unit       : celex:32024R1689/oj#art_106
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c679ba83b569cb2c374b8abdf1142aabfb9713a0ee5a91148de808818a5ef834
% cached     : False
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_106').
:- pred railway_interoperability_act/1, gloss('act adopting delegated or implementing acts under Directive (EU) 2016/797'), source('celex:32024R1689/oj#art_106').
:- pred concerns_ai_safety_component/2, gloss('act concerns AI systems which are safety components within the meaning of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_106').
:- pred must_take_into_account/2, gloss('an entity must take into account certain requirements when adopting an act'), source('celex:32024R1689/oj#art_106').

% Article 106: When adopting delegated acts pursuant to Article 5(1) and implementing acts pursuant to
% Article 5(11) of Directive (EU) 2016/797 concerning AI systems which are safety components,
% the requirements set out in Chapter III, Section 2 shall be taken into account.
must_take_into_account(Actor, requirements(chapter_iii_section_2, Act)) :-
    commission(Actor),
    railway_interoperability_act(Act),
    concerns_ai_safety_component(Act, System),
    ai_system(System),
    safety_component(System).

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

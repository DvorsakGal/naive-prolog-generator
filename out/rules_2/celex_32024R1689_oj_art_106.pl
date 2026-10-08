% unit       : celex:32024R1689/oj#art_106
% title      : Amendment to <ref id="celex:32016L0797/oj"/>
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 87f61cd0984b205a8329e4df5690bef090b4bbc632022fd1763c0943e7dfe790
% model      : gpt-oss:120b-cloud
% prompt sha : 985399a5f4562c98b0d63223433cbb53e0fe6cb200c70f7d1041c6de0d9e97e0
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred delegated_act/1, gloss('delegated act adopted pursuant to article 5 paragraph 1'), source('celex:32024R1689/oj#art_106').
:- pred implementing_act/1, gloss('implementing act adopted pursuant to article 5 paragraph 11'), source('celex:32024R1689/oj#art_106').
:- pred concerning_ai_system/2, gloss('act concerns an AI system'), source('celex:32024R1689/oj#art_106').
:- pred requirements_set_out_in/2, gloss('requirements set out in a given location'), source('celex:32024R1689/oj#art_106').

required_take_into_account_requirements(Act, Req) :-
    ( delegated_act(Act) ; implementing_act(Act) ),
    concerning_ai_system(Act, S),
    ai_system(S),
    safety_component(S),
    requirements_set_out_in(Req, chp_3_sec_2).

provenance(required_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').

references('celex:32024R1689/oj#art_106', 'celex:32016L0797/oj').
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

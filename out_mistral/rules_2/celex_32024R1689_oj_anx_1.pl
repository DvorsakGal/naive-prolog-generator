% unit       : celex:32024R1689/oj#anx_1
% context    : ANNEXES
% slice sha  : ccfcf1c710308e87c7bc39dbb077914b5d4673bec299e9f5c3987e3d06301144
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 47fd6dcc1cc9070ba3c6a89b559b35ce41f357de8c9eb3fac4f6f2cd5b032fbf
% cached     : False
% title      : List of Union harmonisation legislation
:- pred union_harmonisation_legislation_section_a/1, gloss('Union harmonisation legislation listed in Annex I Section A based on the New Legislative Framework'), source('celex:32024R1689/oj#anx_1').
:- pred union_harmonisation_legislation_section_b/1, gloss('other Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#anx_1').

union_harmonisation_legislation_section_a('celex:32006L0042/oj').
union_harmonisation_legislation_section_a('celex:32009L0048/oj').
union_harmonisation_legislation_section_a('celex:32013L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0033/oj').
union_harmonisation_legislation_section_a('celex:32014L0034/oj').
union_harmonisation_legislation_section_a('celex:32014L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0068/oj').
union_harmonisation_legislation_section_a('celex:32016R0424/oj').
union_harmonisation_legislation_section_a('celex:32016R0425/oj').
union_harmonisation_legislation_section_a('celex:32016R0426/oj').
union_harmonisation_legislation_section_a('celex:32017R0745/oj').
union_harmonisation_legislation_section_a('celex:32017R0746/oj').

union_harmonisation_legislation_section_b('celex:32008R0300/oj').
union_harmonisation_legislation_section_b('celex:32013R0168/oj').
union_harmonisation_legislation_section_b('celex:32013R0167/oj').
union_harmonisation_legislation_section_b('celex:32014L0090/oj').
union_harmonisation_legislation_section_b('celex:32016L0797/oj').
union_harmonisation_legislation_section_b('celex:32018R0858/oj').
union_harmonisation_legislation_section_b('celex:32019R2144/oj').
union_harmonisation_legislation_section_b('celex:32018R1139/oj').

other_union_harmonisation_legislation(L) :-
    union_harmonisation_legislation_section_b(L).

union_harmonisation_legislation_applies(L) :-
    union_harmonisation_legislation_section_a(L).
union_harmonisation_legislation_applies(L) :-
    union_harmonisation_legislation_section_b(L).

provenance(union_harmonisation_legislation_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_section_b/1, 'celex:32024R1689/oj#anx_1').
provenance(other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#anx_1').

references('celex:32024R1689/oj#anx_1', 'celex:32006L0042/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31995L0016/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009L0048/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013L0053/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31994L0025/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0033/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0031/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0034/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0053/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31999L0005/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0068/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0424/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32000L0009/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0425/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31989L0686/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016R0426/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009L0142/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32001L0083/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32002R0178/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R1223/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31990L0385/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31993L0042/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31998L0079/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010D0227/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32002R2320/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31996L0098/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32007R0715/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0595/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32007L0046/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0078/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0079/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0661/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32009R0631/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0406/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0672/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1003/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1005/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1008/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R1009/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0019/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0109/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32011R0458/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0065/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0130/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0347/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R0351/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32012R1230/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32015R0166/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32005R2111/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R1008/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32010R0996/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014R0376/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32014L0030/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32004R0552/oj').
references('celex:32024R1689/oj#anx_1', 'celex:32008R0216/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj#art_2/par_1/pnt_a').
references('celex:32024R1689/oj#anx_1', 'celex:31991R3922/oj#art_2/par_1/pnt_b').

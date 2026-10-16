% unit       : celex:32024R1689/oj#anx_1
% context    : ANNEXES
% slice sha  : ccfcf1c710308e87c7bc39dbb077914b5d4673bec299e9f5c3987e3d06301144
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : bfc1ecfab7f0e5b78b816cee41bc98b3b6386430a3415bcdca132d418f75aa81
% cached     : False
% title      : List of Union harmonisation legislation
:- pred union_harmonisation_legislation_annex_1_section_a/1, gloss('Union harmonisation legislation listed in Annex I Section A'), source('celex:32024R1689/oj#anx_1').
:- pred union_harmonisation_legislation_annex_1_section_b/1, gloss('Union harmonisation legislation listed in Annex I Section B'), source('celex:32024R1689/oj#anx_1').
:- pred union_harmonisation_legislation_annex_1/1, gloss('Union harmonisation legislation listed in Annex I'), source('celex:32024R1689/oj#anx_1').
:- pred covered_by_legislation/2, gloss('System or product is covered by specified Union harmonisation legislation'), source('celex:32024R1689/oj#anx_1').

% Section A
union_harmonisation_legislation_annex_1_section_a(directive_2006_42_ec).
union_harmonisation_legislation_annex_1_section_a(directive_2009_48_ec).
union_harmonisation_legislation_annex_1_section_a(directive_2013_53_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_33_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_34_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_53_eu).
union_harmonisation_legislation_annex_1_section_a(directive_2014_68_eu).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_424).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_425).
union_harmonisation_legislation_annex_1_section_a(regulation_2016_426).
union_harmonisation_legislation_annex_1_section_a(regulation_2017_745).
union_harmonisation_legislation_annex_1_section_a(regulation_2017_746).

% Section B
union_harmonisation_legislation_annex_1_section_b(regulation_2008_300).
union_harmonisation_legislation_annex_1_section_b(regulation_2013_168).
union_harmonisation_legislation_annex_1_section_b(regulation_2013_167).
union_harmonisation_legislation_annex_1_section_b(directive_2014_90_eu).
union_harmonisation_legislation_annex_1_section_b(directive_2016_797_eu).
union_harmonisation_legislation_annex_1_section_b(regulation_2018_858).
union_harmonisation_legislation_annex_1_section_b(regulation_2019_2144).
union_harmonisation_legislation_annex_1_section_b(regulation_2018_1139).

% Annex I overall
union_harmonisation_legislation_annex_1(Legislation) :-
    union_harmonisation_legislation_annex_1_section_a(Legislation).
union_harmonisation_legislation_annex_1(Legislation) :-
    union_harmonisation_legislation_annex_1_section_b(Legislation).

% Reconciled predicate integration
covers_union_harmonisation_legislation_annex_i(System) :-
    ai_system(System),
    covered_by_legislation(System, Legislation),
    union_harmonisation_legislation_annex_1(Legislation).

system_covered_by_annex_1(System) :-
    covers_union_harmonisation_legislation_annex_i(System).

% Provenance
provenance(union_harmonisation_legislation_annex_1_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_annex_1_section_b/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_annex_1/1, 'celex:32024R1689/oj#anx_1').
provenance(covers_union_harmonisation_legislation_annex_i/1, 'celex:32024R1689/oj#anx_1').
provenance(system_covered_by_annex_1/1, 'celex:32024R1689/oj#anx_1').

% References
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

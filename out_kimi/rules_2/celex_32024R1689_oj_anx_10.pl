% unit       : celex:32024R1689/oj#anx_10
% context    : ANNEXES
% slice sha  : db02cda4cb11ea620e64185f0981bb54e4af2b45a83524f8675a642090a96fb0
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 74ed1ff0b96d9a226a6a09f64b6db13a72544d5a70b29edd418274c93367bf2a
% cached     : False
% title      : Union legislative acts on large-scale IT systems in the area of Freedom, Security and Justice
:- pred union_legislative_act_on_large_scale_it_system/1, gloss('Union legislative act on large-scale IT systems in the area of Freedom, Security and Justice listed in Annex X'), source('celex:32024R1689/oj#anx_10').

% Schengen Information System
:- pred schengen_information_system_act/1, gloss('legislative act concerning the Schengen Information System'), source('celex:32024R1689/oj#anx_10').

schengen_information_system_act(celex:'32018R1860/oj').
schengen_information_system_act(celex:'32018R1861/oj').
schengen_information_system_act(celex:'32018R1862/oj').

% Visa Information System
:- pred visa_information_system_act/1, gloss('legislative act concerning the Visa Information System'), source('celex:32024R1689/oj#anx_10').

visa_information_system_act(celex:'32021R1133/oj').
visa_information_system_act(celex:'32021R1134/oj').

% Eurodac
:- pred eurodac_act/1, gloss('legislative act concerning Eurodac'), source('celex:32024R1689/oj#anx_10').

eurodac_act(celex:'32024R1358/oj').

% Entry/Exit System
:- pred entry_exit_system_act/1, gloss('legislative act concerning the Entry/Exit System'), source('celex:32024R1689/oj#anx_10').

entry_exit_system_act(celex:'32017R2226/oj').

% European Travel Information and Authorisation System
:- pred etias_act/1, gloss('legislative act concerning the European Travel Information and Authorisation System'), source('celex:32024R1689/oj#anx_10').

etias_act(celex:'32018R1240/oj').
etias_act(celex:'32018R1241/oj').

% European Criminal Records Information System on third-country nationals and stateless persons
:- pred ecris_tcn_act/1, gloss('legislative act concerning ECRIS-TCN'), source('celex:32024R1689/oj#anx_10').

ecris_tcn_act(celex:'32019R0816/oj').

% Interoperability
:- pred interoperability_framework_act/1, gloss('legislative act concerning interoperability between EU information systems'), source('celex:32024R1689/oj#anx_10').

interoperability_framework_act(celex:'32019R0817/oj').
interoperability_framework_act(celex:'32019R0818/oj').

% Aggregate definition: any act listed in Annex X
union_legislative_act_on_large_scale_it_system(A) :- schengen_information_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- visa_information_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- eurodac_act(A).
union_legislative_act_on_large_scale_it_system(A) :- entry_exit_system_act(A).
union_legislative_act_on_large_scale_it_system(A) :- etias_act(A).
union_legislative_act_on_large_scale_it_system(A) :- ecris_tcn_act(A).
union_legislative_act_on_large_scale_it_system(A) :- interoperability_framework_act(A).

% Provenance
provenance(union_legislative_act_on_large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
provenance(schengen_information_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(visa_information_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(eurodac_act/1, 'celex:32024R1689/oj#anx_10').
provenance(entry_exit_system_act/1, 'celex:32024R1689/oj#anx_10').
provenance(etias_act/1, 'celex:32024R1689/oj#anx_10').
provenance(ecris_tcn_act/1, 'celex:32024R1689/oj#anx_10').
provenance(interoperability_framework_act/1, 'celex:32024R1689/oj#anx_10').

% References - deduplicated list of all <ref id="..."/> elements
references('celex:32024R1689/oj#anx_10', 'celex:32018R1860/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1861/oj').
references('celex:32024R1689/oj#anx_10', 'celex:42000A0922(01)/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1987/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1862/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32007D0533/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32006R1986/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32010D0261/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32021R1133/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32013R0603/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R0794/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0816/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0818/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32021R1134/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008R0767/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32009R0810/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R0399/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32017R2226/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1240/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R0817/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32019R1896/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32004D0512/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008D0633/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1358/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1315/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32024R1350/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32001L0055/oj').
references('celex:32024R1689/oj#anx_10', 'celex:2011R1077/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32008R0767/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1726/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32014R0515/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32016R1624/oj').
references('celex:32024R1689/oj#anx_10', 'celex:32018R1241/oj').

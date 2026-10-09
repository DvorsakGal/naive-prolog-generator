% unit       : celex:32024R1689/oj#art_87
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : d9de10652ed7fe7d5a2527c39d778830f3d03a7355e5e0be317402fa3fb64140
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : d12d6ea16b475e20091aedfb9a9526ba347bc0fbf5b8c53b873b83363aa3c9a9
% cached     : False
% title      : Reporting of infringements and protection of reporting persons
:- pred ai_regulation/1, gloss('AI regulation to which reporting obligations apply'), source('celex:32024R1689/oj#art_87').
:- pred reporting_infringement_applies/1, gloss('application of reporting of infringements provision'), source('celex:32024R1689/oj#art_87').
:- pred protection_of_reporting_person_applies/1, gloss('application of protection of reporting persons provision'), source('celex:32024R1689/oj#art_87').

ai_regulation(celex_32024R1689_oj).

reporting_infringement_applies(Reg) :-
    ai_regulation(Reg).

protection_of_reporting_person_applies(Reg) :-
    ai_regulation(Reg).

provenance(ai_regulation/1, 'celex:32024R1689/oj#art_87').
provenance(reporting_infringement_applies/1, 'celex:32024R1689/oj#art_87').
provenance(protection_of_reporting_person_applies/1, 'celex:32024R1689/oj#art_87').

references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

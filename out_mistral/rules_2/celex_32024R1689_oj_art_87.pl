% unit       : celex:32024R1689/oj#art_87
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : d9de10652ed7fe7d5a2527c39d778830f3d03a7355e5e0be317402fa3fb64140
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 6851ff38c13fad979dac233737596e97c186af0a919f86e8172225ab94e47690
% cached     : False
% title      : Reporting of infringements and protection of reporting persons
:- pred whistleblower_directive_applies/1, gloss('Directive (EU) 2019/1937 applies to reporting of infringements and protection of reporting persons'), source('celex:32024R1689/oj#art_87').

whistleblower_directive_applies(reporting_of_infringements(Regulation, Person)) :-
    Regulation = 'celex:32024R1689/oj',
    Person = reporting_person.

provenance(whistleblower_directive_applies/1, 'celex:32024R1689/oj#art_87').

references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% unit       : celex:32024R1689/oj#art_87
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : d9de10652ed7fe7d5a2527c39d778830f3d03a7355e5e0be317402fa3fb64140
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 13bb0f7e0d32fb1add00abc1ad3a2455b635883ee70a7dde022c6474d86e74fb
% cached     : False
% title      : Reporting of infringements and protection of reporting persons
:- pred directive_2019_1937_applies/1, gloss('Directive (EU) 2019/1937 applies to the reporting or protection matter'), source('celex:32024R1689/oj#art_87').
:- pred infringement_of_regulation/1, gloss('infringement of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_87').
:- pred reporting_person/1, gloss('person reporting an infringement'), source('celex:32024R1689/oj#art_87').

% Directive (EU) 2019/1937 applies to the reporting of infringements of this Regulation
directive_2019_1937_applies(reporting_of_infringement(Infringement)) :-
    infringement_of_regulation(Infringement).

% Directive (EU) 2019/1937 applies to the protection of persons reporting such infringements
directive_2019_1937_applies(protection_of_reporting_person(Person)) :-
    reporting_person(Person).

provenance(directive_2019_1937_applies/1, 'celex:32024R1689/oj#art_87').

references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

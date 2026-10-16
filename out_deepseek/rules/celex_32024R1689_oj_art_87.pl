% unit       : celex:32024R1689/oj#art_87
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : d9de10652ed7fe7d5a2527c39d778830f3d03a7355e5e0be317402fa3fb64140
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f7eb0e866a39d3048dfc69975e97b97fc7fc7f7bea93969862503f121de87f2f
% cached     : False
% title      : Reporting of infringements and protection of reporting persons
:- pred must_apply_directive/2, gloss('directive that must apply to reporting and protection'), source('celex:32024R1689/oj#art_87').

must_apply_directive(Directive, Subject) :-
    Directive = 'celex:32019L1937/oj',
    Subject = reporting_and_protection(infringements_of('celex:32024R1689/oj')).

provenance(must_apply_directive/2, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% unit       : celex:32024R1689/oj#art_102
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : bb0b1c4cee78d559832bb382c7982a51276ff593591f82edc0f03dc4b02d2e85
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 583ad30ed4390da435c492ff1eea17d87ff1c7b301c7f59fa67f6eb5b493314a
% cached     : False
% title      : Amendment to <ref id="celex:32008R0300/oj"/>
:- pred must_take_into_account_requirements/2, gloss('when adopting detailed measures, must take into account AI Act requirements'), source('celex:32024R1689/oj#art_102').

must_take_into_account_requirements(Adopter, ai_system_requirements) :-
    adopting_detailed_measures(Adopter, security_equipment),
    concerns_artificial_intelligence_systems(security_equipment).

adopting_detailed_measures(Adopter, security_equipment) :-
    adopter(Adopter),
    detailed_measures(security_equipment),
    technical_specifications_and_procedures(security_equipment),
    approval_and_use(security_equipment).

concerns_artificial_intelligence_systems(security_equipment) :-
    ai_system(_).

provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').

references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_102', 'celex:32008R0300/oj#art_4/par_3').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_102', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_102', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_102', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_102', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_102', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_102', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_102', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_102', 'celex:32020L1828/oj').

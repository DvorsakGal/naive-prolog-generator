% unit       : celex:32024R1689/oj#art_105
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 109b7d3ca4dadcabacc59c208f98960fe1566a8237dab333537c6056eabbfb0e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 352ba4a5100c1b1091641debfe07cb64acf3840ecf12ffb3f7d2516e6bb292b0
% cached     : False
% title      : Amendment to <ref id="celex:32014L0090/oj"/>
% This provision amends Directive 2014/90/EU by adding a new paragraph 5 to Article 8.
% It imposes a duty on the Commission when carrying out certain activities regarding AI systems that are safety components.
% The duty: the Commission must take into account the requirements of Chapter III, Section 2 of the AI Act.

:- pred must_take_into_account_requirements/2, gloss('Commission must take into account requirements when acting on AI safety components'), source('celex:32024R1689/oj#art_105').

must_take_into_account_requirements(Commission, requirements(chapter_3_section_2)) :-
    ai_system(S),
    safety_component(S),
    (   carrying_out_activities_pursuant_to(Commission, art_8_par_1)
    ;   adopting_technical_specifications_and_testing_standards(Commission, art_8_par_2, art_8_par_3)
    ).

% Auxiliary predicates for the conditions
:- pred carrying_out_activities_pursuant_to/2, gloss('carrying out activities pursuant to a provision'), source('celex:32024R1689/oj#art_105').
:- pred adopting_technical_specifications_and_testing_standards/3, gloss('adopting technical specifications and testing standards in accordance with provisions'), source('celex:32024R1689/oj#art_105').

carrying_out_activities_pursuant_to(Commission, art_8_par_1) :-
    % The Commission carries out activities pursuant to Article 8(1) of Directive 2014/90/EU
    true.

adopting_technical_specifications_and_testing_standards(Commission, art_8_par_2, art_8_par_3) :-
    % The Commission adopts technical specifications and testing standards in accordance with Article 8(2) and (3)
    true.

% Provenance
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(carrying_out_activities_pursuant_to/2, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/3, 'celex:32024R1689/oj#art_105').

% References
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_5').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_105', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_105', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_105', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_105', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_105', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_105', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').

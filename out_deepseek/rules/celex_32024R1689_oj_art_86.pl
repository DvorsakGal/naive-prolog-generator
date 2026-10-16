% unit       : celex:32024R1689/oj#art_86
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 920ca0aba7c62f40217c8f47afc54eac1ba5ef94d868e297af953e389fd0a5d8
% cached     : False
% title      : Right to explanation of individual decision-making
:- pred right_to_explanation/2, gloss('affected person has right to explanation from deployer'), source('celex:32024R1689/oj#art_86').
:- pred decision_produces_adverse_impact/1, gloss('decision produces legal effects or similarly significantly affects person adversely'), source('celex:32024R1689/oj#art_86').
:- pred exception_from_explanation_applies/1, gloss('exception or restriction from explanation obligation follows from Union or national law'), source('celex:32024R1689/oj#art_86').
:- pred right_otherwise_provided/1, gloss('right to explanation is otherwise provided for under Union law'), source('celex:32024R1689/oj#art_86').

right_to_explanation(Person, Deployer) :-
    affected_person(Person),
    deployer(Deployer),
    decision_by_deployer(Decision, Deployer, Person),
    based_on_output_of_high_risk_ai_system(Decision, System),
    high_risk_ai_system_listed_in_annex_3(System),
    \+ system_listed_under_point_2_of_annex_3(System),
    decision_produces_adverse_impact(Decision),
    \+ exception_from_explanation_applies(Decision),
    \+ right_otherwise_provided(Decision).

must_provide_explanation(Deployer, explanation(Person, Decision)) :-
    right_to_explanation(Person, Deployer),
    decision_by_deployer(Decision, Deployer, Person).

provenance(right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(decision_produces_adverse_impact/1, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(right_otherwise_provided/1, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').

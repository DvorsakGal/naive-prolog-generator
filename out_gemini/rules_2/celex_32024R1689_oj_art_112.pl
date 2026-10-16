% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 954242e3aa82e3f738abbbe6d3b80132939a685ae7dcbebf9cb319470673a1b9
% cached     : False
% title      : Evaluation and review
:- pred must_assess/2, gloss('actor must carry out an assessment of a specified matter'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate/2, gloss('actor must evaluate a specified subject'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_report/2, gloss('actor must submit a report on a specified matter'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information/2, gloss('actor must provide information upon request to another entity'), source('celex:32024R1689/oj#art_112').
:- pred must_develop/2, gloss('actor must develop a methodology or tool'), source('celex:32024R1689/oj#art_112').
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_112').
:- pred european_artificial_intelligence_board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_112').

% Paragraph 1: Commission shall assess need for amendment of Annex III and Article 5 lists annually
must_assess(commission, need_for_amendment(annex_3_and_prohibited_practices)) :-
    commission(commission).

must_submit_report(commission, findings(assessment(annex_3_and_prohibited_practices))) :-
    commission(commission).

% Paragraph 2: Commission shall evaluate and report by 2 August 2028 and every 4 years
must_evaluate(commission, scope_amendments(annex_3_headings_and_transparency_and_governance)) :-
    commission(commission).

must_submit_report(commission, evaluation(scope_amendments(annex_3_headings_and_transparency_and_governance))) :-
    commission(commission).

% Paragraph 3: Commission evaluation and review report by 2 August 2029 and every 4 years
must_submit_report(commission, evaluation_and_review(regulation)) :-
    commission(commission).

% Paragraph 5: Commission evaluation of AI Office by 2 August 2028
must_evaluate(commission, functioning_and_powers(ai_office)) :-
    commission(commission).

must_submit_report(commission, evaluation(functioning_and_powers(ai_office))) :-
    commission(commission).

% Paragraph 6: Report on progress of standardisation on energy-efficient GPAI models
must_submit_report(commission, progress_standardisation_energy_efficient(general_purpose_ai_model)) :-
    commission(commission).

% Paragraph 7: Evaluate impact and effectiveness of voluntary codes of conduct
must_evaluate(commission, codes_of_conduct(voluntary)) :-
    commission(commission).

% Paragraph 8: Board, Member States, and NCAs must provide information upon request
must_provide_information(Entity, request(commission)) :-
    european_artificial_intelligence_board(Entity).

must_provide_information(Entity, request(commission)) :-
    member_state(Entity).

must_provide_information(Entity, request(commission)) :-
    national_competent_authority(Entity).

% Paragraph 11: AI Office shall develop methodology for risk evaluation
must_develop(ai_office, methodology(evaluation_of_risk_levels)) :-
    ai_office(ai_office).

% Paragraph 13: Assessment of enforcement by 2 August 2031
must_assess(commission, enforcement(regulation)) :-
    commission(commission).

must_submit_report(commission, assessment_of_enforcement(regulation)) :-
    commission(commission).

% Provenance facts
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').
provenance(member_state/1, 'celex:32024R1689/oj#art_112').
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_112').

% Reference facts
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_4').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_6').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_7').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_112/par_10').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3ce7ecb2abecdf350bee1bb3b63ec80eab7338a628218ab2e3f4c573b14af2e4
% cached     : False
% title      : Evaluation and review
:- pred must_assess(Actor, Subject), gloss('Entity is obliged to assess a matter'), source('celex:32024R1689/oj#art_112').
:- pred must_submit(Actor, Submission), gloss('Entity is obliged to submit a report, findings, or proposal'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate(Actor, Subject), gloss('Entity is obliged to evaluate a matter'), source('celex:32024R1689/oj#art_112').
:- pred must_provide(Actor, Information), gloss('Entity is obliged to provide information'), source('celex:32024R1689/oj#art_112').
:- pred must_develop(Actor, Subject), gloss('Entity is obliged to develop a methodology or item'), source('celex:32024R1689/oj#art_112').

% Paragraph 1: Annual assessment by Commission of Annex III and prohibited AI practices lists
must_assess(commission, amendment_need(lists(annex_3, prohibited_ai_practices))) :-
    delegation_of_power_period_active.

must_submit(commission, assessment_findings(lists(annex_3, prohibited_ai_practices), to(european_parliament, council))) :-
    delegation_of_power_period_active.

% Paragraph 2: Evaluation and reporting every four years by 2 August 2028
must_evaluate(commission, review_areas(annex_3_headings, art_50_transparency_list, governance_effectiveness)).
must_submit(commission, report(review_areas(annex_3_headings, art_50_transparency_list, governance_effectiveness), to(european_parliament, council))).

% Paragraph 3: General evaluation and review report by 2 August 2029 and every four years
must_submit(commission, report(evaluation_and_review(ai_act), to(european_parliament, council))).

% Paragraph 5: AI Office functioning evaluation by 2 August 2028
must_evaluate(commission, functioning(ai_office)).
must_submit(commission, report(functioning(ai_office), to(european_parliament, council))).

% Paragraph 6: Standardisation deliverables on energy-efficient GPAI models by 2 August 2028 and every four years
must_submit(commission, report(progress(standardisation(energy_efficiency, general_purpose_ai_model)), to(european_parliament, council))).

% Paragraph 7: Evaluation of voluntary codes of conduct by 2 August 2028 and every three years
must_evaluate(commission, voluntary_codes_of_conduct).

% Paragraph 8: Board, Member States, and NCAs must provide information upon Commission request
must_provide(board, information_to(commission)).
must_provide(member_state, information_to(commission)).
must_provide(Authority, information_to(commission)) :-
    national_competent_authority(Authority).

% Paragraph 11: AI Office to develop methodology for risk levels evaluation
must_develop(ai_office, methodology(evaluation_of_risk_levels)).

% Paragraph 13: Assessment of enforcement by 2 August 2031
must_assess(commission, enforcement(ai_act)).
must_submit(commission, report(enforcement(ai_act), to(european_parliament, council, european_economic_and_social_committee))).

% Provenance
provenance(must_assess/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop/2, 'celex:32024R1689/oj#art_112').

% References
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

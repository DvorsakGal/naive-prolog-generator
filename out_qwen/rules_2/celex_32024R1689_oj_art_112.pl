% unit       : celex:32024R1689/oj#art_112
% context    : CHAPTER XIII FINAL PROVISIONS
% slice sha  : 67887d18fbe8e3469e2b101cdd8916bd7dc6ce984c51a205310cca74df77879f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : f4b4f92f4d3aac67ff5e4b5258a51aa0c0b8ad0c7b79ba6c3762f7a036642058
% cached     : False
% title      : Evaluation and review
:- pred must_assess_annex_iii_and_art_5_lists/1, gloss('Commission obligation to assess need for amendment of Annex III and Article 5 lists annually'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_regulation_periodically/1, gloss('Commission obligation to evaluate and report on the regulation every four years starting 2028'), source('celex:32024R1689/oj#art_112').
:- pred must_submit_general_evaluation_report/1, gloss('Commission obligation to submit general evaluation report by 2029 and every four years thereafter'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_ai_office/1, gloss('Commission obligation to evaluate functioning and powers of AI Office by 2028'), source('celex:32024R1689/oj#art_112').
:- pred must_review_energy_efficiency_standardisation/1, gloss('Commission obligation to review progress on energy-efficient standardisation for general-purpose AI models'), source('celex:32024R1689/oj#art_112').
:- pred must_evaluate_voluntary_codes_of_conduct/1, gloss('Commission obligation to evaluate impact of voluntary codes of conduct for non-high-risk AI systems'), source('celex:32024R1689/oj#art_112').
:- pred must_provide_information_for_evaluation/2, gloss('Obligation of Board, Member States and authorities to provide information to Commission for evaluations'), source('celex:32024R1689/oj#art_112').
:- pred must_develop_risk_evaluation_methodology/1, gloss('AI Office obligation to develop methodology for evaluating risk levels and list amendments'), source('celex:32024R1689/oj#art_112').
:- pred must_assess_enforcement_structure/1, gloss('Commission obligation to assess enforcement structure and need for Union agency by 2031'), source('celex:32024R1689/oj#art_112').

must_assess_annex_iii_and_art_5_lists(commission) :-
    ai_system(_).

must_evaluate_regulation_periodically(commission) :-
    high_risk_ai_system_annex_iii(_).

must_submit_general_evaluation_report(commission) :-
    national_competent_authority(_).

must_evaluate_ai_office(commission) :-
    ai_office(_).

must_review_energy_efficiency_standardisation(commission) :-
    general_purpose_ai_model(_).

must_evaluate_voluntary_codes_of_conduct(commission) :-
    requirements_of_chapter_3_section_2(_).

must_provide_information_for_evaluation(Entity, commission) :-
    operator(Entity).
must_provide_information_for_evaluation(Entity, commission) :-
    national_competent_authority(Entity).

must_develop_risk_evaluation_methodology(ai_office) :-
    high_risk_ai_system_annex_iii(_).

must_assess_enforcement_structure(commission) :-
    national_competent_authority(_).

provenance(must_assess_annex_iii_and_art_5_lists/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_regulation_periodically/1, 'celex:32024R1689/oj#art_112').
provenance(must_submit_general_evaluation_report/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(must_review_energy_efficiency_standardisation/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information_for_evaluation/2, 'celex:32024R1689/oj#art_112').
provenance(must_develop_risk_evaluation_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(must_assess_enforcement_structure/1, 'celex:32024R1689/oj#art_112').

references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_112', 'celex:32024R1689/oj#anx_1/sec_2').

% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : a97f1f43735f04b9fd4949ea1b25dc85f300bfe514085a64a20d652abbfc19a0
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred trained_and_tested_on_representative_data/1, gloss('high-risk AI system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting within which it is intended to be used'), source('celex:32024R1689/oj#art_42').
:- pred presumed_to_comply_with_requirements/2, gloss('high-risk AI system presumed to comply with requirements'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme/1, gloss('high-risk AI system certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation (EU) 2019/881 with references published in the Official Journal'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certificate_covers_requirements/2, gloss('cybersecurity certificate or statement of conformity or parts thereof cover the cybersecurity requirements'), source('celex:32024R1689/oj#art_42').

presumed_to_comply_with_requirements(S, article_10_par_4_requirements) :-
    high_risk_ai_system(S),
    trained_and_tested_on_representative_data(S).

presumed_to_comply_with_requirements(S, article_15_cybersecurity_requirements) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme(S),
    cybersecurity_certificate_covers_requirements(S, article_15_cybersecurity_requirements).

provenance(trained_and_tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_to_comply_with_requirements/2, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_covers_requirements/2, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

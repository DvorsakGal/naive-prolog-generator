% unit       : celex:32024R1689/oj#art_42
% title      : Presumption of conformity with certain requirements
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : gpt-oss:120b-cloud
% prompt sha : bf9977b4bb59ed65d84fddb8f4c19dd664bbe35ad7319cc978ba402cab362636
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_relevant_data/1, gloss('trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting of intended use'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme/1, gloss('AI system certified under a cybersecurity scheme'), source('celex:32024R1689/oj#art_42').
:- pred statement_of_conformity_issued/1, gloss('statement of conformity issued for an AI system'), source('celex:32024R1689/oj#art_42').
:- pred published_in_official_journal/1, gloss('reference published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certificate_covers/2, gloss('cybersecurity certificate or statement of conformity covers a given requirement'), source('celex:32024R1689/oj#art_42').
:- pred requirement_in_art_15/1, gloss('requirement set out in Article 15'), source('celex:32024R1689/oj#art_42').
:- pred exempt_from_assessment/2, gloss('exempt from further conformity assessment for a given requirement'), source('celex:32024R1689/oj#art_42').

exempt_from_assessment(S, art_10_par_4) :-
    high_risk_ai_system(S),
    trained_and_tested_on_relevant_data(S).

exempt_from_assessment(S, Requirement) :-
    high_risk_ai_system(S),
    ( certified_under_cybersecurity_scheme(S) ; statement_of_conformity_issued(S) ),
    published_in_official_journal(S),
    cybersecurity_certificate_covers(S, Requirement),
    requirement_in_art_15(Requirement).

provenance(exempt_from_assessment/2, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

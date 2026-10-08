% unit       : celex:32024R1689/oj#art_86
% title      : Right to explanation of individual decision-making
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 4 Remedies
% slice sha  : c97701329085c5d84703b4bed52916005ee8370965711bdfd94312de4e0ca016
% model      : gpt-oss:120b-cloud
% prompt sha : b22aaebe1d8006542b32f05751dea0fa122ff6ab663588c346e1dff8a6e25eaf
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_86').
:- pred affected_person/1, gloss('natural person whose interests are impacted by a decision'), source('celex:32024R1689/oj#art_86').
:- pred decision_taken_by_deployer/2, gloss('decision made by a deployer based on the output of an AI system'), source('celex:32024R1689/oj#art_86').
:- pred exempt_from_explanation/1, gloss('high‑risk AI system listed in annex 3 or point 2 thereof, exempt from the right to explanation'), source('celex:32024R1689/oj#art_86').
:- pred legal_exception_applies/1, gloss('union or national law provides an exception or restriction to the obligation'), source('celex:32024R1689/oj#art_86').
:- pred provided_by_union_law/1, gloss('the right to explanation is already provided for under Union law'), source('celex:32024R1689/oj#art_86').

must_provide_explanation(Deployer, explanation(Person, System)) :-
    deployer(Deployer),
    affected_person(Person),
    decision_taken_by_deployer(Person, System),
    high_risk_ai_system(System),
    \+ exempt_from_explanation(System),
    \+ legal_exception_applies(System),
    \+ provided_by_union_law(System).

provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').

references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

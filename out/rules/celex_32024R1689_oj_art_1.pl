% unit       : celex:32024R1689/oj#art_1
% title      : Subject matter`
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : b187d21f3533573a0860673abdff279c56d0e0e9d07f3a2ee788ee35cf5b9d8e
% model      : gpt-oss:120b-cloud
% prompt sha : 61c038d206601886bc04213496c16f143eb7d045414b0d3c07d1d68261d6ce2b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the regulation'), source('celex:32024R1689/oj#art_1').
:- pred high_risk/1, gloss('characteristic indicating high risk'), source('celex:32024R1689/oj#art_1').
:- pred must_comply/2, gloss('obligation for an operator to comply with requirements for a high‑risk AI system'), source('celex:32024R1689/oj#art_1').
:- pred required_specific_requirements/1, gloss('specific requirements applicable to high‑risk AI systems'), source('celex:32024R1689/oj#art_1').
:- pred prohibited_ai_practice/1, gloss('AI practice prohibited by the regulation'), source('celex:32024R1689/oj#art_1').

high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).

must_comply(Operator, S) :-
    operator(Operator),
    high_risk_ai_system(S).

required_specific_requirements(S) :-
    high_risk_ai_system(S).

prohibited_ai_practice(unspecified_practice).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_1').
provenance(must_comply/2, 'celex:32024R1689/oj#art_1').
provenance(required_specific_requirements/1, 'celex:32024R1689/oj#art_1').
provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_1').

references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

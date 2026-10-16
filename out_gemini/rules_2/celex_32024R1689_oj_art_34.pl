% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 6743e46e81dd112bf686395bdf3da1038893f2138dc39703045d696eff6bd82d
% cached     : False
% title      : Operational obligations of notified bodies
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_34').
:- pred request_from/2, gloss('authority requests documentation from a notified body'), source('celex:32024R1689/oj#art_34').
:- pred relevant_documentation/2, gloss('documentation relevant for assessing notified body activities'), source('celex:32024R1689/oj#art_34').

% Paragraph 1: Notified bodies shall verify conformity of high-risk AI systems in accordance with Art 43 procedures.
must_verify(Body, conformity(System, procedure_article_43)) :-
    notified_body(Body),
    high_risk_ai_system(System).

% Paragraph 2: Notified bodies shall avoid unnecessary burdens, account for size/sector/complexity, and respect rigour/protection.
must_comply(Body, operational_standards(avoid_unnecessary_burdens, respect_required_protection)) :-
    notified_body(Body).

% Paragraph 3: Notified bodies shall make available and submit upon request all relevant documentation to the notifying authority.
must_submit(Body, documentation(Doc, Authority)) :-
    notified_body(Body),
    notifying_authority(Authority),
    request_from(Authority, Body),
    relevant_documentation(Doc, Body).

provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_comply/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

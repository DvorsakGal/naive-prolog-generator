% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2510fd75e0c05c55d1fd2b328e75398328f29d942ececbd1dd5bbb8fcbce6d84
% cached     : False
% title      : Operational obligations of notified bodies
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_34').
:- pred must_verify(Actor, Object), gloss('notified body must verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid(Actor, Object), gloss('notified body must avoid unnecessary burdens for providers'), source('celex:32024R1689/oj#art_34').
:- pred must_submit(Actor, Object), gloss('notified body must make available and submit documentation upon request'), source('celex:32024R1689/oj#art_34').
:- pred requested_documentation(Authority, Body, Doc), gloss('request for documentation made to notified body by notifying authority'), source('celex:32024R1689/oj#art_34').

% Paragraph 1: Notified bodies shall verify the conformity of high-risk AI systems
% in accordance with the conformity assessment procedures set out in Article 43.
must_verify(Body, conformity(System)) :-
    notified_body(Body),
    high_risk_ai_system(System).

% Paragraph 2: Notified bodies shall avoid unnecessary burdens for providers
% when performing their activities, taking due account of size, sector, structure,
% and complexity, while respecting required rigour and level of protection.
must_avoid(Body, unnecessary_burdens(Provider, System)) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System).

% Paragraph 3: Notified bodies shall make available and submit upon request all
% relevant documentation, including providers documentation, to the notifying authority.
must_submit(Body, documentation_to(Authority, Doc)) :-
    notified_body(Body),
    notifying_authority(Authority),
    requested_documentation(Authority, Body, Doc).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_34').
provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').

% References
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6eae718352c4dff64e93466327863d917da71488705e032f02e8cba727f87548
% cached     : False
% title      : Cooperation with competent authorities
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_21').
:- pred competent_authority/1, gloss('competent public authority'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request/2, gloss('authority makes a reasoned request to an actor'), source('celex:32024R1689/oj#art_21').
:- pred logs_under_control/2, gloss('provider has control over logs of an AI system'), source('celex:32024R1689/oj#art_21').
:- pred must_provide(Actor, Object), gloss('duty of an actor to provide an object or information'), source('celex:32024R1689/oj#art_21').
:- pred must_give_access(Actor, Object), gloss('duty of an actor to give access to logs or data'), source('celex:32024R1689/oj#art_21').
:- pred must_comply_with_confidentiality(Actor, Object), gloss('duty to treat information confidentially'), source('celex:32024R1689/oj#art_21').

% Paragraph 1: Providers of high-risk AI systems shall, upon a reasoned request by a competent authority,
% provide that authority all the information and documentation necessary to demonstrate conformity.
must_provide(Provider, information_and_documentation(Authority, System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, Provider).

% Paragraph 2: Upon a reasoned request, providers shall give the requesting competent authority access
% to the automatically generated logs, to the extent such logs are under their control.
must_give_access(Provider, logs(Authority, System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, Provider),
    logs_under_control(Provider, System).

% Paragraph 3: Information obtained by a competent authority pursuant to Article 21
% shall be treated in accordance with confidentiality obligations (Article 78).
must_comply_with_confidentiality(Authority, information_obtained(System)) :-
    competent_authority(Authority),
    high_risk_ai_system(System).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_21').
provenance(competent_authority/1, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_comply_with_confidentiality/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

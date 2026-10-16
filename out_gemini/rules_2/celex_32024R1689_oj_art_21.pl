% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 5d3d47409b98d01dd0bd8032aefeee872b047416d3c97eb33f0798188b3e9bbe
% cached     : False
% title      : Cooperation with competent authorities
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_21').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_21').
:- pred competent_authority/1, gloss('competent public authority'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request/2, gloss('reasoned request made by an authority regarding an AI system'), source('celex:32024R1689/oj#art_21').
:- pred must_provide/2, gloss('actor must provide requested item or access to an authority'), source('celex:32024R1689/oj#art_21').
:- pred must_treat_in_accordance_with_confidentiality/2, gloss('authority must treat information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_21').

% Paragraph 1: Providers of high-risk AI systems shall, upon a reasoned request by a
% competent authority, provide that authority all the information and documentation
% necessary to demonstrate conformity with Chapter III Section 2.
must_provide(Provider, information_and_documentation(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, System).

% Paragraph 2: Upon a reasoned request by a competent authority, providers shall
% give access to automatically generated logs (Art. 12(1)) to the extent under their control.
must_provide(Provider, access_to_logs(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request(Authority, System),
    control_of_logs(Provider, System).

% Paragraph 3: Any information obtained by a competent authority pursuant to Article 21
% shall be treated in accordance with the confidentiality obligations set out in Article 78.
must_treat_in_accordance_with_confidentiality(Authority, Info) :-
    competent_authority(Authority),
    reasoned_request(Authority, System),
    ( Info = information_and_documentation(System, Authority)
    ; Info = access_to_logs(System, Authority)
    ).

% Provenance
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_in_accordance_with_confidentiality/2, 'celex:32024R1689/oj#art_21').

% References
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

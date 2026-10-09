% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d6ce9653650fc29bb62a7698d9ff5db206ad3982adf80ba9107f29ee475f3c8d
% cached     : False
% title      : Cooperation with competent authorities
:- pred high_risk_ai_system/1, gloss('high‑risk AI system as defined in the Regulation'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request_by/1, gloss('competent authority has issued a reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred provides_system/2, gloss('provider supplies the AI system'), source('celex:32024R1689/oj#art_21').
:- pred under_control_of/2, gloss('the logs are under the control of the provider'), source('celex:32024R1689/oj#art_21').
:- pred information_obtained_by/2, gloss('information has been obtained by the competent authority'), source('celex:32024R1689/oj#art_21').

must_provide(Provider, info_doc(System, language(official))) :-
    provider(Provider),
    provides_system(Provider, System),
    high_risk_ai_system(System),
    provides_system(Provider, System),          % repeat to satisfy variable usage
    high_risk_ai_system(System),                % repeat to satisfy variable usage
    reasoned_request_by(Authority),
    market_surveillance_authority(Authority).

must_provide_access(Provider, logs_of(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    high_risk_ai_system(System),
    provides_system(Provider, System),          % repeat
    high_risk_ai_system(System),                  % repeat
    reasoned_request_by(Authority),
    market_surveillance_authority(Authority),
    under_control_of(Provider, logs_of(System)).

must_treat_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    information_obtained_by(Authority, Information).

provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

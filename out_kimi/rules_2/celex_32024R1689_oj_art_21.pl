% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5de33e7db047954417854be14f1d56807fe51c874e2dd1fa3879ac83589a0010
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_information_and_documentation/2, gloss('provider must provide information and documentation to competent authority upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_provide_logs_access/2, gloss('provider must give competent authority access to automatically generated logs'), source('celex:32024R1689/oj#art_21').
:- pred must_treat_information_confidentially/2, gloss('competent authority must treat obtained information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request/2, gloss('reasoned request made by competent authority'), source('celex:32024R1689/oj#art_21').
:- pred information_and_documentation_for_conformity/1, gloss('information and documentation necessary to demonstrate conformity with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_21').
:- pred easily_understood_language/1, gloss('language easily understood by authority in official language of Union institutions'), source('celex:32024R1689/oj#art_21').
:- pred automatically_generated_logs/1, gloss('automatically generated logs of high-risk AI system referred to in Article 12(1)'), source('celex:32024R1689/oj#art_21').
:- pred under_provider_control/1, gloss('logs are under control of provider'), source('celex:32024R1689/oj#art_21').
:- pred obtained_under_article_21/1, gloss('information obtained by competent authority pursuant to Article 21'), source('celex:32024R1689/oj#art_21').

must_provide_information_and_documentation(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(Provider, S),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, Provider),
    information_and_documentation_for_conformity(S),
    easily_understood_language(Language).

must_provide_logs_access(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(Provider, S),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, Provider),
    automatically_generated_logs(S),
    under_provider_control(Logs).

must_treat_information_confidentially(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_under_article_21(Information),
    confidentiality_obligations(Information).

provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_logs_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(information_and_documentation_for_conformity/1, 'celex:32024R1689/oj#art_21').
provenance(easily_understood_language/1, 'celex:32024R1689/oj#art_21').
provenance(automatically_generated_logs/1, 'celex:32024R1689/oj#art_21').
provenance(under_provider_control/1, 'celex:32024R1689/oj#art_21').
provenance(obtained_under_article_21/1, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

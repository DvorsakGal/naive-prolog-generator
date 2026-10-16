% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : f911437a755bc56ad57c1af30d7d50dab1cc8ffe4b581fe9e19261782f485e1f
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain/2, gloss('Commission shall set up and maintain EU database'), source('celex:32024R1689/oj#art_71').
:- pred eu_database/1, gloss('EU database for high-risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred registered_with_information_specified/1, gloss('registered with information specified'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data/2, gloss('provider or authorised representative shall enter data into EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data_deployer/2, gloss('deployer shall enter data into EU database'), source('celex:32024R1689/oj#art_71').
:- pred publicly_accessible_database_information/1, gloss('information in EU database shall be publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred accessible_only_to_authorities/1, gloss('information accessible only to market surveillance authorities and Commission'), source('celex:32024R1689/oj#art_71').
:- pred controller_of_database/1, gloss('controller of EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_support/2, gloss('Commission shall provide technical and administrative support'), source('celex:32024R1689/oj#art_71').

must_set_up_and_maintain(commission, eu_database_for_high_risk_ai_systems) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3(S).

must_enter_data(Provider, data_for_high_risk_system(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    registered_with_information_specified(S).

must_enter_data(AuthorisedRepresentative, data_for_high_risk_system(S)) :-
    authorised_representative(AuthorisedRepresentative),
    high_risk_ai_system(S),
    referred_to_in_annex_3(S),
    registered_with_information_specified(S).

must_enter_data_deployer(Deployer, data_for_deployer_system(S)) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    high_risk_ai_system(S),
    registered_with_information_specified(S).

publicly_accessible_database_information(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    \+ registered_under_art_49_par_4(S),
    \+ registered_under_art_60_par_4_c(S).

accessible_only_to_authorities(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    (registered_under_art_60(S) ; registered_under_art_49_par_4(S) ; registered_under_art_60_par_4_c(S)),
    \+ provider_consent_public(S).

accessible_only_to_authorities(S) :-
    high_risk_ai_system(S),
    registered_with_information_specified(S),
    registered_under_art_60(S),
    provider_consent_public(S).

controller_of_database(commission).

must_provide_support(commission, Provider) :-
    provider(Provider).
must_provide_support(commission, ProspectiveProvider) :-
    prospective_provider(ProspectiveProvider).
must_provide_support(commission, Deployer) :-
    deployer(Deployer).

provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_deployer/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_only_to_authorities/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').

references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_71/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_6/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_1').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_2').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#anx_8/sec_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49/par_4').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj').

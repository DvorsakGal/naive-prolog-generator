% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b87e4b2dbcba3b84deb4e68f7ade1289d4c03f0d0e2e9ddc6935746cd9ece061
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain_eu_database/2, gloss('Commission must set up and maintain EU database in collaboration with Member States'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data_into_eu_database/2, gloss('entity must enter specified data into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_experts_on_functional_specifications/1, gloss('Commission must consult relevant experts when setting functional specifications'), source('celex:32024R1689/oj#art_71').
:- pred must_consult_board_on_updating_specifications/1, gloss('Commission must consult the Board when updating functional specifications'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_publicly_accessible/1, gloss('information in the EU database is publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_restricted_access/1, gloss('information in the EU database is accessible only to market surveillance authorities and the Commission'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_contains_personal_data/1, gloss('EU database contains personal data only as necessary'), source('celex:32024R1689/oj#art_71').
:- pred commission_is_controller_of_eu_database/1, gloss('Commission is the controller of the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_technical_and_administrative_support/2, gloss('Commission must provide adequate technical and administrative support'), source('celex:32024R1689/oj#art_71').
:- pred eu_database_complies_with_accessibility_requirements/1, gloss('EU database complies with applicable accessibility requirements'), source('celex:32024R1689/oj#art_71').

% Paragraph 1
must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)) :-
    ai_office(Commission),
    experts_designated_by_member_states(_Experts).

must_consult_experts_on_functional_specifications(Commission) :-
    ai_office(Commission),
    must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)).

must_consult_board_on_updating_specifications(Commission) :-
    ai_office(Commission),
    must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)).

% Paragraph 2
must_enter_data_into_eu_database(Provider, data(annex_8_sections_1_and_2)) :-
    provider(Provider),
    high_risk_ai_system(_S).

must_enter_data_into_eu_database(Representative, data(annex_8_sections_1_and_2)) :-
    authorised_representative(Representative),
    high_risk_ai_system(_S).

% Paragraph 3
must_enter_data_into_eu_database(Deployer, data(annex_8_section_3)) :-
    deployer(Deployer),
    (   deployer_is_public_authority(Deployer)
    ;   acts_on_behalf_of_public_authority(Deployer)
    ).

deployer_is_public_authority(Deployer) :-
    deployer(Deployer).

acts_on_behalf_of_public_authority(Deployer) :-
    deployer(Deployer).

% Paragraph 4
eu_database_publicly_accessible(information_registered_under_art_49) :-
    \+ eu_database_restricted_access(information_registered_under_art_49).

eu_database_restricted_access(information_registered_under_art_60) :-
    \+ consent_given_for_public_access(information_registered_under_art_60).

consent_given_for_public_access(information_registered_under_art_60) :-
    provider(_P).

% Paragraph 5
eu_database_contains_personal_data(Database) :-
    must_set_up_and_maintain_eu_database(_Commission, Database),
    personal_data_necessary_for_collecting_and_processing(Database).

personal_data_necessary_for_collecting_and_processing(Database) :-
    eu_database_contains_personal_data(Database).

% Paragraph 6
commission_is_controller_of_eu_database(Commission) :-
    ai_office(Commission).

must_provide_technical_and_administrative_support(Commission, support(providers_prospective_providers_deployers)) :-
    ai_office(Commission).

eu_database_complies_with_accessibility_requirements(Database) :-
    must_set_up_and_maintain_eu_database(_Commission, Database).

% Provenance
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_experts_on_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board_on_updating_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(commission_is_controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_complies_with_accessibility_requirements/1, 'celex:32024R1689/oj#art_71').

% References
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
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').
references('celex:32024R1689/oj#art_71', 'celex:32024R1689/oj').

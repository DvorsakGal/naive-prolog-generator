% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9911e9a1272a3eb10e08a316239509a7405587b5abb6d0a28dab4f118b3df402
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain_eu_database/2, gloss('entity obliged to set up and maintain the EU database, what they must maintain'), source('celex:32024R1689/oj#art_71/par_1').
:- pred must_enter_data/2, gloss('entity obliged to enter data into the EU database, what data'), source('celex:32024R1689/oj#art_71/par_2').
:- pred must_enter_data_deployer/2, gloss('deployer obliged to enter data into the EU database, what data'), source('celex:32024R1689/oj#art_71/par_3').
:- pred eu_database_publicly_accessible/1, gloss('information in the EU database that is publicly accessible'), source('celex:32024R1689/oj#art_71/par_4').
:- pred eu_database_restricted_access/1, gloss('information in the EU database with restricted access'), source('celex:32024R1689/oj#art_71/par_4').
:- pred eu_database_contains_personal_data/1, gloss('personal data contained in the EU database'), source('celex:32024R1689/oj#art_71/par_5').
:- pred commission_is_controller/1, gloss('entity that is the controller of the EU database'), source('celex:32024R1689/oj#art_71/par_6').
:- pred must_provide_support/2, gloss('entity obliged to provide support, to whom'), source('celex:32024R1689/oj#art_71/par_6').

% Paragraph 1
must_set_up_and_maintain_eu_database(Commission, eu_database) :-
    ai_office(Commission).

% Paragraph 2
must_enter_data(Entity, data(annex_8_sections_1_and_2)) :-
    provider(Entity).
must_enter_data(Entity, data(annex_8_sections_1_and_2)) :-
    authorised_representative(Entity).

% Paragraph 3
must_enter_data_deployer(Deployer, data(annex_8_section_3)) :-
    deployer(Deployer),
    (   public_authority(Deployer)
    ;   acts_on_behalf_of_public_authority(Deployer, _Authority)
    ).

% Paragraph 4
eu_database_publicly_accessible(Information) :-
    registered_in_accordance_with_art_49(Information),
    \+ information_referred_to_in_art_49_par_4(Information),
    \+ information_referred_to_in_art_60_par_4_c(Information).

eu_database_restricted_access(Information) :-
    registered_in_accordance_with_art_60(Information),
    \+ consent_given_for_public_access(Information).

% Paragraph 5
eu_database_contains_personal_data(Data) :-
    personal_data(Data),
    necessary_for_collecting_and_processing_information(Data, eu_database).

% Paragraph 6
commission_is_controller(Commission) :-
    ai_office(Commission).

must_provide_support(Commission, Support) :-
    ai_office(Commission),
    (   provider(Support)
    ;   prospective_provider(Support)
    ;   deployer(Support)
    ).

% Auxiliary predicates
:- pred public_authority/1, gloss('entity that is a public authority, agency or body'), source('celex:32024R1689/oj#art_71/par_3').
:- pred acts_on_behalf_of_public_authority/2, gloss('entity acting on behalf of a public authority'), source('celex:32024R1689/oj#art_71/par_3').
:- pred registered_in_accordance_with_art_49/1, gloss('information registered in accordance with Article 49'), source('celex:32024R1689/oj#art_71/par_4').
:- pred registered_in_accordance_with_art_60/1, gloss('information registered in accordance with Article 60'), source('celex:32024R1689/oj#art_71/par_4').
:- pred information_referred_to_in_art_49_par_4/1, gloss('information referred to in Article 49(4)'), source('celex:32024R1689/oj#art_71/par_4').
:- pred information_referred_to_in_art_60_par_4_c/1, gloss('information referred to in Article 60(4)(c)'), source('celex:32024R1689/oj#art_71/par_4').
:- pred consent_given_for_public_access/1, gloss('consent given for making information publicly accessible'), source('celex:32024R1689/oj#art_71/par_4').
:- pred necessary_for_collecting_and_processing_information/2, gloss('data necessary for collecting and processing information'), source('celex:32024R1689/oj#art_71/par_5').
:- pred prospective_provider/1, gloss('entity intending to become a provider'), source('celex:32024R1689/oj#art_71/par_6').

% Provenance
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71/par_1').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71/par_2').
provenance(must_enter_data_deployer/2, 'celex:32024R1689/oj#art_71/par_3').
provenance(eu_database_publicly_accessible/1, 'celex:32024R1689/oj#art_71/par_4').
provenance(eu_database_restricted_access/1, 'celex:32024R1689/oj#art_71/par_4').
provenance(eu_database_contains_personal_data/1, 'celex:32024R1689/oj#art_71/par_5').
provenance(commission_is_controller/1, 'celex:32024R1689/oj#art_71/par_6').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71/par_6').

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

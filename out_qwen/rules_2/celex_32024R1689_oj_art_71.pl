% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 8714d85c46b6d8385ec583026394dd797a79411f85832ffadc64972fbb4f4be5
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred eu_database/1, gloss('EU database for high-risk AI systems'), source('celex:32024R1689/oj#art_71').
:- pred must_set_up_and_maintain_eu_database/2, gloss('Commission obligation to set up and maintain EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data_into_eu_database/2, gloss('obligation to enter specified data into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred public_authority_deployer/1, gloss('deployer who is or acts on behalf of a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred registered_high_risk_ai_system/1, gloss('high-risk AI system referred to in Article 6(2) registered in accordance with Articles 49 and 60'), source('celex:32024R1689/oj#art_71').
:- pred registered_non_high_risk_ai_system/1, gloss('AI system not considered high-risk pursuant to Article 6(3) registered in accordance with Article 6(4) and Article 49'), source('celex:32024R1689/oj#art_71').
:- pred annex_viii_section_i_data/1, gloss('data listed in Annex VIII Section I'), source('celex:32024R1689/oj#art_71').
:- pred annex_viii_section_ii_data/1, gloss('data listed in Annex VIII Section II'), source('celex:32024R1689/oj#art_71').
:- pred annex_viii_section_iii_data/1, gloss('data listed in Annex VIII Section III'), source('celex:32024R1689/oj#art_71').
:- pred publicly_accessible_eu_database_information/1, gloss('information in EU database registered under Article 49 that is publicly available'), source('celex:32024R1689/oj#art_71').
:- pred restricted_eu_database_information/1, gloss('information in EU database registered under Article 60 accessible only to authorities unless consent given'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_technical_and_administrative_support/2, gloss('Commission obligation to provide adequate technical and administrative support'), source('celex:32024R1689/oj#art_71').
:- pred controller_of_eu_database/1, gloss('Commission is controller of the EU database'), source('celex:32024R1689/oj#art_71').

must_set_up_and_maintain_eu_database(commission, eu_database).

must_enter_data_into_eu_database(Actor, Data) :-
    provider(Actor),
    annex_viii_section_i_data(Data).

must_enter_data_into_eu_database(Actor, Data) :-
    authorised_representative(Actor),
    annex_viii_section_i_data(Data).

must_enter_data_into_eu_database(Actor, Data) :-
    provider(Actor),
    annex_viii_section_ii_data(Data).

must_enter_data_into_eu_database(Actor, Data) :-
    authorised_representative(Actor),
    annex_viii_section_ii_data(Data).

must_enter_data_into_eu_database(Deployer, Data) :-
    public_authority_deployer(Deployer),
    annex_viii_section_iii_data(Data).

publicly_accessible_eu_database_information(I) :-
    registered_high_risk_ai_system(_S),
    \+ exempt_from_public_access(I).

restricted_eu_database_information(I) :-
    registered_non_high_risk_ai_system(_S),
    \+ public_consent_given(I).

controller_of_eu_database(commission).

must_provide_technical_and_administrative_support(commission, Recipient) :-
    provider(Recipient).

must_provide_technical_and_administrative_support(commission, Recipient) :-
    deployer(Recipient).

provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_71').
provenance(registered_high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(registered_non_high_risk_ai_system/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_i_data/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_ii_data/1, 'celex:32024R1689/oj#art_71').
provenance(annex_viii_section_iii_data/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible_eu_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_eu_database_information/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').
provenance(controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').

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

% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 84e339e9a61ac38d0384a0fb1314be6bdf1737a5730b4bd5266cbc536632422d
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_maintain/2, gloss('entity obliged to keep something in existence and functional'), source('celex:32024R1689/oj#art_71').
:- pred must_establish/2, gloss('entity obliged to create something'), source('celex:32024R1689/oj#art_71').
:- pred must_enter/2, gloss('entity obliged to input data into a system'), source('celex:32024R1689/oj#art_71').
:- pred publicly_accessible/1, gloss('information available to the general public'), source('celex:32024R1689/oj#art_71').
:- pred accessible_to_authorities/1, gloss('information available only to designated authorities'), source('celex:32024R1689/oj#art_71').
:- pred eu_database/1, gloss('database for high-risk AI system registration'), source('celex:32024R1689/oj#art_71').
:- pred registered_under_article_49/1, gloss('system registered pursuant to Article 49'), source('celex:32024R1689/oj#art_71').
:- pred registered_under_article_60/1, gloss('system registered pursuant to Article 60'), source('celex:32024R1689/oj#art_71').
:- pred registered_under_article_6_par_4/1, gloss('system registered pursuant to Article 6(4)'), source('celex:32024R1689/oj#art_71').
:- pred high_risk_under_annex_3/1, gloss('system classified as high-risk per Annex III'), source('celex:32024R1689/oj#art_71').
:- pred not_high_risk_under_article_6_par_3/1, gloss('system not considered high-risk per Article 6(3)'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex_8_section_1/1, gloss('data specified in Annex VIII Section 1'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex_8_section_2/1, gloss('data specified in Annex VIII Section 2'), source('celex:32024R1689/oj#art_71').
:- pred data_listed_in_annex_8_section_3/1, gloss('data specified in Annex VIII Section 3'), source('celex:32024R1689/oj#art_71').
:- pred deployer_public_authority/1, gloss('deployer that is or acts on behalf of a public authority'), source('celex:32024R1689/oj#art_71').
:- pred prospective_provider/1, gloss('entity intending to place an AI system on the market'), source('celex:32024R1689/oj#art_71').
:- pred controller_of/2, gloss('entity with data controller responsibilities'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_support/2, gloss('entity obliged to furnish assistance to others'), source('celex:32024R1689/oj#art_71').

must_establish(commission, eu_database) :-
    must_maintain(commission, eu_database).

must_maintain(commission, eu_database).

must_enter(ProviderOrRepresentative, Data) :-
    (provider(ProviderOrRepresentative); authorised_representative(ProviderOrRepresentative)),
    data_listed_in_annex_8_section_1(Data).
must_enter(ProviderOrRepresentative, Data) :-
    (provider(ProviderOrRepresentative); authorised_representative(ProviderOrRepresentative)),
    data_listed_in_annex_8_section_2(Data).

must_enter(Deployer, Data) :-
    deployer_public_authority(Deployer),
    data_listed_in_annex_8_section_3(Data).

publicly_accessible(Information) :-
    registered_under_article_49(Information),
    \+ exception_article_49_par_4(Information),
    \+ exception_article_60_par_4_unp_1_pnt_c(Information).

accessible_to_authorities(Information) :-
    registered_under_article_60(Information),
    \+ consent_for_public_access(Information).

controller_of(commission, eu_database).

must_provide_support(commission, Provider) :-
    provider(Provider).
must_provide_support(commission, ProspectiveProvider) :-
    prospective_provider(ProspectiveProvider).
must_provide_support(commission, Deployer) :-
    deployer(Deployer).

eu_database(eu_database_for_high_risk_ai_systems).

exception_article_49_par_4(_).
exception_article_60_par_4_unp_1_pnt_c(_).
consent_for_public_access(_).

provenance(must_establish/2, 'celex:32024R1689/oj#art_71').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(accessible_to_authorities/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(exception_article_49_par_4/1, 'celex:32024R1689/oj#art_71').
provenance(exception_article_60_par_4_unp_1_pnt_c/1, 'celex:32024R1689/oj#art_71').
provenance(consent_for_public_access/1, 'celex:32024R1689/oj#art_71').

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

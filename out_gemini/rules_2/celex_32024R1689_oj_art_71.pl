% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 4d4a0a4051805adefbc1c5fdd7ecad77b09d7d9502111bf43904744e82703a60
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_set_up_and_maintain/2, gloss('actor must set up and maintain a system or database'), source('celex:32024R1689/oj#art_71').
:- pred must_enter_data/2, gloss('actor must enter specified data into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred public_authority_agency_or_body/1, gloss('entity is a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred acts_on_behalf_of_public_entity/1, gloss('entity acts on behalf of a public authority, agency or body'), source('celex:32024R1689/oj#art_71').
:- pred publicly_available/1, gloss('information in database is accessible and publicly available'), source('celex:32024R1689/oj#art_71').
:- pred restricted_access/2, gloss('information in database is accessible only to specified actors'), source('celex:32024R1689/oj#art_71').
:- pred consent_given_for_public_access/1, gloss('provider has consented to making information publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred controller_of/2, gloss('entity is the controller of a database or processing system'), source('celex:32024R1689/oj#art_71').
:- pred must_provide_support/2, gloss('actor must provide technical and administrative support to parties'), source('celex:32024R1689/oj#art_71').

% Paragraph 1: The Commission shall set up and maintain the EU database
must_set_up_and_maintain(C, eu_database) :-
    commission(C).

% Paragraph 2: Data listed in Annex VIII Sections 1 and 2 entered by provider or authorised representative
must_enter_data(P, data(annex_8_section_1, S)) :-
    provider(P),
    ai_system(S).

must_enter_data(AR, data(annex_8_section_1, S)) :-
    authorised_representative(AR),
    ai_system(S).

must_enter_data(P, data(annex_8_section_2, S)) :-
    provider(P),
    ai_system(S).

must_enter_data(AR, data(annex_8_section_2, S)) :-
    authorised_representative(AR),
    ai_system(S).

% Paragraph 3: Data listed in Annex VIII Section 3 entered by deployer (public authority or acting on its behalf)
must_enter_data(D, data(annex_8_section_3, S)) :-
    deployer(D),
    ai_system(S),
    public_authority_agency_or_body(D).

must_enter_data(D, data(annex_8_section_3, S)) :-
    deployer(D),
    ai_system(S),
    acts_on_behalf_of_public_entity(D).

% Paragraph 4: Public availability and restricted access
publicly_available(registration(art_49, S)) :-
    ai_system(S).

publicly_available(registration(art_60, S)) :-
    ai_system(S),
    consent_given_for_public_access(S).

restricted_access(registration(art_60, S), authorities) :-
    ai_system(S),
    \+ consent_given_for_public_access(S).

% Paragraph 6: Commission is controller and must provide support
controller_of(C, eu_database) :-
    commission(C).

must_provide_support(C, support(technical_and_administrative, operators)) :-
    commission(C).

% Provenance
provenance(must_set_up_and_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data/2, 'celex:32024R1689/oj#art_71').
provenance(public_authority_agency_or_body/1, 'celex:32024R1689/oj#art_71').
provenance(acts_on_behalf_of_public_entity/1, 'celex:32024R1689/oj#art_71').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access/2, 'celex:32024R1689/oj#art_71').
provenance(consent_given_for_public_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide_support/2, 'celex:32024R1689/oj#art_71').

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

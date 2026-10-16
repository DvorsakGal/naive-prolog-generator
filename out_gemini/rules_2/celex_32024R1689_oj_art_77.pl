% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : f3e5cfa92627424e1f5d56a4b6f5c5e068bb7c62228346c99ef6a516afc7f0ef
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system_annex_3/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_77').
:- pred documentation_under_regulation/2, gloss('documentation created or maintained under this Regulation for an AI system'), source('celex:32024R1689/oj#art_77').
:- pred necessary_for_mandate/2, gloss('access to documentation is necessary for effectively fulfilling authority mandate within its jurisdiction'), source('celex:32024R1689/oj#art_77').
:- pred permitted_request_and_access_documentation/2, gloss('authority has the power to request and access documentation of an AI system'), source('celex:32024R1689/oj#art_77').
:- pred must_inform/2, gloss('actor must inform another entity or authority of an action or event'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_77').
:- pred must_identify/2, gloss('Member State must identify fundamental rights authorities and make the list publicly available'), source('celex:32024R1689/oj#art_77').
:- pred must_notify/2, gloss('actor must notify an object to specified recipients'), source('celex:32024R1689/oj#art_77').
:- pred must_keep_updated/2, gloss('actor must keep a list or information up to date'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient/2, gloss('documentation is insufficient to ascertain whether infringement of fundamental rights obligations occurred'), source('celex:32024R1689/oj#art_77').
:- pred permitted_request_testing/2, gloss('fundamental rights authority may make a reasoned request to market surveillance authority to organise technical testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority must organise testing with involvement of requesting authority within reasonable time'), source('celex:32024R1689/oj#art_77').
:- pred documentation_or_information_obtained_under_art_77/2, gloss('information or documentation obtained by a fundamental rights authority pursuant to Article 77'), source('celex:32024R1689/oj#art_77').
:- pred complies_with_confidentiality/2, gloss('entity complies with confidentiality obligations of Article 78 regarding obtained documentation'), source('celex:32024R1689/oj#art_77').

% Paragraph 1: Power to request and access documentation
permitted_request_and_access_documentation(Authority, Doc) :-
    fundamental_rights_authority(Authority),
    documentation_under_regulation(Doc, System),
    high_risk_ai_system_annex_3(System),
    necessary_for_mandate(Authority, Doc).

% Paragraph 1: Inform market surveillance authority
must_inform(Authority, request_documentation(Doc, MSA)) :-
    fundamental_rights_authority(Authority),
    permitted_request_and_access_documentation(Authority, Doc),
    market_surveillance_authority(MSA).

% Paragraph 2: Member State obligations
must_identify(MS, list_of_fundamental_rights_authorities) :-
    member_state(MS).

must_notify(MS, list(fundamental_rights_authorities, to(Commission, other_member_states))) :-
    member_state(MS),
    commission(Commission).

must_keep_updated(MS, list_of_fundamental_rights_authorities) :-
    member_state(MS).

% Paragraph 3: Request to organise testing when documentation is insufficient
permitted_request_testing(Authority, testing_request(MSA, System)) :-
    fundamental_rights_authority(Authority),
    market_surveillance_authority(MSA),
    high_risk_ai_system_annex_3(System),
    documentation_insufficient(Authority, System).

must_organise_testing(MSA, testing(System, involvement(Authority))) :-
    market_surveillance_authority(MSA),
    permitted_request_testing(Authority, testing_request(MSA, System)).

% Paragraph 4: Confidentiality obligations
must_comply(Authority, confidentiality(Doc)) :-
    fundamental_rights_authority(Authority),
    documentation_or_information_obtained_under_art_77(Authority, Doc).

% Provenance
provenance(permitted_request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_updated/2, 'celex:32024R1689/oj#art_77').
provenance(permitted_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_comply/2, 'celex:32024R1689/oj#art_77').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

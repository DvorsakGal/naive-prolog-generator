% unit       : celex:32024R1689/oj#art_71
% context    : CHAPTER VIII EU DATABASE FOR HIGH-RISK AI SYSTEMS
% slice sha  : 6272889e203d766fd8ce98222077575ee3480328c4cd606f99c6eab888a141ad
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c25913de149a1a1dcdc8d898bac6958ab76e161508a0e093a77ebb3c12ee54f5
% cached     : False
% title      : EU database for high-risk AI systems listed in <ref id="celex:32024R1689/oj#anx_3"/>
:- pred must_maintain(Actor, Object), gloss('Actor is obligated to maintain Object'), source('celex:32024R1689/oj#art_71').
:- pred must_enter(Actor, Object), gloss('Actor is obligated to enter Object into the EU database'), source('celex:32024R1689/oj#art_71').
:- pred must_consult(Actor, Object), gloss('Actor is obligated to consult Object'), source('celex:32024R1689/oj#art_71').
:- pred must_provide(Actor, Object), gloss('Actor is obligated to provide Object'), source('celex:32024R1689/oj#art_71').
:- pred controller_of(Actor, Object), gloss('Actor is the controller of Object'), source('celex:32024R1689/oj#art_71').
:- pred publicly_available(Object), gloss('Object is accessible and publicly available'), source('celex:32024R1689/oj#art_71').
:- pred restricted_access(Object), gloss('Object is accessible only to specified authorities'), source('celex:32024R1689/oj#art_71').
:- pred public_deployer(Deployer), gloss('Deployer is or acts on behalf of a public authority, agency, or body'), source('celex:32024R1689/oj#art_71').
:- pred consent_for_public_access(Provider, Object), gloss('Provider has consented to making Object publicly accessible'), source('celex:32024R1689/oj#art_71').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_71').
:- pred high_risk_ai_system(System), gloss('High-risk AI system under the regulation'), source('celex:32024R1689/oj#art_71').

% Paragraph 1: Commission obligations to maintain database and consult
must_maintain(commission, eu_database(high_risk_ai_systems)).

must_consult(commission, relevant_experts) :-
    setting_functional_specifications(eu_database(high_risk_ai_systems)).

must_consult(commission, board) :-
    updating_functional_specifications(eu_database(high_risk_ai_systems)).

% Paragraph 2: Provider or authorised representative data entry
must_enter(Provider, data(annex_8_section_1_and_2, System)) :-
    provider(Provider),
    high_risk_ai_system(System).

must_enter(Representative, data(annex_8_section_1_and_2, System)) :-
    authorised_representative(Representative),
    high_risk_ai_system(System).

% Paragraph 3: Public deployer data entry
must_enter(Deployer, data(annex_8_section_3, System)) :-
    deployer(Deployer),
    public_deployer(Deployer),
    high_risk_ai_system(System).

% Paragraph 4: Public accessibility vs restricted access
publicly_available(registration_info(article_49, System)) :-
    ai_system(System).

restricted_access(registration_info(article_49_par_4, System)) :-
    ai_system(System).

restricted_access(registration_info(article_60_par_4_c, System)) :-
    ai_system(System).

restricted_access(registration_info(article_60, System)) :-
    ai_system(System),
    provider(Provider),
    \+ consent_for_public_access(Provider, registration_info(article_60, System)).

publicly_available(registration_info(article_60, System)) :-
    ai_system(System),
    provider(Provider),
    consent_for_public_access(Provider, registration_info(article_60, System)).

% Paragraph 6: Commission is controller and provides support
controller_of(commission, eu_database(high_risk_ai_systems)).

must_provide(commission, technical_and_administrative_support(Operator)) :-
    operator(Operator).

% Provenance
provenance(must_maintain/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter/2, 'celex:32024R1689/oj#art_71').
provenance(publicly_available/1, 'celex:32024R1689/oj#art_71').
provenance(restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(controller_of/2, 'celex:32024R1689/oj#art_71').
provenance(must_provide/2, 'celex:32024R1689/oj#art_71').

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

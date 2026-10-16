% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 8cff3ffe983be79d655762274ee5e87f5de2e79cdd9e744f2c6807e5db9e49c9
% cached     : False
% title      : Human oversight
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_14').
:- pred required_human_oversight/1, gloss('AI system is required to have effective human oversight design and measures'), source('celex:32024R1689/oj#art_14').
:- pred allows_effective_human_oversight/1, gloss('AI system is designed to be effectively overseen by natural persons during use'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measures_identified/2, gloss('provider has identified human oversight measures for the AI system'), source('celex:32024R1689/oj#art_14').
:- pred oversight_capabilities_enabled/1, gloss('deployer oversight personnel are enabled with required understanding, monitoring and intervention capabilities'), source('celex:32024R1689/oj#art_14').
:- pred required_two_person_verification/1, gloss('deployment decision requires separate verification and confirmation by at least two natural persons'), source('celex:32024R1689/oj#art_14').
:- pred exempt_two_person_verification/1, gloss('system is exempt from two-person verification requirement under Union or national law'), source('celex:32024R1689/oj#art_14').
:- pred permitted_deployer_action_on_identification/2, gloss('deployer is permitted to take action or decision on biometric identification output'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_confirmed/2, gloss('identification has been separately verified and confirmed by at least two competent persons'), source('celex:32024R1689/oj#art_14').
:- pred purpose_law_enforcement_migration_border_asylum/1, gloss('system is used for law enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').
:- pred considered_disproportionate_by_law/1, gloss('Union or national law considers two-person verification requirement disproportionate for this system'), source('celex:32024R1689/oj#art_14').

% Paragraph 1 & 2: Human oversight requirements for high-risk AI systems
required_human_oversight(S) :-
    high_risk_ai_system(S).

% Provider obligations under paragraphs 1, 3, and 4
must_comply(P, human_oversight_design(S)) :-
    provider(P),
    high_risk_ai_system(S),
    allows_effective_human_oversight(S),
    oversight_measures_identified(P, S),
    oversight_capabilities_enabled(S).

% Paragraph 5: Requirement of separate verification by at least two natural persons
required_two_person_verification(S) :-
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    \+ exempt_two_person_verification(S).

% Paragraph 5 second subparagraph: Exemption from two-person verification
exempt_two_person_verification(S) :-
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    purpose_law_enforcement_migration_border_asylum(S),
    considered_disproportionate_by_law(S).

% Deployer action on biometric identification: permitted if verified, or exempt
permitted_deployer_action_on_identification(D, identification(S, Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    separate_verification_confirmed(S, Person).

permitted_deployer_action_on_identification(D, identification(S, _Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    biometrics_annex_3_1_a(S),
    exempt_two_person_verification(S).

% Deployer action permitted generally if not a biometrics Annex III point 1(a) system
permitted_deployer_action_on_identification(D, identification(S, _Person)) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ biometrics_annex_3_1_a(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(allows_effective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_identified/2, 'celex:32024R1689/oj#art_14').
provenance(oversight_capabilities_enabled/1, 'celex:32024R1689/oj#art_14').
provenance(required_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_two_person_verification/1, 'celex:32024R1689/oj#art_14').
provenance(permitted_deployer_action_on_identification/2, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_confirmed/2, 'celex:32024R1689/oj#art_14').
provenance(purpose_law_enforcement_migration_border_asylum/1, 'celex:32024R1689/oj#art_14').
provenance(considered_disproportionate_by_law/1, 'celex:32024R1689/oj#art_14').
provenance(must_comply/2, 'celex:32024R1689/oj#art_14').

% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

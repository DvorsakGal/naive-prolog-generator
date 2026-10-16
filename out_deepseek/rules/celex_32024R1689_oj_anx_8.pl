% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : da3f73c9de1ea556f9af29c9e6f5561b9edcd43821ef51df6373e7db397aeb35
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_submit_registration_info/2, gloss('Actor must submit registration information for a high-risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred must_keep_registration_info_up_to_date/2, gloss('Actor must keep registration information up to date for a high-risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred registration_info_section_a/2, gloss('Information required under Section A for a high-risk AI system'), source('celex:32024R1689/oj#anx_8/sec_A').
:- pred registration_info_section_b/2, gloss('Information required under Section B for a high-risk AI system'), source('celex:32024R1689/oj#anx_8/sec_B').
:- pred registration_info_section_c/2, gloss('Information required under Section C for a high-risk AI system'), source('celex:32024R1689/oj#anx_8/sec_C').

% Section A – providers under Article 49(1)
must_submit_registration_info(Provider, registration_info_section_a(System)) :-
    provider(Provider),
    registration_info_section_a(Provider, System).

must_keep_registration_info_up_to_date(Provider, registration_info_section_a(System)) :-
    provider(Provider),
    registration_info_section_a(Provider, System).

registration_info_section_a(Provider, System) :-
    provider(Provider),
    ai_system(System),
    % The annex does not itself define "high-risk AI system", but the context
    % and the reference to Article 49(1) make clear it applies to high-risk AI
    % systems.  We therefore call the signature predicate that will be defined
    % elsewhere.
    high_risk_ai_system(System),
    % 1. name, address and contact details of the provider
    % 2. where submission by another person, that person's details
    % 3. authorised representative details, where applicable
    % 4. trade name and unambiguous reference
    % 5. description of intended purpose, components and functions
    % 6. basic description of information used and operating logic
    % 7. status
    % 8. notified body certificate details, where applicable
    % 9. scanned copy of certificate, where applicable
    % 10. Member States where placed on market, put into service or made available
    % 11. copy of EU declaration of conformity
    % 12. electronic instructions for use (with exceptions)
    % 13. URL for additional information (optional)
    true.

% Section B – providers under Article 49(2)
must_submit_registration_info(Provider, registration_info_section_b(System)) :-
    provider(Provider),
    registration_info_section_b(Provider, System).

must_keep_registration_info_up_to_date(Provider, registration_info_section_b(System)) :-
    provider(Provider),
    registration_info_section_b(Provider, System).

registration_info_section_b(Provider, System) :-
    provider(Provider),
    ai_system(System),
    high_risk_ai_system(System),
    % 1. name, address and contact details of the provider
    % 2. where submission by another person, that person's details
    % 3. authorised representative details, where applicable
    % 4. trade name and unambiguous reference
    % 5. description of intended purpose
    % 6. condition(s) under Article 6(3) for not-high-risk
    % 7. short summary of grounds for not-high-risk
    % 8. status
    % 9. Member States where placed on market, put into service or made available
    true.

% Section C – deployers under Article 49(3)
must_submit_registration_info(Deployer, registration_info_section_c(System)) :-
    deployer(Deployer),
    registration_info_section_c(Deployer, System).

must_keep_registration_info_up_to_date(Deployer, registration_info_section_c(System)) :-
    deployer(Deployer),
    registration_info_section_c(Deployer, System).

registration_info_section_c(Deployer, System) :-
    deployer(Deployer),
    ai_system(System),
    high_risk_ai_system(System),
    % 1. name, address and contact details of the deployer
    % 2. details of person submitting on behalf of deployer
    % 3. URL of the entry in the EU database by its provider
    % 4. summary of fundamental rights impact assessment findings
    % 5. summary of data protection impact assessment, where applicable
    true.

% Provenance
provenance(must_submit_registration_info/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_info_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_section_a/2, 'celex:32024R1689/oj#anx_8/sec_A').
provenance(registration_info_section_b/2, 'celex:32024R1689/oj#anx_8/sec_B').
provenance(registration_info_section_c/2, 'celex:32024R1689/oj#anx_8/sec_C').

% References
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').

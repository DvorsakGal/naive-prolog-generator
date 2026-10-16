% unit       : celex:32024R1689/oj#art_57
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 2c38ca596db9fa5c31dfaf56b67a7f817de9c69a52031c8f7f886d92158b8cd5
% cached     : False
% title      : AI regulatory sandboxes
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_57').
:- pred edps/1, gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_57').
:- pred prospective_provider/1, gloss('entity intending to become a provider of an AI system'), source('celex:32024R1689/oj#art_57').
:- pred observes_sandbox_plan/1, gloss('provider observes the agreed sandbox plan and conditions'), source('celex:32024R1689/oj#art_57').
:- pred follows_guidance_in_good_faith/1, gloss('provider follows in good faith guidance given by the competent authority'), source('celex:32024R1689/oj#art_57').
:- pred exempt_administrative_fines/1, gloss('actor is exempt from administrative fines for infringements'), source('celex:32024R1689/oj#art_57').
:- pred permitted_sandbox_activity/2, gloss('authority or entity is permitted to carry out sandbox-related action'), source('celex:32024R1689/oj#art_57').
:- pred permitted_suspend_testing/2, gloss('authority is permitted to temporarily or permanently suspend testing in sandbox'), source('celex:32024R1689/oj#art_57').
:- pred objective_regulatory_sandbox/1, gloss('regulatory sandbox pursues designated objective'), source('celex:32024R1689/oj#art_57').

% Paragraph 1: Duty of Member States to establish at least one operational sandbox
must_comply(MS, establish_national_regulatory_sandbox) :-
    member_state(MS).

% Paragraph 3: EDPS permitted to establish a regulatory sandbox
permitted_sandbox_activity(Supervisor, establish_sandbox_for(Institutions)) :-
    edps(Supervisor),
    union_institution_body_office_agency(Institutions).

% Paragraph 4: Resource allocation and cooperation
must_comply(Auth, allocate_sufficient_resources(regulatory_sandbox)) :-
    national_competent_authority(Auth).

% Paragraph 6 & 7: Provision of guidance, proof, and exit reports
must_comply(Auth, provide_sandbox_guidance) :-
    national_competent_authority(Auth).

must_comply(Auth, provide_written_proof(System)) :-
    national_competent_authority(Auth),
    ai_system(System).

must_comply(Auth, provide_exit_report(System)) :-
    national_competent_authority(Auth),
    ai_system(System).

% Paragraph 9: Objectives of the sandbox
objective_regulatory_sandbox(improve_legal_certainty).
objective_regulatory_sandbox(support_best_practices).
objective_regulatory_sandbox(foster_innovation_and_competitiveness).
objective_regulatory_sandbox(contribute_evidence_based_learning).
objective_regulatory_sandbox(facilitate_market_access_smes).

% Paragraph 11: Power to suspend testing or participation if mitigation is not possible
permitted_suspend_testing(Auth, testing(System)) :-
    national_competent_authority(Auth),
    ai_system(System),
    risk(System),
    \+ adequate_corrective_action_taken(_Provider, System).

must_report(Auth, suspension_decision(System)) :-
    national_competent_authority(Auth),
    ai_system(System),
    permitted_suspend_testing(Auth, testing(System)).

% Paragraph 12: Exemption from administrative fines for compliant participants
exempt_administrative_fines(Entity) :-
    provider(Entity),
    observes_sandbox_plan(Entity),
    follows_guidance_in_good_faith(Entity).

exempt_administrative_fines(Entity) :-
    prospective_provider(Entity),
    observes_sandbox_plan(Entity),
    follows_guidance_in_good_faith(Entity).

% Paragraph 15: Notification of sandbox establishment
must_report(Auth, establishment_of_sandbox(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).

% Paragraph 16: Annual reporting duties
must_report(Auth, annual_report(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).

must_report(Auth, final_report(Sandbox)) :-
    national_competent_authority(Auth),
    ai_regulatory_sandbox(Sandbox).

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_sandbox_activity/2, 'celex:32024R1689/oj#art_57').
provenance(objective_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(permitted_suspend_testing/2, 'celex:32024R1689/oj#art_57').
provenance(must_report/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_administrative_fines/1, 'celex:32024R1689/oj#art_57').

% References
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

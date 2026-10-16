% unit       : celex:32024R1689/oj#art_57
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : 76b101b1acebbba4671382f99a1137915d81ef8da6a8a30a4c7b40ef4332c604
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7cc819e6ec4a5fd062ef3b175cfae808c787b1c875ad1d6fa611120d80c48cc4
% cached     : False
% title      : AI regulatory sandboxes
:- pred must_establish(Actor, Sandbox), gloss('Party is obliged to establish an AI regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred permitted_establish(Actor, Sandbox), gloss('Party is permitted to establish an AI regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred operational_by(Sandbox, Date), gloss('Sandbox must be operational by the specified date'), source('celex:32024R1689/oj#art_57').
:- pred must_allocate_resources(Actor, Purpose), gloss('Member State must ensure sufficient resources are allocated'), source('celex:32024R1689/oj#art_57').
:- pred must_provide(Actor, Object), gloss('Actor is obliged to provide something'), source('celex:32024R1689/oj#art_57').
:- pred must_mitigate_risk(Actor, Risk), gloss('Identified significant risks must be adequately mitigated'), source('celex:32024R1689/oj#art_57').
:- pred must_inform(Actor, Object), gloss('Actor is obliged to inform another entity'), source('celex:32024R1689/oj#art_57').
:- pred must_submit(Actor, Report), gloss('Actor is obliged to submit a report'), source('celex:32024R1689/oj#art_57').
:- pred must_publish(Actor, Information), gloss('Actor is obliged to make information publicly available'), source('celex:32024R1689/oj#art_57').
:- pred must_develop(Actor, System), gloss('Actor is obliged to develop a system or platform'), source('celex:32024R1689/oj#art_57').
:- pred exempt_administrative_fines(Participant, Law), gloss('Sandbox participant is exempt from administrative fines under specified conditions'), source('celex:32024R1689/oj#art_57').
:- pred observes_sandbox_conditions(Participant, Sandbox), gloss('Participant observes terms, sandbox plan, and guidance in good faith'), source('celex:32024R1689/oj#art_57').
:- pred participant_in_sandbox(Participant, Sandbox), gloss('Provider or prospective provider participates in a regulatory sandbox'), source('celex:32024R1689/oj#art_57').
:- pred member_state(State), gloss('A Member State of the European Union'), source('celex:32024R1689/oj#art_57').
:- pred edps(Supervisor), gloss('European Data Protection Supervisor'), source('celex:32024R1689/oj#art_57').
:- pred european_commission(Commission), gloss('The European Commission'), source('celex:32024R1689/oj#art_57').
:- pred significant_risk_identified(Sandbox, Risk), gloss('Significant risk identified during sandbox testing'), source('celex:32024R1689/oj#art_57').
:- pred effective_mitigation_possible(Risk), gloss('Risk can be effectively mitigated'), source('celex:32024R1689/oj#art_57').

% Paragraph 1: Member States must ensure competent authorities establish at least one sandbox, operational by 2 August 2026
must_establish(MS, sandbox(national_level)) :-
    member_state(MS).

operational_by(sandbox(national_level), date(2026, 8, 2)).

% Paragraph 2: Regional, local, or joint sandboxes permitted
permitted_establish(CA, sandbox(regional_level)) :-
    national_competent_authority(CA).

permitted_establish(CA, sandbox(local_level)) :-
    national_competent_authority(CA).

permitted_establish(CA, sandbox(joint)) :-
    national_competent_authority(CA).

% Paragraph 3: EDPS may establish a sandbox for Union institutions
permitted_establish(Supervisor, sandbox(union_institutions)) :-
    edps(Supervisor).

% Paragraph 4: Resource allocation
must_allocate_resources(MS, compliance_with(art_57)) :-
    member_state(MS).

% Paragraph 6 & 7: Guidance, supervisory support, written proof, and exit reports
must_provide(CA, guidance(sandbox(S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).

must_provide(CA, written_proof(activities(P, S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S),
    participant_in_sandbox(P, S).

must_provide(CA, exit_report(activities(P, S))) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S),
    participant_in_sandbox(P, S).

% Paragraph 11: Significant risks and suspension
must_mitigate_risk(CA, Risk) :-
    national_competent_authority(CA),
    significant_risk_identified(S, Risk),
    ai_regulatory_sandbox(S).

must_inform(CA, suspension(P, S)) :-
    national_competent_authority(CA),
    participant_in_sandbox(P, S),
    significant_risk_identified(S, Risk),
    \+ effective_mitigation_possible(Risk).

% Paragraph 12: Exemption from administrative fines
exempt_administrative_fines(P, ai_act) :-
    participant_in_sandbox(P, S),
    ai_regulatory_sandbox(S),
    observes_sandbox_conditions(P, S).

% Paragraph 15: Informing AI Office and Board, list publication
must_inform(CA, establishment(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).

must_publish(Office, list_of_sandboxes) :-
    ai_office(Office).

% Paragraph 16: Annual and final reporting
must_submit(CA, annual_report(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).

must_submit(CA, final_report(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).

must_publish(CA, annual_report_abstract(S)) :-
    national_competent_authority(CA),
    ai_regulatory_sandbox(S).

% Paragraph 17: Single dedicated interface
must_develop(Commission, dedicated_interface(sandboxes)) :-
    european_commission(Commission).

% Provenance facts
provenance(must_establish/2, 'celex:32024R1689/oj#art_57').
provenance(operational_by/2, 'celex:32024R1689/oj#art_57').
provenance(permitted_establish/2, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_resources/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide/2, 'celex:32024R1689/oj#art_57').
provenance(must_mitigate_risk/2, 'celex:32024R1689/oj#art_57').
provenance(must_inform/2, 'celex:32024R1689/oj#art_57').
provenance(exempt_administrative_fines/2, 'celex:32024R1689/oj#art_57').
provenance(must_publish/2, 'celex:32024R1689/oj#art_57').
provenance(must_submit/2, 'celex:32024R1689/oj#art_57').
provenance(must_develop/2, 'celex:32024R1689/oj#art_57').

% Ground-truth references
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

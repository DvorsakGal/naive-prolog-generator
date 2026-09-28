% Demonstration ABox -- hand-written, NOT generated.
% Shows the rules firing. Mirrors low_level_example.pl lines 22-30.
%
% NOTE: the predicate names below must match the CURRENT generation. Because the
% model re-invents rule names on every Phase B run, this file is tied to one run.
% That instability is the headline finding in RESULTS_V2.md.
:- discontiguous ai_system/1.
:- discontiguous remote/1.
:- discontiguous real_time/1.
:- discontiguous biometric_identification/1.
:- discontiguous remote_biometric_identification_system/1.

% cam_net_01 -- lawful: used to localise a suspect (an allowed objective)
ai_system(cam_net_01).
remote(cam_net_01).
real_time(cam_net_01).
biometric_identification(cam_net_01).
remote_biometric_identification_system(cam_net_01).
objective_localise_suspect(cam_net_01).

% cam_net_02 -- mass screening: no allowed objective
ai_system(cam_net_02).
remote(cam_net_02).
real_time(cam_net_02).
biometric_identification(cam_net_02).
remote_biometric_identification_system(cam_net_02).

law_enforcement_authority(officer_a).
publicly_accessible_space(town_square).

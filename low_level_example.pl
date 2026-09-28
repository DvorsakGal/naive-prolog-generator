% --- low level example for biometric identification system entity ---

% --- System classification ---
real_time_rbi_system(S) :-
    biometric_identification_system(S),
    remote(S),
    real_time(S).

% --- Core norm: deployment is permitted only for confirming
%     the identity of the specifically targeted individual ---
permitted_deployment(S, confirm_identity(P)) :-
    real_time_rbi_system(S),
    specifically_targeted(P).

% Any other deployment of a real-time RBI system is not permitted
prohibited_deployment(S, Purpose) :-
    real_time_rbi_system(S),
    deployment(S, Purpose),
    \+ permitted_deployment(S, Purpose).

% --- Example facts ---
biometric_identification_system(cam_net_01).
remote(cam_net_01).
real_time(cam_net_01).

specifically_targeted(suspect_x).

deployment(cam_net_01, confirm_identity(suspect_x)).
deployment(cam_net_01, confirm_identity(passerby_y)).
deployment(cam_net_01, mass_screening(crowd)).
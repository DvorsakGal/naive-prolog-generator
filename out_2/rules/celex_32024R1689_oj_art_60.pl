% unit       : celex:32024R1689/oj#art_60
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : ffb65f234fdaa01a3d87e39c066f10c6b01aa4f04e1860a106ffeed9569f294a
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0008d7e79d512cc528ed44c34a00ee2a1c24f4f1cdb22a0c9ea74592437e3628
% cached     : False
% title      : Testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes
:- pred prospective_provider/1, gloss('entity that intends to become a provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_60').

% Permission to conduct real‑world testing of high‑risk AI systems
conduct_real_world_testing(Actor, high_risk_ai_system) :-
    (provider(Actor) ; prospective_provider(Actor)),
    real_world_testing_plan_submitted(Actor, State),
    authority_approved(Actor, State),
    registration_done(Actor, State),
    established_in_union(Actor),
    data_transfer_safeguarded(Actor),
    duration_within_limit(Actor),
    vulnerable_groups_protected(Actor),
    deployer_informed(Actor),
    informed_consent_obtained(Actor),
    oversight_by_qualified_personnel(Actor),
    decisions_reversible(Actor),
    before_market_placement(Actor, high_risk_ai_system).

% Obligations on providers / prospective providers
must_draw_up(Actor, real_world_testing_plan) :-
    (provider(Actor) ; prospective_provider(Actor)).

must_submit(Actor, submission(real_world_testing_plan, market_surveillance_authority(State))) :-
    (provider(Actor) ; prospective_provider(Actor)),
    testing_location_state(Actor, State).

% Conditions that must be satisfied for the permission above
authority_approved(Actor, State) :-
    market_surveillance_authority(State),
    approved_testing(Actor, State).

registration_done(Actor, State) :-
    registration_number(Actor, State).

established_in_union(Actor) :-
    provider(Actor) ; prospective_provider(Actor).

data_transfer_safeguarded(Actor) :-
    safeguards_implemented(Actor).

duration_within_limit(Actor) :-
    testing_duration(Actor, months(Duration)),
    ( Duration =< 6
    ; (Duration =< 12, extension_requested(Actor))
    ).

vulnerable_groups_protected(Actor) :-
    protection_measures_for_vulnerable_groups(Actor).

deployer_informed(Actor) :-
    deployer_informed_of_testing(Actor).

informed_consent_obtained(Actor) :-
    subjects_informed_consent(Actor).

oversight_by_qualified_personnel(Actor) :-
    qualified_oversight_provided(Actor).

decisions_reversible(Actor) :-
    decisions_can_be_reversed(Actor).

% Obligations of market surveillance authorities
must_require(Authority, information(Actor)) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).

must_inspect(Authority, Actor) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)).

% Notification obligations of providers / prospective providers
must_notify(Authority, suspension_or_termination(Actor)) :-
    market_surveillance_authority(Authority),
    (provider(Actor) ; prospective_provider(Actor)),
    testing_location_state(Actor, State),
    State = Authority.

% Permission for subjects (or their representatives) to withdraw consent
permitted_withdraw_consent(Subject) :-
    subject(Subject).

% Provenance
provenance(conduct_real_world_testing/2, 'celex:32024R1689/oj#art_60').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_60').
provenance(must_submit/2, 'celex:32024R1689/oj#art_60').
provenance(authority_approved/2, 'celex:32024R1689/oj#art_60').
provenance(registration_done/2, 'celex:32024R1689/oj#art_60').
provenance(established_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguarded/1, 'celex:32024R1689/oj#art_60').
provenance(duration_within_limit/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_groups_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed/1, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_obtained/1, 'celex:32024R1689/oj#art_60').
provenance(oversight_by_qualified_personnel/1, 'celex:32024R1689/oj#art_60').
provenance(decisions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_require/2, 'celex:32024R1689/oj#art_60').
provenance(must_inspect/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_withdraw_consent/1, 'celex:32024R1689/oj#art_60').

% References
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_60/par_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_71/par_4').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_4/unp_1/pnt_d').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_49/par_5').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#art_73').

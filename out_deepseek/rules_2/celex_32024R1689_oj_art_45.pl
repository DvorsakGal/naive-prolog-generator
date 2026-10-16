% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e9395b4dc22cd4732fd8229be6c30a80f42aec8d81d3ccc51783e3d86075fe8c
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('notified body must inform other notified bodies of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_relevant_information/2, gloss('notified body must provide relevant information to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('notified body must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

must_inform_notifying_authority(Body, issued_certificates_and_approvals) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).

must_inform_notifying_authority(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).

must_inform_notifying_authority(Body, refusal_restriction_suspension_withdrawal) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).

must_inform_notifying_authority(Body, circumstances_affecting_scope_or_conditions) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).

must_inform_notifying_authority(Body, request_for_information_from_market_surveillance) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).

must_inform_notifying_authority(Body, conformity_assessment_activities_performed) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).

must_inform_other_notified_bodies(Body, refused_suspended_withdrawn_quality_approvals) :-
    notified_body(Body).

must_inform_other_notified_bodies(Body, issued_quality_approvals_on_request) :-
    notified_body(Body).

must_inform_other_notified_bodies(Body, refused_withdrawn_suspended_restricted_certificates) :-
    notified_body(Body).

must_inform_other_notified_bodies(Body, issued_certificates_on_request) :-
    notified_body(Body).

must_provide_relevant_information(Body, negative_conformity_results) :-
    notified_body(Body).

must_provide_relevant_information(Body, positive_conformity_results_on_request) :-
    notified_body(Body).

must_safeguard_confidentiality(Body, obtained_information) :-
    notified_body(Body).

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fe77c88314d482fcb8fa1dac558009a1dd1aed7802277c6e69e85d8c7d0592fe
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('obliged entity must inform recipient of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide/2, gloss('obliged entity must provide information to recipient'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard/2, gloss('obliged entity must safeguard confidentiality of information'), source('celex:32024R1689/oj#art_45').

% Paragraph 1: Information to notifying authority
must_inform(Body, notifying_authority(issued_certificate_or_approval(Item))) :-
    notified_body(Body),
    ( Item = union_technical_documentation_assessment_certificate
    ; Item = supplement_to_certificate
    ; Item = quality_management_system_approval
    ).

must_inform(Body, notifying_authority(restriction_or_withdrawal(Decision, Item))) :-
    notified_body(Body),
    ( Decision = refusal
    ; Decision = restriction
    ; Decision = suspension
    ; Decision = withdrawal
    ),
    ( Item = union_technical_documentation_assessment_certificate
    ; Item = quality_management_system_approval
    ).

must_inform(Body, notifying_authority(circumstances_affecting_notification)) :-
    notified_body(Body).

must_inform(Body, notifying_authority(request_from_market_surveillance_authorities(Activities))) :-
    notified_body(Body),
    Activities = conformity_assessment_activities.

must_inform(Body, notifying_authority(on_request(performed_activities(Activities)))) :-
    notified_body(Body),
    ( Activities = conformity_assessment_activities_within_scope
    ; Activities = cross_border_activities
    ; Activities = subcontracting
    ; Activities = other_activity
    ).

% Paragraph 2: Information to other notified bodies
must_inform(Body, other_notified_bodies(quality_management_system_approval(Decision))) :-
    notified_body(Body),
    ( Decision = refused
    ; Decision = suspended
    ; Decision = withdrawn
    ; Decision = on_request(issued)
    ).

must_inform(Body, other_notified_bodies(technical_documentation_assessment_certificate(Decision))) :-
    notified_body(Body),
    ( Decision = refused
    ; Decision = withdrawn
    ; Decision = suspended
    ; Decision = restricted
    ; Decision = on_request(issued)
    ).

% Paragraph 3: Information to other notified bodies with similar activities
must_provide(Body, other_notified_bodies(similar_activities, conformity_assessment_results(Result))) :-
    notified_body(Body),
    ( Result = negative
    ; Result = on_request(positive)
    ).

% Paragraph 4: Confidentiality
must_safeguard(Body, confidentiality(obtained_information)) :-
    notified_body(Body).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').

% References
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

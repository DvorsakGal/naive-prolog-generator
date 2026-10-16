% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dc482c1eb0d604c04df3c14d2f0cd8f478750b7486fd61bf38ddaf9808c1224b
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('notified body must inform authority of a matter'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_bodies/2, gloss('notified body must inform other notified bodies of a matter'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_information/2, gloss('notified body must provide information to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/1, gloss('notified body must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

% Article 45(1)
must_inform(Body, issued_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).

must_inform(Body, issued_supplement(Supp)) :-
    notified_body(Body),
    supplement_to_certificate(Supp),
    issued_in_accordance_with_annex_vii(Supp).

must_inform(Body, issued_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).

must_inform(Body, refused_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).

must_inform(Body, restricted_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).

must_inform(Body, suspended_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).

must_inform(Body, withdrawn_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    issued_in_accordance_with_annex_vii(Cert).

must_inform(Body, refused_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).

must_inform(Body, restricted_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).

must_inform(Body, suspended_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).

must_inform(Body, withdrawn_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_vii(Approval).

must_inform(Body, circumstances_affecting_scope) :-
    notified_body(Body).

must_inform(Body, circumstances_affecting_conditions) :-
    notified_body(Body).

must_inform(Body, request_from_market_surveillance_authority(Request)) :-
    notified_body(Body),
    market_surveillance_authority(_Authority),
    request_for_information(Request),
    concerns_conformity_assessment_activities(Request).

must_inform(Body, conformity_assessment_activities_performed(Activities)) :-
    notified_body(Body),
    on_request(conformity_assessment_activities_performed).

must_inform(Body, other_activity_performed(Activity)) :-
    notified_body(Body),
    on_request(other_activity_performed).

% Article 45(2)
must_inform_other_bodies(Body, refused_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).

must_inform_other_bodies(Body, suspended_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).

must_inform_other_bodies(Body, withdrawn_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval).

must_inform_other_bodies(Body, issued_qms_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    on_request(issued_qms_approval).

must_inform_other_bodies(Body, refused_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).

must_inform_other_bodies(Body, withdrawn_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).

must_inform_other_bodies(Body, suspended_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).

must_inform_other_bodies(Body, restricted_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert).

must_inform_other_bodies(Body, issued_certificate(Cert)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Cert),
    on_request(issued_certificate).

must_inform_other_bodies(Body, issued_supplement(Supp)) :-
    notified_body(Body),
    supplement_to_certificate(Supp),
    on_request(issued_supplement).

% Article 45(3)
must_provide_information(Body, negative_results(Info)) :-
    notified_body(Body),
    relevant_information(Info),
    concerns_negative_conformity_assessment_results(Info).

must_provide_information(Body, positive_results(Info)) :-
    notified_body(Body),
    relevant_information(Info),
    concerns_positive_conformity_assessment_results(Info),
    on_request(positive_results).

% Article 45(4)
must_safeguard_confidentiality(Body) :-
    notified_body(Body).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_45').

% References
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

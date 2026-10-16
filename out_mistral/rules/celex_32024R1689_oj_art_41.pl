% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0925073ba7486f8fa352fcc604918a50cb90b03862cd57a88c30b1165f36c93d
% cached     : False
% title      : Common specifications
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_41').
:- pred european_standardisation_organisation/1, gloss('European standardisation organisation referred to in Regulation 1025/2012'), source('celex:32024R1689/oj#art_41').
:- pred advisory_forum/1, gloss('advisory forum referred to in Article 67'), source('celex:32024R1689/oj#art_41').
:- pred committee_art_22/1, gloss('committee referred to in Article 22 of Regulation 1025/2012'), source('celex:32024R1689/oj#art_41').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_41').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Chapter III Section 2'), source('celex:32024R1689/oj#art_41').

:- pred may_adopt_common_specifications/2, gloss('Commission may adopt implementing acts establishing common specifications for requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred requested_harmonised_standard/3, gloss('Commission requested ESO to draft harmonised standard for requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred request_not_accepted/2, gloss('request for harmonised standard not accepted by any ESO'), source('celex:32024R1689/oj#art_41').
:- pred standards_not_delivered_within_deadline/2, gloss('harmonised standards not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred standards_insufficient_fundamental_rights/2, gloss('harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred standards_do_not_comply_with_request/2, gloss('harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_standard_reference_published/2, gloss('no reference to harmonised standards published in Official Journal and none expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred consulted_advisory_forum/1, gloss('Commission consulted advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred informed_committee/2, gloss('Commission informed committee that conditions for common specifications are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_common_specifications/2, gloss('high-risk AI system or GPAI model in conformity with common specifications presumed conforming'), source('celex:32024R1689/oj#art_41').
:- pred assessed_harmonised_standard/2, gloss('Commission assessed harmonised standard proposed for publication'), source('celex:32024R1689/oj#art_41').
:- pred repealed_implementing_act/2, gloss('Commission repealed implementing act when harmonised standard reference published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_equivalent_technical_solutions/2, gloss('provider must justify technical solutions at least equivalent when not complying with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred informed_commission_detailed_explanation/3, gloss('Member State informed Commission with detailed explanation that common specification insufficient'), source('celex:32024R1689/oj#art_41').
:- pred assessed_member_state_information/2, gloss('Commission assessed information from Member State about common specification'), source('celex:32024R1689/oj#art_41').
:- pred amended_implementing_act/2, gloss('Commission amended implementing act establishing common specification'), source('celex:32024R1689/oj#art_41').

% Article 41(1): Commission may adopt common specifications when conditions (a) and (b) are fulfilled
may_adopt_common_specifications(commission, common_specification(R)) :-
    requested_harmonised_standard(commission, R, eso),
    (   request_not_accepted(commission, R)
    ;   standards_not_delivered_within_deadline(commission, R)
    ;   standards_insufficient_fundamental_rights(commission, R)
    ;   standards_do_not_comply_with_request(commission, R)
    ),
    no_harmonised_standard_reference_published(commission, R).

% Drafting duty: consult advisory forum
consulted_advisory_forum(commission) :-
    may_adopt_common_specifications(commission, common_specification(_R)).

% Article 41(2): Before preparing draft implementing act, inform committee
informed_committee(commission, committee_art_22) :-
    may_adopt_common_specifications(commission, common_specification(_R)).

% Article 41(3): Presumption of conformity
presumed_conformity_common_specifications(S, R) :-
    high_risk_ai_system(S),
    conforms_with_common_specifications(S, R).

presumed_conformity_common_specifications(M, R) :-
    general_purpose_ai_model(M),
    conforms_with_common_specifications(M, R).

% Helper: conformity with common specifications (or parts thereof)
conforms_with_common_specifications(S, common_specification(R)).

% Article 41(4): Assessment and repeal when harmonised standard published
assessed_harmonised_standard(commission, H) :-
    harmonised_standard(H),
    proposed_for_publication(H, commission).

repealed_implementing_act(commission, common_specification(R)) :-
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_same_requirements(H, R).

% Article 41(5): Provider must justify equivalent solutions when not complying
must_justify_equivalent_technical_solutions(P, common_specification(R)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ conforms_with_common_specifications(S, common_specification(R)),
    technical_solutions_at_least_equivalent(S, R).

% Article 41(6): Member State informs Commission, Commission assesses and may amend
informed_commission_detailed_explanation(MS, commission, common_specification(R)) :-
    member_state(MS),
    considers_insufficient(MS, common_specification(R)).

assessed_member_state_information(commission, common_specification(R)) :-
    informed_commission_detailed_explanation(_MS, commission, common_specification(R)).

amended_implementing_act(commission, common_specification(R)) :-
    assessed_member_state_information(commission, common_specification(R)),
    deems_amendment_appropriate(commission, common_specification(R)).

% Provenance
provenance(may_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(requested_harmonised_standard/3, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/2, 'celex:32024R1689/oj#art_41').
provenance(standards_not_delivered_within_deadline/2, 'celex:32024R1689/oj#art_41').
provenance(standards_insufficient_fundamental_rights/2, 'celex:32024R1689/oj#art_41').
provenance(standards_do_not_comply_with_request/2, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/2, 'celex:32024R1689/oj#art_41').
provenance(consulted_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(informed_committee/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(assessed_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(repealed_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_technical_solutions/2, 'celex:32024R1689/oj#art_41').
provenance(informed_commission_detailed_explanation/3, 'celex:32024R1689/oj#art_41').
provenance(assessed_member_state_information/2, 'celex:32024R1689/oj#art_41').
provenance(amended_implementing_act/2, 'celex:32024R1689/oj#art_41').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

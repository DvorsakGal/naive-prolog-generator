% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : cd06de2c04bce7b6a518c8c46fb696d44cacc25caaed2202ef643559a0150e47
% cached     : False
% title      : Common specifications
:- pred common_specification_adopted/1, gloss('common specification adopted by the Commission'), source('celex:32024R1689/oj#art_41').
:- pred common_specification_covers_requirements/1, gloss('common specification covers requirements of Section 2 or obligations of Sections 2 and 3'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_request_not_accepted/1, gloss('request for harmonised standard not accepted by any European standardisation organisation'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_not_delivered_in_time/1, gloss('harmonised standard not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_insufficiently_addresses_fundamental_rights/1, gloss('harmonised standard insufficiently addresses fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_does_not_comply_with_request/1, gloss('harmonised standard does not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_reference_published/1, gloss('reference to harmonised standard published in OJEU'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_reference_expected/1, gloss('reference to harmonised standard expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred must_consult_advisory_forum/1, gloss('Commission must consult advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_committee/1, gloss('Commission must inform committee before preparing draft implementing act'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_through_common_specification/1, gloss('system or model presumed conformant through common specification'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal_common_specification/1, gloss('Commission must repeal common specification when harmonised standard published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_equivalent_technical_solution/2, gloss('provider must justify equivalent technical solution when not complying with common specification'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_commission_of_shortcoming/2, gloss('Member State must inform Commission of common specification shortcoming'), source('celex:32024R1689/oj#art_41').

% Paragraph 1 – conditions for adopting common specifications
common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_request_not_accepted(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).

common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_not_delivered_in_time(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).

common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_insufficiently_addresses_fundamental_rights(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).

common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_does_not_comply_with_request(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).

must_consult_advisory_forum(CS) :-
    common_specification_adopted(CS).

% Paragraph 2 – Commission must inform committee
must_inform_committee(CS) :-
    common_specification_adopted(CS).

% Paragraph 3 – presumption of conformity
presumed_conformity_through_common_specification(S) :-
    ( high_risk_ai_system(S) ; general_purpose_ai_model(S) ),
    common_specification_covers_requirements(S).

% Paragraph 4 – repeal when harmonised standard published
must_repeal_common_specification(CS) :-
    common_specification(CS),
    harmonised_standard_reference_published(CS).

% Paragraph 5 – justification for equivalent technical solution
must_justify_equivalent_technical_solution(Provider, S) :-
    provider(Provider),
    ( high_risk_ai_system(S) ; general_purpose_ai_model(S) ),
    common_specification_covers_requirements(S),
    \+ presumed_conformity_through_common_specification(S).

% Paragraph 6 – Member State informs Commission of shortcoming
must_inform_commission_of_shortcoming(MemberState, CS) :-
    common_specification(CS),
    \+ common_specification_covers_requirements(CS).

% Provenance
provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_through_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_technical_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_of_shortcoming/2, 'celex:32024R1689/oj#art_41').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

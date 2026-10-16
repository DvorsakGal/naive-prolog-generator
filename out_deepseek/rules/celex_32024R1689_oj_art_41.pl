% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a7559a149e03be5cc7e113c8209df107b3fe100cee92b830e0a77ed1f820c2b9
% cached     : False
% title      : Common specifications
:- pred common_specification/1, gloss('common specification adopted by the Commission'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_request_not_accepted/1, gloss('request for harmonised standard not accepted by any European standardisation organisation'), source('celex:32024R1689/oj#art_41/par_1/a/i').
:- pred harmonised_standard_not_delivered_on_time/1, gloss('harmonised standard not delivered within deadline'), source('celex:32024R1689/oj#art_41/par_1/a/ii').
:- pred harmonised_standard_insufficiently_addresses_fundamental_rights/1, gloss('harmonised standard insufficiently addresses fundamental rights concerns'), source('celex:32024R1689/oj#art_41/par_1/a/iii').
:- pred harmonised_standard_does_not_comply_with_request/1, gloss('harmonised standard does not comply with the request'), source('celex:32024R1689/oj#art_41/par_1/a/iv').
:- pred harmonised_standard_reference_published/1, gloss('reference to harmonised standard published in OJEU'), source('celex:32024R1689/oj#art_41/par_1/b').
:- pred harmonised_standard_reference_expected/1, gloss('reference to harmonised standard expected within reasonable period'), source('celex:32024R1689/oj#art_41/par_1/b').
:- pred must_consult_advisory_forum(Commission, common_specification), gloss('Commission must consult advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41/par_1/unp_2').
:- pred must_inform_committee(Commission, conditions_fulfilled), gloss('Commission must inform committee that conditions for common specifications are fulfilled'), source('celex:32024R1689/oj#art_41/par_2').
:- pred conformity_with_common_specification/1, gloss('high-risk AI system or general-purpose AI model in conformity with common specifications'), source('celex:32024R1689/oj#art_41/par_3').
:- pred presumed_conformity_with_requirements/1, gloss('presumed to be in conformity with requirements or obligations'), source('celex:32024R1689/oj#art_41/par_3').
:- pred must_repeal_implementing_acts(Commission, harmonised_standard), gloss('Commission must repeal implementing acts when harmonised standard reference published'), source('celex:32024R1689/oj#art_41/par_4').
:- pred must_justify_technical_solutions(Provider, common_specification), gloss('provider must justify technical solutions meeting requirements at least equivalently'), source('celex:32024R1689/oj#art_41/par_5').
:- pred must_inform_commission(MemberState, common_specification_shortcoming), gloss('Member State must inform Commission if common specification does not entirely meet requirements'), source('celex:32024R1689/oj#art_41/par_6').

% Paragraph 1: conditions for adopting common specifications
common_specification_adoption_conditions_fulfilled(Requirements) :-
    harmonised_standard_request_made(Requirements),
    (
        harmonised_standard_request_not_accepted(Requirements)
    ;
        harmonised_standard_not_delivered_on_time(Requirements)
    ;
        harmonised_standard_insufficiently_addresses_fundamental_rights(Requirements)
    ;
        harmonised_standard_does_not_comply_with_request(Requirements)
    ),
    \+ harmonised_standard_reference_published(Requirements),
    \+ harmonised_standard_reference_expected(Requirements).

% Paragraph 3: presumption of conformity
presumed_conformity_with_requirements(System) :-
    high_risk_ai_system_or_general_purpose_ai_model(System),
    conformity_with_common_specification(System).

high_risk_ai_system_or_general_purpose_ai_model(S) :-
    ai_system(S),
    high_risk(S).
high_risk_ai_system_or_general_purpose_ai_model(M) :-
    general_purpose_ai_model(M).

% Paragraph 5: justification for non-compliance
must_justify_technical_solutions(Provider, Spec) :-
    provider(Provider),
    common_specification(Spec),
    \+ conformity_with_common_specification(System),
    ai_system(System),
    provider_of(Provider, System).

provider_of(Provider, System) :-
    provider(Provider),
    ai_system(System).

% Provenance
provenance(common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_request_not_accepted/1, 'celex:32024R1689/oj#art_41/par_1/a/i').
provenance(harmonised_standard_not_delivered_on_time/1, 'celex:32024R1689/oj#art_41/par_1/a/ii').
provenance(harmonised_standard_insufficiently_addresses_fundamental_rights/1, 'celex:32024R1689/oj#art_41/par_1/a/iii').
provenance(harmonised_standard_does_not_comply_with_request/1, 'celex:32024R1689/oj#art_41/par_1/a/iv').
provenance(harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41/par_1/b').
provenance(harmonised_standard_reference_expected/1, 'celex:32024R1689/oj#art_41/par_1/b').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41/par_1/unp_2').
provenance(must_inform_committee/2, 'celex:32024R1689/oj#art_41/par_2').
provenance(conformity_with_common_specification/1, 'celex:32024R1689/oj#art_41/par_3').
provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_41/par_3').
provenance(must_repeal_implementing_acts/2, 'celex:32024R1689/oj#art_41/par_4').
provenance(must_justify_technical_solutions/2, 'celex:32024R1689/oj#art_41/par_5').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41/par_6').
provenance(common_specification_adoption_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41/par_1').
provenance(high_risk_ai_system_or_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_41/par_3').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

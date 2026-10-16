% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c4ffc051b4598a4f2e6c79fd5d221a2b3b64613ab095de1ef02594ed970a3a43
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_development/2, gloss('actor encourages development of benchmarks and measurement methodologies'), source('reconciled').
:- pred must_facilitate_drawing_up_codes_of_conduct/2, gloss('actor facilitates drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_intended_for_voluntary_application/1, gloss('codes of conduct intended to foster voluntary application of requirements to AI systems other than high-risk AI systems'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_covering_specific_requirements/1, gloss('codes of conduct concerning voluntary application of specific requirements to all AI systems'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_drawn_up_by/2, gloss('codes of conduct drawn up by actor'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct_may_cover_multiple_systems/1, gloss('codes of conduct may cover one or more AI systems taking into account similarity of intended purpose'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account_sme_interests/2, gloss('actor takes into account specific interests and needs of SMEs including start-ups'), source('celex:32024R1689/oj#art_95').

must_encourage_development(ai_office, codes_of_conduct_for_voluntary_application).
must_encourage_development(member_state, codes_of_conduct_for_voluntary_application).

must_facilitate_drawing_up_codes_of_conduct(ai_office, codes_of_conduct_for_voluntary_application).
must_facilitate_drawing_up_codes_of_conduct(member_state, codes_of_conduct_for_voluntary_application).

must_facilitate_drawing_up_codes_of_conduct(ai_office, codes_of_conduct_covering_specific_requirements).
must_facilitate_drawing_up_codes_of_conduct(member_state, codes_of_conduct_covering_specific_requirements).

codes_of_conduct_intended_for_voluntary_application(C) :-
    codes_of_conduct(C),
    intended_to_foster_voluntary_application(C),
    applies_to_ai_systems_other_than_high_risk(C).

codes_of_conduct_covering_specific_requirements(C) :-
    codes_of_conduct(C),
    voluntary_application_of_specific_requirements(C),
    applies_to_all_ai_systems(C),
    based_on_clear_objectives_and_key_performance_indicators(C).

codes_of_conduct_drawn_up_by(C, provider).
codes_of_conduct_drawn_up_by(C, deployer).
codes_of_conduct_drawn_up_by(C, organisation_representing_providers_or_deployers).

codes_of_conduct_may_cover_multiple_systems(C) :-
    codes_of_conduct(C),
    covers_one_or_more_ai_systems(C),
    takes_into_account_similarity_of_intended_purpose(C).

must_take_into_account_sme_interests(ai_office, codes_of_conduct).
must_take_into_account_sme_interests(member_state, codes_of_conduct).

must_take_into_account_sme_interests(Actor, codes_of_conduct) :-
    Actor = ai_office,
    specific_interests_and_needs_of_smes_including_startups.

must_take_into_account_sme_interests(Actor, codes_of_conduct) :-
    Actor = member_state,
    specific_interests_and_needs_of_smes_including_startups.

provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_drawing_up_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_intended_for_voluntary_application/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_covering_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_may_cover_multiple_systems/1, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

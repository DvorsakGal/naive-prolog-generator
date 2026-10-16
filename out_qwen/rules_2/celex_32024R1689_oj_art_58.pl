% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : b7fd66455540d3f8e49b17cae7236720bccfdad23a71b6449846f6d35f75f446
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts_for_sandbox/1, gloss('Commission obligation to adopt implementing acts for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred sandbox_implementing_act_covers/2, gloss('implementing act covers specific aspect of AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred must_ensure_sandbox_accessibility/2, gloss('implementing acts must ensure accessibility features for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_prospective_provider_to_service/2, gloss('obligation to direct prospective providers to pre-deployment or value-adding services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_testing_terms_in_sandbox/2, gloss('national competent authority must agree terms and conditions for testing in real world conditions within sandbox'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate_on_sandbox_testing/2, gloss('national competent authorities must cooperate to ensure consistent practices for sandbox testing'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts_for_sandbox(commission) :-
    ai_regulatory_sandbox(_S).

sandbox_implementing_act_covers(Act, eligibility_and_selection_criteria) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

sandbox_implementing_act_covers(Act, procedures_for_participation) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

sandbox_implementing_act_covers(Act, terms_and_conditions_for_participants) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, open_to_eligible_providers) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, decision_within_months(3)) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, broad_and_equal_access) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, free_of_charge_for_smes) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, facilitates_conformity_assessment_compliance) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, facilitates_ecosystem_involvement) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, simple_administrative_requirements) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, limited_participation_period) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_ensure_sandbox_accessibility(Act, facilitates_testing_infrastructure) :-
    must_adopt_implementing_acts_for_sandbox(commission),
    implementing_act(Act).

must_direct_prospective_provider_to_service(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    ai_regulatory_sandbox(_S).

must_agree_testing_terms_in_sandbox(Authority, Testing) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Testing),
    ai_regulatory_sandbox(_S).

must_cooperate_on_sandbox_testing(Authority1, Authority2) :-
    national_competent_authority(Authority1),
    national_competent_authority(Authority2),
    testing_in_real_world_conditions(_T),
    ai_regulatory_sandbox(_S).

provenance(must_adopt_implementing_acts_for_sandbox/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_implementing_act_covers/2, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_sandbox_accessibility/2, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_provider_to_service/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms_in_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_on_sandbox_testing/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

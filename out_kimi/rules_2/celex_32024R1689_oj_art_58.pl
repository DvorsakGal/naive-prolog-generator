% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : df94054e38ab3a0c731b19bdbf845c53ca430970d6a81608b030d7453dc64128
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts specifying detailed arrangements'), source('celex:32024R1689/oj#art_58/par_1').
:- pred implementing_act_issues/1, gloss('common principles covered by implementing acts'), source('celex:32024R1689/oj#art_58/par_1').
:- pred eligibility_and_selection_criteria/1, gloss('criteria for participation in AI regulatory sandbox'), source('celex:32024R1689/oj#art_58/par_1_a').
:- pred sandbox_procedures/1, gloss('procedures for application, participation, monitoring, exiting and termination'), source('celex:32024R1689/oj#art_58/par_1_b').
:- pred terms_and_conditions_participants/1, gloss('terms and conditions applicable to participants'), source('celex:32024R1689/oj#art_58/par_1_c').
:- pred sandbox_ensures/1, gloss('requirement that implementing acts ensure specified outcome'), source('celex:32024R1689/oj#art_58/par_2').
:- pred transparent_and_fair_criteria/1, gloss('eligibility and selection criteria are transparent and fair'), source('celex:32024R1689/oj#art_58/par_2_a').
:- pred decision_within_three_months/2, gloss('authority informs applicant of decision within three months'), source('celex:32024R1689/oj#art_58/par_2_a').
:- pred broad_and_equal_access/1, gloss('AI regulatory sandboxes allow broad and equal access'), source('celex:32024R1689/oj#art_58/par_2_b').
:- def sandbox_partnership_permitted/1, gloss('providers may submit applications in partnerships'), source('celex:32024R1689/oj#art_58/par_2_b').
:- pred flexibility_for_national_authorities/1, gloss('support flexibility for national competent authorities'), source('celex:32024R1689/oj#art_58/par_2_c').
:- pred free_of_charge_for_smes/1, gloss('access free of charge for SMEs including start-ups'), source('celex:32024R1689/oj#art_58/par_2_d').
:- pred exceptional_costs_recoverable/2, gloss('exceptional costs may be recovered fairly and proportionately'), source('celex:32024R1689/oj#art_58/par_2_d').
:- pred facilitates_conformity_assessment/1, gloss('facilitates compliance with conformity assessment obligations'), source('celex:32024R1689/oj#art_58/par_2_e').
:- pred facilitates_voluntary_codes_of_conduct/1, gloss('facilitates voluntary application of codes of conduct'), source('celex:32024R1689/oj#art_58/par_2_e').
:- pred facilitates_ecosystem_involvement/1, gloss('facilitates involvement of other relevant actors in AI ecosystem'), source('celex:32024R1689/oj#art_58/par_2_f').
:- pred simple_procedures/1, gloss('procedures are simple, easily intelligible and clearly communicated'), source('celex:32024R1689/oj#art_58/par_2_g').
:- pred streamlined_across_union/1, gloss('procedures streamlined across the Union'), source('celex:32024R1689/oj#art_58/par_2_g').
:- pred mutual_recognition_across_union/1, gloss('participation mutually and uniformly recognised across the Union'), source('celex:32024R1689/oj#art_58/par_2_g').
:- pred appropriate_participation_period/2, gloss('participation limited to appropriate period extendable by authority'), source('celex:32024R1689/oj#art_58/par_2_h').
:- pred facilitates_testing_tools/1, gloss('facilitates development of tools and infrastructure for testing'), source('celex:32024R1689/oj#art_58/par_2_i').
:- pred directed_to_pre_deployment_services/2, gloss('prospective providers directed to pre-deployment services'), source('celex:32024R1689/oj#art_58/par_3').
:- pred testing_in_real_world_conditions_supervised/2, gloss('testing in real world conditions supervised within sandbox framework'), source('celex:32024R1689/oj#art_58/par_4').
:- pred agree_terms_and_conditions/2, gloss('authority specifically agrees terms and conditions with participants'), source('celex:32024R1689/oj#art_58/par_4').
:- pred appropriate_safeguards_agreed/2, gloss('appropriate safeguards agreed with participants'), source('celex:32024R1689/oj#art_58/par_4').
:- pred cooperate_for_consistent_practices/2, gloss('authority cooperates with other authorities for consistent practices'), source('celex:32024R1689/oj#art_58/par_4').

must_adopt_implementing_acts(commission, detailed_arrangements(ai_regulatory_sandbox)).

implementing_act_issues(eligibility_and_selection_criteria(_)).
implementing_act_issues(sandbox_procedures(_)).
implementing_act_issues(terms_and_conditions_participants(_)).

sandbox_ensures(open_to_any_fulfilling_criteria(P)) :-
    applying_provider_or_prospective_provider(P),
    fulfils_eligibility_and_selection_criteria(P),
    transparent_and_fair_criteria(ai_regulatory_sandbox),
    decision_within_three_months(_Authority, P).

sandbox_ensures(broad_and_equal_access(ai_regulatory_sandbox)).

sandbox_partnership_permitted(P) :-
    provider(P).
sandbox_partnership_permitted(P) :-
    prospective_provider(P).

sandbox_ensures(flexibility_for_national_authorities(ai_regulatory_sandbox)).

sandbox_ensures(free_of_charge_for_smes(P)) :-
    sme_or_start_up(P),
    participating_in(ai_regulatory_sandbox, P).

exceptional_costs_recoverable(Authority, Costs) :-
    national_competent_authority(Authority),
    fair_and_proportionate(Costs).

sandbox_ensures(facilitates_conformity_assessment(P)) :-
    provider(P).
sandbox_ensures(facilitates_conformity_assessment(P)) :-
    prospective_provider(P).

sandbox_ensures(facilitates_voluntary_codes_of_conduct(P)) :-
    provider(P).
sandbox_ensures(facilitates_voluntary_codes_of_conduct(P)) :-
    prospective_provider(P).

sandbox_ensures(facilitates_ecosystem_involvement(ai_regulatory_sandbox)).

sandbox_ensures(simple_procedures(ai_regulatory_sandbox)).

sandbox_ensures(streamlined_across_union(ai_regulatory_sandbox)).

sandbox_ensures(mutual_recognition_across_union(ai_regulatory_sandbox)).

sandbox_ensures(appropriate_participation_period(P, Period)) :-
    participating_in(ai_regulatory_sandbox, P),
    appropriate_to_complexity_and_scale(Period, P),
    extendable_by_authority(Period, _Authority).

sandbox_ensures(facilitates_testing_tools(ai_regulatory_sandbox)).

directed_to_pre_deployment_services(P, guidance) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).

directed_to_pre_deployment_services(P, standardisation_help) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).

directed_to_pre_deployment_services(P, testing_facilities) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).

directed_to_pre_deployment_services(P, digital_innovation_hubs) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).

directed_to_pre_deployment_services(P, centres_of_excellence) :-
    prospective_provider(P),
    participating_in(ai_regulatory_sandbox, P),
    sme_or_start_up(P).

testing_in_real_world_conditions_supervised(Authority, Testing) :-
    national_competent_authority(Authority),
    authorising(Authority, Testing),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox).

agree_terms_and_conditions(Authority, Participants) :-
    testing_in_real_world_conditions_supervised(Authority, Testing),
    participants(Testing, Participants).

appropriate_safeguards_agreed(Authority, Participants) :-
    agree_terms_and_conditions(Authority, Participants),
    purpose(protection(fundamental_rights_health_safety)).

cooperate_for_consistent_practices(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority,
    testing_in_real_world_conditions_supervised(Authority, _Testing).

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(implementing_act_issues/1, 'celex:32024R1689/oj#art_58/par_1').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58/par_1_a').
provenance(sandbox_procedures/1, 'celex:32024R1689/oj#art_58/par_1_b').
provenance(terms_and_conditions_participants/1, 'celex:32024R1689/oj#art_58/par_1_c').
provenance(sandbox_ensures/1, 'celex:32024R1689/oj#art_58/par_2').
provenance(transparent_and_fair_criteria/1, 'celex:32024R1689/oj#art_58/par_2_a').
provenance(decision_within_three_months/2, 'celex:32024R1689/oj#art_58/par_2_a').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58/par_2_b').
provenance(sandbox_partnership_permitted/1, 'celex:32024R1689/oj#art_58/par_2_b').
provenance(flexibility_for_national_authorities/1, 'celex:32024R1689/oj#art_58/par_2_c').
provenance(free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58/par_2_d').
provenance(exceptional_costs_recoverable/2, 'celex:32024R1689/oj#art_58/par_2_d').
provenance(facilitates_conformity_assessment/1, 'celex:32024R1689/oj#art_58/par_2_e').
provenance(facilitates_voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_58/par_2_e').
provenance(facilitates_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58/par_2_f').
provenance(simple_procedures/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(streamlined_across_union/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58/par_2_g').
provenance(appropriate_participation_period/2, 'celex:32024R1689/oj#art_58/par_2_h').
provenance(facilitates_testing_tools/1, 'celex:32024R1689/oj#art_58/par_2_i').
provenance(directed_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58/par_3').
provenance(testing_in_real_world_conditions_supervised/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(agree_terms_and_conditions/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(appropriate_safeguards_agreed/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(cooperate_for_consistent_practices/2, 'celex:32024R1689/oj#art_58/par_4').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 908073abd60b9edb54f07bb0a8f550239a33726bc34bfb638b93a9f0fa419df1
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/2, gloss('Commission shall adopt implementing acts specifying detailed arrangements'), source('celex:32024R1689/oj#art_58/par_1').
:- pred implementing_acts_content/2, gloss('content that implementing acts shall include'), source('celex:32024R1689/oj#art_58/par_1').
:- pred common_principle/2, gloss('common principle on a specific issue'), source('celex:32024R1689/oj#art_58/par_1').
:- pred eligibility_and_selection_criteria/1, gloss('criteria for participation in AI regulatory sandbox'), source('celex:32024R1689/oj#art_58/par_1(a)').
:- pred application_procedures/1, gloss('procedures for application, participation, monitoring, exiting and termination'), source('celex:32024R1689/oj#art_58/par_1(b)').
:- pred terms_and_conditions/1, gloss('terms and conditions applicable to participants'), source('celex:32024R1689/oj#art_58/par_1(c)').
:- pred examination_procedure/1, gloss('examination procedure for adopting implementing acts'), source('celex:32024R1689/oj#art_58/par_1').
:- pred implementing_acts_ensure/2, gloss('requirement that implementing acts shall ensure'), source('celex:32024R1689/oj#art_58/par_2').
:- pred open_to_applicants/1, gloss('sandboxes open to applying providers or prospective providers fulfilling criteria'), source('celex:32024R1689/oj#art_58/par_2(a)').
:- transparent_and_fair/1, gloss('eligibility and selection criteria are transparent and fair'), source('celex:32024R1689/oj#art_58/par_2(a)').
:- pred inform_applicants_within_period/1, gloss('national competent authorities inform applicants within specified period'), source('celex:32024R1689/oj#art_58/par_2(a)').
:- pred broad_and_equal_access/1, gloss('sandboxes allow broad and equal access and keep up with demand'), source('celex:32024R1689/oj#art_58/par_2(b)').
:- pred partnership_applications_permitted/1, gloss('providers may submit applications in partnerships'), source('celex:32024R1689/oj#art_58/par_2(b)').
:- pred support_flexibility/1, gloss('arrangements support flexibility for national competent authorities'), source('celex:32024R1689/oj#art_58/par_2(c)').
:- pred free_of_charge_for_smes/1, gloss('access free of charge for SMEs including start-ups'), source('celex:32024R1689/oj#art_58/par_2(d)').
:- pred exceptional_costs_recovery/1, gloss('exceptional costs may be recovered fairly and proportionately'), source('celex:32024R1689/oj#art_58/par_2(d)').
:- pred facilitate_compliance/1, gloss('sandboxes facilitate compliance with conformity assessment and codes of conduct'), source('celex:32024R1689/oj#art_58/par_2(e)').
:- pred facilitate_ecosystem_involvement/1, gloss('sandboxes facilitate involvement of other relevant actors'), source('celex:32024R1689/oj#art_58/par_2(f)').
:- pred simple_procedures/1, gloss('procedures are simple, easily intelligible and clearly communicated'), source('celex:32024R1689/oj#art_58/par_2(g)').
:- pred mutual_recognition/1, gloss('participation mutually and uniformly recognised with same legal effects across Union'), source('celex:32024R1689/oj#art_58/par_2(g)').
:- pred limited_participation_period/1, gloss('participation limited to appropriate period extendable by authority'), source('celex:32024R1689/oj#art_58/par_2(h)').
:- pred facilitate_testing_tools/1, gloss('sandboxes facilitate development of testing and assessment tools'), source('celex:32024R1689/oj#art_58/par_2(i)').
:- pred must_direct_to_services/2, gloss('prospective providers shall be directed to pre-deployment and value-adding services'), source('celex:32024R1689/oj#art_58/par_3').
:- pred must_agree_terms_and_conditions/2, gloss('authorities shall specifically agree terms and conditions with participants'), source('celex:32024R1689/oj#art_58/par_4').
:- pred must_cooperate_for_consistency/1, gloss('authorities shall cooperate with other authorities for consistent practices'), source('celex:32024R1689/oj#art_58/par_4').

must_adopt_implementing_acts(commission, ai_regulatory_sandbox).

implementing_acts_content(ai_regulatory_sandbox, common_principle(eligibility_and_selection_criteria)).
implementing_acts_content(ai_regulatory_sandbox, common_principle(application_procedures)).
implementing_acts_content(ai_regulatory_sandbox, common_principle(terms_and_conditions)).

examination_procedure(art_98_par_2).

implementing_acts_ensure(ai_regulatory_sandbox, open_to_applicants).
implementing_acts_ensure(ai_regulatory_sandbox, broad_and_equal_access).
implementing_acts_ensure(ai_regulatory_sandbox, support_flexibility).
implementing_acts_ensure(ai_regulatory_sandbox, free_of_charge_for_smes).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_compliance).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_ecosystem_involvement).
implementing_acts_ensure(ai_regulatory_sandbox, simple_procedures).
implementing_acts_ensure(ai_regulatory_sandbox, limited_participation_period).
implementing_acts_ensure(ai_regulatory_sandbox, facilitate_testing_tools).

open_to_applicants(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    applying_provider_or_prospective_provider(_P),
    fulfils_eligibility_and_selection_criteria(_P, Sandbox).

transparent_and_fair(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    eligibility_and_selection_criteria(Sandbox).

inform_applicants_within_period(Authority, Applicant) :-
    national_competent_authority(Authority),
    applying_provider_or_prospective_provider(Applicant),
    within(days(90), decision(Authority, application(Applicant))).

broad_and_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

partnership_applications_permitted(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

support_flexibility(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

free_of_charge_for_smes(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    sme_or_start_up(_Participant).

exceptional_costs_recovery(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    exceptional_costs(_Costs),
    national_competent_authority(_Authority).

facilitate_compliance(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    learning_outcomes(Sandbox, _Outcomes),
    provider_or_prospective_provider(_P).

facilitate_ecosystem_involvement(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

simple_procedures(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

mutual_recognition(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_by_member_state_or_edps(Sandbox).

limited_participation_period(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    project_complexity_and_scale(_Project, _Complexity, _Scale),
    extendable_by_authority(period(_Project), _Authority).

facilitate_testing_tools(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

must_direct_to_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider_in_sandbox(ProspectiveProvider, _Sandbox),
    sme_or_start_up(ProspectiveProvider),
    relevant_pre_deployment_services(_Services).

must_agree_terms_and_conditions(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(_Testing),
    supervised_within_sandbox(_Testing, _Sandbox),
    ai_regulatory_sandbox(_Sandbox),
    participant(Participant, _Testing),
    terms_and_conditions(_Testing, _Safeguards),
    appropriate_safeguards(_Safeguards),
    protect_fundamental_rights_health_safety(_Safeguards).

must_cooperate_for_consistency(Authority) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(_Testing),
    supervised_within_sandbox(_Testing, _Sandbox),
    ai_regulatory_sandbox(_Sandbox),
    cooperate_with_other_authorities(Authority, _OtherAuthority),
    national_competent_authority(_OtherAuthority).

provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(implementing_acts_content/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(common_principle/2, 'celex:32024R1689/oj#art_58/par_1').
provenance(eligibility_and_selection_criteria/1, 'celex:32024R1689/oj#art_58/par_1(a)').
provenance(application_procedures/1, 'celex:32024R1689/oj#art_58/par_1(b)').
provenance(terms_and_conditions/1, 'celex:32024R1689/oj#art_58/par_1(c)').
provenance(examination_procedure/1, 'celex:32024R1689/oj#art_58/par_1').
provenance(implementing_acts_ensure/2, 'celex:32024R1689/oj#art_58/par_2').
provenance(open_to_applicants/1, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(transparent_and_fair/1, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(inform_applicants_within_period/2, 'celex:32024R1689/oj#art_58/par_2(a)').
provenance(broad_and_equal_access/1, 'celex:32024R1689/oj#art_58/par_2(b)').
provenance(partnership_applications_permitted/1, 'celex:32024R1689/oj#art_58/par_2(b)').
provenance(support_flexibility/1, 'celex:32024R1689/oj#art_58/par_2(c)').
provenance(free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58/par_2(d)').
provenance(exceptional_costs_recovery/1, 'celex:32024R1689/oj#art_58/par_2(d)').
provenance(facilitate_compliance/1, 'celex:32024R1689/oj#art_58/par_2(e)').
provenance(facilitate_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58/par_2(f)').
provenance(simple_procedures/1, 'celex:32024R1689/oj#art_58/par_2(g)').
provenance(mutual_recognition/1, 'celex:32024R1689/oj#art_58/par_2(g)').
provenance(limited_participation_period/1, 'celex:32024R1689/oj#art_58/par_2(h)').
provenance(facilitate_testing_tools/1, 'celex:32024R1689/oj#art_58/par_2(i)').
provenance(must_direct_to_services/2, 'celex:32024R1689/oj#art_58/par_3').
provenance(must_agree_terms_and_conditions/2, 'celex:32024R1689/oj#art_58/par_4').
provenance(must_cooperate_for_consistency/1, 'celex:32024R1689/oj#art_58/par_4').

references('celex:32024R1689/oj#art_58/par_1', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58/par_2', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58/par_2(e)', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58/par_2(e)', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58/par_3', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58/par_4', 'celex:32024R1689/oj#art_58').

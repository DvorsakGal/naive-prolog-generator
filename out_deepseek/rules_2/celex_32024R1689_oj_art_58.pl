% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : b4b93e422c00fa401aba26d5695fe52e6a2c086c2485c2796ffd1ab8edaa5282
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred must_adopt_implementing_acts/1, gloss('Commission must adopt implementing acts for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred must_include_common_principles/1, gloss('implementing acts must include common principles on specified issues'), source('celex:32024R1689/oj#art_58').
:- pred must_ensure_open_access/1, gloss('implementing acts must ensure sandboxes are open to qualifying applicants'), source('celex:32024R1689/oj#art_58').
:- pred must_ensure_broad_access/1, gloss('implementing acts must ensure broad and equal access to sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred must_support_flexibility/1, gloss('implementing acts must support flexibility for national authorities'), source('celex:32024R1689/oj#art_58').
:- pred must_ensure_free_access_for_smes/1, gloss('implementing acts must ensure free access for SMEs and start-ups'), source('celex:32024R1689/oj#art_58').
:- pred must_facilitate_compliance/1, gloss('implementing acts must facilitate compliance with conformity assessment'), source('celex:32024R1689/oj#art_58').
:- pred must_facilitate_involvement/1, gloss('implementing acts must facilitate involvement of relevant actors'), source('celex:32024R1689/oj#art_58').
:- pred must_ensure_simple_procedures/1, gloss('implementing acts must ensure simple and streamlined procedures'), source('celex:32024R1689/oj#art_58').
:- pred must_limit_participation_period/1, gloss('implementing acts must limit participation period appropriately'), source('celex:32024R1689/oj#art_58').
:- pred must_facilitate_tools_development/1, gloss('implementing acts must facilitate development of testing tools'), source('celex:32024R1689/oj#art_58').
:- pred must_direct_to_pre_deployment_services/2, gloss('prospective providers must be directed to pre-deployment services'), source('celex:32024R1689/oj#art_58').
:- pred must_agree_terms_for_real_world_testing/2, gloss('national competent authorities must agree terms for real-world testing in sandbox'), source('celex:32024R1689/oj#art_58').

must_adopt_implementing_acts(Commission) :-
    ai_office(Commission).

must_include_common_principles(Acts) :-
    must_adopt_implementing_acts(_),
    implementing_acts(Acts).

must_ensure_open_access(Acts) :-
    must_include_common_principles(Acts).

must_ensure_broad_access(Acts) :-
    must_include_common_principles(Acts).

must_support_flexibility(Acts) :-
    must_include_common_principles(Acts).

must_ensure_free_access_for_smes(Acts) :-
    must_include_common_principles(Acts).

must_facilitate_compliance(Acts) :-
    must_include_common_principles(Acts).

must_facilitate_involvement(Acts) :-
    must_include_common_principles(Acts).

must_ensure_simple_procedures(Acts) :-
    must_include_common_principles(Acts).

must_limit_participation_period(Acts) :-
    must_include_common_principles(Acts).

must_facilitate_tools_development(Acts) :-
    must_include_common_principles(Acts).

must_direct_to_pre_deployment_services(ProspectiveProvider, Services) :-
    provider(ProspectiveProvider),
    ai_regulatory_sandbox(Sandbox),
    pre_deployment_services(Services).

must_agree_terms_for_real_world_testing(Authority, testing_in_real_world_conditions(Testing)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(Testing, Sandbox),
    testing_in_real_world_conditions(Testing).

provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_58').
provenance(must_include_common_principles/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_open_access/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_broad_access/1, 'celex:32024R1689/oj#art_58').
provenance(must_support_flexibility/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_free_access_for_smes/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_simple_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(must_limit_participation_period/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_tools_development/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_real_world_testing/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

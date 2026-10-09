% unit       : celex:32024R1689/oj#art_58
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 6dbc84acad99910b33b960e2b5fcc23220c0e26b84527585fc1a76f20c0cb2b4
% cached     : False
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
:- pred ai_regulatory_sandbox/1, gloss('AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred required_open_access/1, gloss('open access required for sandbox'), source('celex:32024R1689/oj#art_58').
:- pred required_broad_equal_access/1, gloss('broad and equal access required for sandbox'), source('celex:32024R1689/oj#art_58').
:- pred required_flexibility_for_nca/1, gloss('flexibility for national competent authorities required'), source('celex:32024R1689/oj#art_58').
:- pred required_free_of_charge_for_smes/1, gloss('free of charge for SMEs required'), source('celex:32024R1689/oj#art_58').
:- pred required_facilitate_compliance/1, gloss('facilitate compliance with conformity assessment obligations'), source('celex:32024R1689/oj#art_58').
:- pred required_facilitate_involvement/1, gloss('facilitate involvement of ecosystem actors'), source('celex:32024R1689/oj#art_58').
:- pred required_simple_intelligible_process/1, gloss('simple, intelligible and clear processes required'), source('celex:32024R1689/oj#art_58').
:- pred required_limited_period/1, gloss('limited participation period required'), source('celex:32024R1689/oj#art_58').
:- pred required_facilitate_development_of_tools/1, gloss('facilitate development of testing and benchmarking tools'), source('celex:32024R1689/oj#art_58').
:- pred prospective_provider/1, gloss('provider or prospective provider of an AI system'), source('celex:32024R1689/oj#art_58').
:- pred must_direct/2, gloss('must direct provider to a service'), source('celex:32024R1689/oj#art_58').
:- pred must_agree/2, gloss('must agree terms and conditions with participants'), source('celex:32024R1689/oj#art_58').
:- pred must_cooperate/2, gloss('must cooperate with other national competent authorities'), source('celex:32024R1689/oj#art_58').

must_adopt(commission, implementing_act(details_for_ai_regulatory_sandboxes)).

required_open_access(S) :-
    ai_regulatory_sandbox(S).

required_broad_equal_access(S) :-
    ai_regulatory_sandbox(S).

required_flexibility_for_nca(S) :-
    ai_regulatory_sandbox(S).

required_free_of_charge_for_smes(S) :-
    ai_regulatory_sandbox(S).

required_facilitate_compliance(S) :-
    ai_regulatory_sandbox(S).

required_facilitate_involvement(S) :-
    ai_regulatory_sandbox(S).

required_simple_intelligible_process(S) :-
    ai_regulatory_sandbox(S).

required_limited_period(S) :-
    ai_regulatory_sandbox(S).

required_facilitate_development_of_tools(S) :-
    ai_regulatory_sandbox(S).

must_direct(P, service(guidance_on_implementation)) :-
    prospective_provider(P).

must_agree(N, terms_and_conditions(testing_in_real_world_conditions)) :-
    national_competent_authority(N).

must_cooperate(N, other_nca) :-
    national_competent_authority(N).

provenance(must_adopt/2, 'celex:32024R1689/oj#art_58').
provenance(required_open_access/1, 'celex:32024R1689/oj#art_58').
provenance(required_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(required_flexibility_for_nca/1, 'celex:32024R1689/oj#art_58').
provenance(required_free_of_charge_for_smes/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(required_simple_intelligible_process/1, 'celex:32024R1689/oj#art_58').
provenance(required_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').

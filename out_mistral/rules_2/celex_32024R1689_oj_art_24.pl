% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 2583b2431fd8d1c62d97fd470642dad54ac253ae092de864ddb9248327a6cb43
% cached     : False
% title      : Obligations of distributors
:- pred must_verify_before_making_available/2, gloss('distributor verifies CE marking, EU declaration of conformity, instructions for use, and provider/importer compliance before making high-risk AI system available on market'), source('celex:32024R1689/oj#art_24').
:- pred must_not_make_available_nonconforming/2, gloss('distributor shall not make high-risk AI system available on market if it considers system not in conformity with requirements'), source('celex:32024R1689/oj#art_24').
:- pred must_inform_provider_or_importer_of_risk/2, gloss('distributor informs provider or importer when high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure_storage_transport_conditions/2, gloss('distributor ensures storage or transport conditions do not jeopardise compliance of high-risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred must_take_corrective_actions_nonconforming/2, gloss('distributor takes corrective actions, withdraws, or recalls nonconforming high-risk AI system, or ensures provider, importer or operator takes those actions'), source('celex:32024R1689/oj#art_24').
:- pred must_immediately_inform_of_risk_noncompliance/2, gloss('distributor immediately informs provider, importer and competent authorities when high-risk AI system presents risk, giving details of non-compliance and corrective actions'), source('celex:32024R1689/oj#art_24').
:- pred must_provide_information_and_documentation/2, gloss('distributor provides all information and documentation regarding actions to competent authority upon reasoned request'), source('celex:32024R1689/oj#art_24').
:- pred must_cooperate_with_competent_authorities/2, gloss('distributor cooperates with relevant competent authorities in any action relating to high-risk AI system'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    before_making_available_on_market(D, S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use(S),
    provider_complied_obligations(S),
    importer_complied_obligations(S).

must_not_make_available_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    considers_nonconforming(D, S),
    \+ brought_into_conformity(S).

must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    considers_nonconforming(D, S).

must_ensure_storage_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility_of(D, S),
    storage_or_transport_conditions(D, S),
    \+ jeopardise_compliance(S).

must_take_corrective_actions_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    considers_nonconforming(D, S).

must_immediately_inform_of_risk_noncompliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    presents_risk(S),
    considers_nonconforming(D, S).

must_provide_information_and_documentation(D, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    from_competent_authority(reasoned_request, A),
    must_provide(D, information_and_documentation(S, A)).

must_cooperate_with_competent_authorities(D, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    relevant_competent_authority(A),
    action_relating_to(S, A).

before_making_available_on_market(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    \+ made_available_on_market(D, S).

considers_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    based_on_information_in_possession(D, S),
    not_in_conformity_with_requirements(S).

brought_into_conformity(S) :-
    high_risk_ai_system(S),
    in_conformity_with_requirements(S).

under_responsibility_of(D, S) :-
    distributor(D),
    high_risk_ai_system(S).

storage_or_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S).

jeopardise_compliance(S) :-
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).

made_available_on_market(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S).

based_on_information_in_possession(D, _S) :-
    distributor(D).

not_in_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).

in_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    meets_requirements(S).

provider_complied_obligations(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(P, S),
    must_ensure_compliance(P, S).

importer_complied_obligations(S) :-
    high_risk_ai_system(S),
    importer(I),
    placing_on_market(I, S),
    must_ensure_compliance(I, S).

relevant_competent_authority(A) :-
    national_competent_authority(A).

action_relating_to(S, A) :-
    high_risk_ai_system(S),
    national_competent_authority(A),
    action_taken_by(A, S).

meets_requirements(S) :-
    high_risk_ai_system(S).

placing_on_market(P, S) :-
    provider(P),
    high_risk_ai_system(S).

placing_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S).

action_taken_by(A, S) :-
    national_competent_authority(A),
    high_risk_ai_system(S).

provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_nonconforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions_nonconforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_of_risk_noncompliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_24').

references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').

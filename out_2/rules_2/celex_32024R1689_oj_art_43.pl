% unit       : celex:32024R1689/oj#art_43
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 3d81842d82f36e4eb7f39db83a386bb02d49563b011276a1ee3f9621654176c1
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 527f66e8294d3b92b507e402014a94b0914b4d6f0221b62d51cf17689161c1c4
% cached     : False
% title      : Conformity assessment
:- pred applied_harmonised_standard/2, gloss('provider has applied a harmonised standard to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred applied_common_specification/2, gloss('provider has applied a common specification to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_exists/1, gloss('a harmonised standard exists for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred common_specification_available/1, gloss('a common specification is available for the AI system'), source('celex:32024R1689/oj#art_43').
:- pred provider_applied_harmonised_standard/2, gloss('provider applied the full harmonised standard to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred provider_applied_partial_harmonised_standard/2, gloss('provider applied only part of the harmonised standard to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred provider_applied_common_specification/2, gloss('provider applied the common specification to the AI system'), source('celex:32024R1689/oj#art_43').
:- pred harmonised_standard_restricted/1, gloss('a harmonised standard for the AI system is published with a restriction'), source('celex:32024R1689/oj#art_43').
:- pred provider_applied_only_restricted_part/2, gloss('provider applied only the restricted part of the harmonised standard'), source('celex:32024R1689/oj#art_43').
:- pred intended_for_law_enforcement/1, gloss('high‑risk AI system is intended for law‑enforcement, immigration, asylum authorities or Union institutions'), source('celex:32024R1689/oj#art_43').
:- pred annex_3_pnt_2_to_8/1, gloss('high‑risk AI system listed in annex 3 points 2‑8'), source('celex:32024R1689/oj#art_43').
:- pred pre_determined_change/1, gloss('change to the AI system was pre‑determined by the provider and documented in the technical documentation'), source('celex:32024R1689/oj#art_43').
:- pred compliance_assessed/1, gloss('notified body compliance with the requirements of article 31 has been assessed'), source('celex:32024R1689/oj#art_43').
:- pred permitted_notified_body_choice/2, gloss('provider may choose any notified body'), source('celex:32024R1689/oj#art_43').
:- pred must_choose_conformity_assessment_procedure/2, gloss('provider must choose a conformity assessment procedure'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_annex_7_procedure/2, gloss('provider must follow the conformity assessment procedure set out in annex 7'), source('celex:32024R1689/oj#art_43').
:- pred must_use_market_surveillance_authority_as_notified_body/2, gloss('market surveillance authority shall act as notified body'), source('celex:32024R1689/oj#art_43').
:- pred must_follow_union_legislation_procedure/2, gloss('provider must follow the conformity assessment procedure required by Union harmonisation legislation'), source('celex:32024R1689/oj#art_43').
:- pred must_conduct_new_conformity_assessment/2, gloss('provider must conduct a new conformity assessment after a substantial modification'), source('celex:32024R1689/oj#art_43').
:- pred permitted_amendment/2, gloss('Commission may amend annexes'), source('celex:32024R1689/oj#art_43').
:- pred must_adopt_delegated_act/2, gloss('Commission must adopt delegated acts to amend article 43 paragraphs 1‑2'), source('celex:32024R1689/oj#art_43').

must_choose_conformity_assessment_procedure(Provider, internal_control) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).

must_choose_conformity_assessment_procedure(Provider, notified_body_assessment) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_1_a(S),
    (   applied_harmonised_standard(Provider, S)
    ;   applied_common_specification(Provider, S)
    ).

must_follow_annex_7_procedure(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    (   ( \+ harmonised_standard_exists(S), \+ common_specification_available(S) )
    ;   ( \+ provider_applied_harmonised_standard(Provider, S)
        ; provider_applied_partial_harmonised_standard(Provider, S) )
    ;   ( common_specification_available(S), \+ provider_applied_common_specification(Provider, S) )
    ;   ( harmonised_standard_restricted(S), provider_applied_only_restricted_part(Provider, S) )
    ).

permitted_notified_body_choice(Provider, NB) :-
    provider(Provider),
    notified_body(NB).

must_use_market_surveillance_authority_as_notified_body(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    intended_for_law_enforcement(S).

must_choose_conformity_assessment_procedure(Provider, internal_control) :-
    provider(Provider),
    high_risk_ai_system(S),
    annex_3_pnt_2_to_8(S).

must_follow_union_legislation_procedure(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).

permitted_notified_body_control(Provider, NB, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    notified_body(NB),
    compliance_assessed(NB).

must_conduct_new_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    substantial_modification(S),
    \+ pre_determined_change(S).

permitted_amendment(commission, annex_6).
permitted_amendment(commission, annex_7).

must_adopt_delegated_act(commission, amendment_of_art_43_par_1_2).

provenance(must_choose_conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_annex_7_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_choice/2, 'celex:32024R1689/oj#art_43').
provenance(must_use_market_surveillance_authority_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_union_legislation_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_notified_body_control/3, 'celex:32024R1689/oj#art_43').
provenance(must_conduct_new_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(permitted_amendment/2, 'celex:32024R1689/oj#art_43').
provenance(must_adopt_delegated_act/2, 'celex:32024R1689/oj#art_43').

references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1/unp_2/pnt_a').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_3').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_3/pnt_8').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_4').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_5').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_10').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_31/par_11').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#anx_4/pnt_2/pnt_f').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_43', 'celex:32024R1689/oj#art_43/par_2').

% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 2f3e7d463aa8fa3b2c13268a9795bddffa98a329aac1b2ec183eead9f4ca6c43
% cached     : False
% title      : Obligations of distributors
:- pred must_verify_before_making_available/2, gloss('distributor must verify CE marking, declaration, instructions and provider/importer compliance before making available'), source('celex:32024R1689/oj#art_24').
:- pred must_not_make_available_if_non_compliant/2, gloss('distributor must not make system available if considered non-compliant with Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred must_inform_provider_or_importer_of_risk/2, gloss('distributor must inform provider or importer if system presents risk under Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure_storage_transport_compliance/2, gloss('distributor must ensure storage or transport does not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
:- pred must_take_corrective_action_for_non_compliance/2, gloss('distributor must take corrective action or ensure operator takes action for non-compliant system already made available'), source('celex:32024R1689/oj#art_24').
:- pred must_immediately_inform_authorities_of_risk/2, gloss('distributor must immediately inform provider, importer and competent authorities of risk and corrective actions'), source('celex:32024R1689/oj#art_24').
:- pred distributor_considers_non_compliant/2, gloss('distributor considers or has reason to consider system not in conformity with Chapter III Section 2'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    instructions_for_use(S),
    provider_complied_with_obligations(S),
    importer_complied_with_obligations(S).

must_not_make_available_if_non_compliant(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    distributor_considers_non_compliant(D, S).

must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S).

must_ensure_storage_transport_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility(D, S).

must_take_corrective_action_for_non_compliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(S),
    distributor_considers_non_compliant(D, S).

must_immediately_inform_authorities_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    made_available_on_market(S).

provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_if_non_compliant/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_for_non_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_authorities_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(distributor_considers_non_compliant/2, 'celex:32024R1689/oj#art_24').

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

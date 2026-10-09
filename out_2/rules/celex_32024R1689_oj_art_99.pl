% unit       : celex:32024R1689/oj#art_99
% context    : CHAPTER XII PENALTIES
% slice sha  : c97cf48eb2967fc9f7170cdeec64c9848242e008b4e9ee0f2a5e97f12a4575b4
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2c461701df6ea7e637b0f37c4fd0a6dc9633faf763c5748afb408afa5f1737a0
% cached     : False
% title      : Penalties
:- pred member_state/1, gloss('Member State of the EU'), source('art_99').
:- pred commission/1, gloss('European Commission'), source('art_99').

must_lay_down_rules_on_penalties(M, rules_on_penalties) :-
    member_state(M).

must_take_into_account_sme_interests(M, sme_interests) :-
    member_state(M).

must_ensure_effective_implementation(M, effective_implementation) :-
    member_state(M).

must_take_into_account_commission_guidelines(M, commission_guidelines) :-
    member_state(M),
    commission(C).

must_notify_commission_of_rules(M, penalty_rules) :-
    member_state(M),
    commission(C).

must_notify_commission_of_amendments(M, penalty_rules_amendments) :-
    member_state(M),
    commission(C).

must_report_annual_fines(M, annual_fine_report) :-
    member_state(M).

must_lay_down_rules_on_fines_for_public_authorities(M, public_authority_fines) :-
    member_state(M).

must_apply_procedural_safeguards(M, procedural_safeguards) :-
    member_state(M).

prohibited_non_compliance_with_ai_practices(O) :-
    operator(O).

prohibited_non_compliance_with_operator_obligations(O) :-
    operator(O).

prohibited_non_compliance_with_notified_body_obligations(O) :-
    notified_body(O).

must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_ai_practices(O).

must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_operator_obligations(O).

must_impose_fine(A, O) :-
    market_surveillance_authority(A),
    prohibited_non_compliance_with_notified_body_obligations(O).

provenance(must_lay_down_rules_on_penalties/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_99').
provenance(must_ensure_effective_implementation/2, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_commission_guidelines/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_of_rules/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_of_amendments/2, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_on_fines_for_public_authorities/2, 'celex:32024R1689/oj#art_99').
provenance(must_apply_procedural_safeguards/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_ai_practices/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_operator_obligations/1, 'celex:32024R1689/oj#art_99').
provenance(prohibited_non_compliance_with_notified_body_obligations/1, 'celex:32024R1689/oj#art_99').
provenance(must_impose_fine/2, 'celex:32024R1689/oj#art_99').

references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_22').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_24').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_26').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_1').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_33/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_3').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_4').
references('celex:32024R1689/oj#art_99', 'celex:32024R1689/oj#art_99/par_5').

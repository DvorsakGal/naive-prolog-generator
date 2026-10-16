% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 73807021f3f9b1bce0e34ec803bf2b9f751bbb2858a18c2c7a6c54d76644edcd
% cached     : False
% title      : CE marking
:- pred ce_marking_subject_to_general_principles/1, gloss('CE marking subject to general principles of Regulation 765/2008'), source('celex:32024R1689/oj#art_48').
:- pred digital_ce_marking_used/1, gloss('digital CE marking used for digitally provided high-risk AI systems'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_visibly/1, gloss('CE marking affixed visibly, legibly and indelibly'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixed_to_packaging/1, gloss('CE marking affixed to packaging or accompanying documentation'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_number_follows_ce_marking/1, gloss('identification number of notified body follows CE marking'), source('celex:32024R1689/oj#art_48').
:- pred notified_body_number_in_promotional_material/1, gloss('notified body number indicated in promotional material'), source('celex:32024R1689/oj#art_48').

ce_marking_subject_to_general_principles(ce_marking) :-
    true.

digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_interface(S).

digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_machine_readable_code(S).

digital_ce_marking_used(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    easily_accessible_via_electronic_means(S).

ce_marking_affixed_visibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_to_packaging(S).

ce_marking_affixed_to_packaging(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixed_visibly(S).

notified_body_number_follows_ce_marking(S) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure_applies(S, art_43).

must_affix_notified_body_number(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S).

must_affix_notified_body_number(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S),
    under_instructions_of(Provider, Body),
    notified_body(Body).

must_affix_notified_body_number(Representative, S) :-
    authorised_representative(Representative),
    high_risk_ai_system(S),
    notified_body_number_follows_ce_marking(S),
    under_instructions_of(Representative, Body),
    notified_body(Body).

notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    promotional_material_mentions_ce_marking(S).

ce_marking_indicates_other_law_compliance(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_ce_marking(S).

provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_used/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_follows_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_notified_body_number/2, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_other_law_compliance/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% unit       : celex:32024R1689/oj#art_48
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : d74f625d78c09467c483ee3716bdb74dfb5f9163b82cdac98b10809f845bb15a
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 417079ef9f26e81eadb5e454ffcad661310b500e6dc435f08ab2b5a0990acb67
% cached     : False
% title      : CE marking
:- pred digital_ce_marking_accessible/1, gloss('digital CE marking is easily accessible via interface or machine-readable code'), source('celex:32024R1689/oj#art_48').
:- pred ce_marking_affixing_not_possible_or_warranted/1, gloss('affixing CE marking visibly legibly and indelibly is not possible or warranted due to nature of system'), source('celex:32024R1689/oj#art_48').
:- pred subject_to_other_union_law_requiring_ce_marking/1, gloss('high-risk AI system subject to other Union law providing for CE marking'), source('celex:32024R1689/oj#art_48').

must_use_digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking_accessible(S).

must_affix_ce_marking_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    \+ ce_marking_affixing_not_possible_or_warranted(S).

must_affix_ce_marking_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking_affixing_not_possible_or_warranted(S).

identification_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body_involved_in_conformity_assessment(S),
    promotional_material_mentions_ce_compliance(S).

ce_marking_indicates_compliance_with_other_law(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_requiring_ce_marking(S).

provenance(must_use_digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(must_affix_ce_marking_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_law/1, 'celex:32024R1689/oj#art_48').

references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% unit      : celex:32024R1689/oj#art_16
% source    : celex:32024R1689%2Foj#art_16.xml
% model     : gpt-oss:120b-cloud
% prompt sha: d239e921469d29f1c15f6b19135dea152893af7e6163c965c3e665810e0f0d32
% signature: 00ee7559e3c3d18f1bb6c455d54ec6ce4a9521a52c53862ea62ebe810e003bb1
% cached    : False
%--- New entity predicates -------------------------------------------------
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_16').

%--- Obligation predicates -------------------------------------------------
:- pred required_compliance_with_requirements/2, gloss('provider must ensure high‑risk AI system complies with the requirements set out in the specified chapter and section'), source('celex:32024R1689/oj#art_16').
required_compliance_with_requirements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

:- pred required_labeling/2, gloss('provider must indicate name, trade name or trade mark and contact address on the high‑risk AI system, its packaging or documentation'), source('celex:32024R1689/oj#art_16').
required_labeling(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

:- pred required_quality_management_system/1, gloss('provider must have a quality management system complying with the referenced article'), source('celex:32024R1689/oj#art_16').
required_quality_management_system(Provider) :-
    provider(Provider).

:- pred required_documentation_retention/1, gloss('provider must keep the documentation referred to in the referenced article'), source('celex:32024R1689/oj#art_16').
required_documentation_retention(Provider) :-
    provider(Provider).

:- pred required_log_retention/1, gloss('provider must keep automatically generated logs of the high‑risk AI system when under its control'), source('celex:32024R1689/oj#art_16').
required_log_retention(Provider) :-
    provider(Provider).

:- pred required_conformity_assessment_before_market/2, gloss('provider must ensure the high‑risk AI system undergoes the relevant conformity assessment prior to placement on the market or putting into service'), source('celex:32024R1689/oj#art_16').
required_conformity_assessment_before_market(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

:- pred required_declaration_of_conformity/1, gloss('provider must draw up an EU declaration of conformity'), source('celex:32024R1689/oj#art_16').
required_declaration_of_conformity(Provider) :-
    provider(Provider).

:- pred required_ce_marking/2, gloss('provider must affix the CE marking to the high‑risk AI system, its packaging or documentation'), source('celex:32024R1689/oj#art_16').
required_ce_marking(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

:- pred required_registration_obligations/1, gloss('provider must comply with the registration obligations referred to in the referenced article'), source('celex:32024R1689/oj#art_16').
required_registration_obligations(Provider) :-
    provider(Provider).

:- pred required_corrective_actions/1, gloss('provider must take necessary corrective actions and provide information as required in the referenced article'), source('celex:32024R1689/oj#art_16').
required_corrective_actions(Provider) :-
    provider(Provider).

:- pred required_demonstration_of_conformity/1, gloss('provider must, upon a reasoned request of a national competent authority, demonstrate conformity of the high‑risk AI system with the requirements'), source('celex:32024R1689/oj#art_16').
required_demonstration_of_conformity(Provider) :-
    provider(Provider).

:- pred required_accessibility_compliance/1, gloss('provider must ensure the high‑risk AI system complies with accessibility requirements in accordance with the referenced directives'), source('celex:32024R1689/oj#art_16').
required_accessibility_compliance(Provider) :-
    provider(Provider).

%--- Provenance for each rule ---------------------------------------------
provenance(required_compliance_with_requirements/2, 'celex:32024R1689/oj#art_16').
provenance(required_labeling/2, 'celex:32024R1689/oj#art_16').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_documentation_retention/1, 'celex:32024R1689/oj#art_16').
provenance(required_log_retention/1, 'celex:32024R1689/oj#art_16').
provenance(required_conformity_assessment_before_market/2, 'celex:32024R1689/oj#art_16').
provenance(required_declaration_of_conformity/1, 'celex:32024R1689/oj#art_16').
provenance(required_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').
provenance(required_corrective_actions/1, 'celex:32024R1689/oj#art_16').
provenance(required_demonstration_of_conformity/1, 'celex:32024R1689/oj#art_16').
provenance(required_accessibility_compliance/1, 'celex:32024R1689/oj#art_16').

%--- References ------------------------------------------------------------
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').

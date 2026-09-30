% unit      : celex:32024R1689/oj#art_6
% source    : celex:32024R1689%2Foj#art_6.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 8ca473254df7ac2b1b6bdca26e87e019fad52c9746cb5071d7ff2f9334d9fc84
% signature: 00ee7559e3c3d18f1bb6c455d54ec6ce4a9521a52c53862ea62ebe810e003bb1
% cached    : False
% Invented predicates
:- pred high_risk_ai_system/1, gloss('AI system classified as high risk'), source('celex:32024R1689/oj#art_6').
:- pred annex_3_ai_system/1, gloss('AI system referred to in annex 3'), source('celex:32024R1689/oj#art_6').
:- pred covered_by_annex1/1, gloss('AI system covered by Union harmonisation legislation listed in annex 1'), source('celex:32024R1689/oj#art_6').
:- pred product/1, gloss('AI system is itself a product'), source('celex:32024R1689/oj#art_6').
:- pred not_significant_risk/1, gloss('AI system does not pose a significant risk of harm'), source('celex:32024R1689/oj#art_6').
:- pred exempt_high_risk_ai_system/1, gloss('AI system exempt from high‑risk classification'), source('celex:32024R1689/oj#art_6').
:- pred provider_considers_not_high_risk/2, gloss('Provider considers AI system not high risk'), source('celex:32024R1689/oj#art_6').
:- pred must_document_assessment/2, gloss('Provider must document assessment'), source('celex:32024R1689/oj#art_6').
:- pred must_register/2, gloss('Provider subject to registration obligation'), source('celex:32024R1689/oj#art_6').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_6').
:- pred must_provide_guidelines/1, gloss('Commission must provide guidelines'), source('celex:32024R1689/oj#art_6').
:- pred permitted_adopt_delegated_act/2, gloss('Commission may adopt delegated act'), source('celex:32024R1689/oj#art_6').
:- pred required_adopt_delegated_act/2, gloss('Commission must adopt delegated act'), source('celex:32024R1689/oj#art_6').
:- pred concrete_reliable_evidence/1, gloss('Concrete and reliable evidence of existence of AI system'), source('celex:32024R1689/oj#art_6').
:- pred necessary_to_maintain_protection/1, gloss('Necessary to maintain level of protection'), source('celex:32024R1689/oj#art_6').

% Classification rules (Paragraph 1)
high_risk_ai_system(S) :-
    covered_by_annex1(S),
    (safety_component(S) ; product(S)),
    conformity_assessment(S),
    (placing_on_market(_, S) ; putting_into_service(_, S)).

% Classification rules (Paragraph 2)
high_risk_ai_system(S) :- annex_3_ai_system(S), \+ exempt_high_risk_ai_system(S).

% Exemption (Paragraph 3 – derogation)
exempt_high_risk_ai_system(S) :-
    annex_3_ai_system(S),
    not_significant_risk(S),
    \+ profiling(S).

% Mandatory high‑risk classification despite derogation (profiling)
high_risk_ai_system(S) :- annex_3_ai_system(S), profiling(S).

% Provider obligations (Paragraph 4)
must_document_assessment(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    provider_considers_not_high_risk(Provider, S).

must_register(Provider, S) :-
    provider(Provider),
    annex_3_ai_system(S),
    provider_considers_not_high_risk(Provider, S).

% Commission obligations (Paragraph 5)
must_provide_guidelines(Commission) :-
    commission(Commission).

% Delegated acts – adding conditions (Paragraph 6)
permitted_adopt_delegated_act(Commission, amend_conditions) :-
    commission(Commission),
    annex_3_ai_system(S),
    not_significant_risk(S),
    concrete_reliable_evidence(S).

% Delegated acts – deleting conditions (Paragraph 7)
required_adopt_delegated_act(Commission, delete_conditions) :-
    commission(Commission),
    concrete_reliable_evidence(S),
    necessary_to_maintain_protection(S).

% Provenance for each rule head
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_register/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide_guidelines/1, 'celex:32024R1689/oj#art_6').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').
provenance(required_adopt_delegated_act/2, 'celex:32024R1689/oj#art_6').

% References (deduplicated)
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').

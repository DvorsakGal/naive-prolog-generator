% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : b312081ff2ab04c7cff06b4ea48577bc6890d30ea1ba5d14dd84c4951d78d820
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred retention_period_documentation/2, gloss('period for which documentation must be kept'), source('celex:32024R1689/oj#art_18').
:- pred documentation_at_disposal/2, gloss('documentation kept at disposal of specified authority'), source('celex:32024R1689/oj#art_18').
:- pred technical_documentation_referred_in_art_11/1, gloss('technical documentation referred to in Article 11'), source('celex:32024R1689/oj#art_18').
:- pred quality_management_documentation_referred_in_art_17/1, gloss('documentation concerning quality management system referred to in Article 17'), source('celex:32024R1689/oj#art_18').
:- pred approved_changes_documentation/1, gloss('documentation concerning changes approved by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred notified_body_decisions_documentation/1, gloss('decisions and other documents issued by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred eu_declaration_of_conformity_referred_in_art_47/1, gloss('EU declaration of conformity referred to in Article 47'), source('celex:32024R1689/oj#art_18').
:- pred member_state_determines_conditions/2, gloss('Member State determines conditions for documentation retention in specific cases'), source('celex:32024R1689/oj#art_18').
:- pred bankruptcy_or_ceases_activity/1, gloss('provider or authorised representative goes bankrupt or ceases activity'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_18').
:- pred subject_to_union_financial_services_law/1, gloss('subject to requirements regarding internal governance under Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred maintain_technical_documentation_under_financial_law/1, gloss('maintain technical documentation as part of documentation under Union financial services law'), source('celex:32024R1689/oj#art_18').

must_keep_documentation(P, D) :-
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    documentation_for_art_18(D, S),
    retention_period_documentation(years(10), after_placing_or_putting_into_service(S)).

retention_period_documentation(years(10), after_placing_or_putting_into_service(S)) :-
    high_risk_ai_system(S).

documentation_at_disposal(D, national_competent_authority) :-
    must_keep_documentation(_P, D).

technical_documentation_referred_in_art_11(D) :-
    technical_documentation(D).

quality_management_documentation_referred_in_art_17(D) :-
    quality_management_system(Q),
    documentation_of(Q, D).

approved_changes_documentation(D) :-
    substantial_modification(M),
    approved_by(M, notified_body),
    documentation_of(M, D).

notified_body_decisions_documentation(D) :-
    decision_or_document_issued_by(notified_body, D).

eu_declaration_of_conformity_referred_in_art_47(D) :-
    eu_declaration_of_conformity(D).

documentation_for_art_18(D, S) :-
    technical_documentation_referred_in_art_11(D),
    technical_documentation_of(D, S).
documentation_for_art_18(D, S) :-
    quality_management_documentation_referred_in_art_17(D),
    quality_management_system_for(D, S).
documentation_for_art_18(D, S) :-
    approved_changes_documentation(D),
    modification_of(D, S).
documentation_for_art_18(D, S) :-
    notified_body_decisions_documentation(D),
    decision_concerning(D, S).
documentation_for_art_18(D, S) :-
    eu_declaration_of_conformity_referred_in_art_47(D),
    declaration_for(D, S).

member_state_determines_conditions(MemberState, Conditions) :-
    national_competent_authority(MemberState),
    bankruptcy_or_ceases_activity(Entity),
    (provider(Entity); authorised_representative(Entity)),
    established_in_union(Entity),
    retention_period_documentation(years(10), after_placing_or_putting_into_service(_S)).

bankruptcy_or_ceases_activity(Entity) :-
    (provider(Entity); authorised_representative(Entity)),
    goes_bankrupt(Entity).
bankruptcy_or_ceases_activity(Entity) :-
    (provider(Entity); authorised_representative(Entity)),
    ceases_activity(Entity).

maintain_technical_documentation_under_financial_law(P) :-
    financial_institution_provider(P),
    provider(P),
    high_risk_ai_system(S),
    placed_or_put_into_service_by(P, S),
    subject_to_union_financial_services_law(P),
    technical_documentation(D),
    technical_documentation_of(D, S),
    documentation_kept_under_financial_law(D, P).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(retention_period_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(technical_documentation_referred_in_art_11/1, 'celex:32024R1689/oj#art_18').
provenance(quality_management_documentation_referred_in_art_17/1, 'celex:32024R1689/oj#art_18').
provenance(approved_changes_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(notified_body_decisions_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(eu_declaration_of_conformity_referred_in_art_47/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_for_art_18/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(bankruptcy_or_ceases_activity/1, 'celex:32024R1689/oj#art_18').
provenance(maintain_technical_documentation_under_financial_law/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

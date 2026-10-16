% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 51711f111293df9f3923559a7b6fe06a31583798d627a1561979886c5e0a1a75
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('reconciled').
:- pred keep_at_disposal/2, gloss('entity keeps document at disposal of authority for a period'), source('reconciled').
:- pred period/2, gloss('period with duration and reference point'), source('celex:32024R1689/oj#art_18').
:- pred years/1, gloss('number of years'), source('celex:32024R1689/oj#art_18').
:- pred after/1, gloss('after a reference event'), source('celex:32024R1689/oj#art_18').
:- pred placed_on_market_or_put_into_service/1, gloss('AI system placed on market or put into service'), source('celex:32024R1689/oj#art_18').
:- pred technical_documentation/1, gloss('technical documentation referred to in Article 11'), source('celex:32024R1689/oj#art_18').
:- pred quality_management_system_documentation/1, gloss('documentation concerning quality management system referred to in Article 17'), source('celex:32024R1689/oj#art_18').
:- pred approved_changes_documentation/1, gloss('documentation concerning changes approved by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred notified_body_decisions/1, gloss('decisions and other documents issued by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity referred to in Article 47'), source('celex:32024R1689/oj#art_18').
:- pred documentation_art_18_par_1/1, gloss('documentation referred to in Article 18(1)'), source('celex:32024R1689/oj#art_18').
:- pred provider_or_authorised_representative_bankrupt_or_ceased/2, gloss('provider or authorised representative goes bankrupt or ceases activity'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to Union financial services law requirements'), source('celex:32024R1689/oj#art_18').
:- pred maintains_technical_documentation_as_part_of/2, gloss('provider maintains technical documentation as part of documentation kept under relevant law'), source('celex:32024R1689/oj#art_18').

must_keep_documentation(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, technical_documentation(S), period(years(10), after(S))).

must_keep_documentation(Provider, quality_management_system_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, quality_management_system_documentation(S), period(years(10), after(S))).

must_keep_documentation(Provider, approved_changes_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, approved_changes_documentation(S), period(years(10), after(S))).

must_keep_documentation(Provider, notified_body_decisions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, notified_body_decisions(S), period(years(10), after(S))).

must_keep_documentation(Provider, eu_declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, eu_declaration_of_conformity(S), period(years(10), after(S))).

keep_at_disposal(Provider, Doc, period(years(10), after(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    must_keep_documentation(Provider, Doc).

placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).

placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).

documentation_art_18_par_1(Doc) :-
    Doc = technical_documentation(_).

documentation_art_18_par_1(Doc) :-
    Doc = quality_management_system_documentation(_).

documentation_art_18_par_1(Doc) :-
    Doc = approved_changes_documentation(_).

documentation_art_18_par_1(Doc) :-
    Doc = notified_body_decisions(_).

documentation_art_18_par_1(Doc) :-
    Doc = eu_declaration_of_conformity(_).

must_keep_documentation(Provider, documentation_art_18_par_1(Doc)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    documentation_art_18_par_1(Doc),
    keep_at_disposal(Provider, Doc, period(years(10), after(S))).

provider_or_authorised_representative_bankrupt_or_ceased(Provider, MemberState) :-
    provider(Provider),
    member_state(MemberState),
    provider_established_in_territory(Provider, MemberState).

provider_or_authorised_representative_bankrupt_or_ceased(Representative, MemberState) :-
    authorised_representative(Representative),
    member_state(MemberState),
    representative_established_in_territory(Representative, MemberState).

:- pred provider_established_in_territory/2, gloss('provider established in territory of Member State'), source('celex:32024R1689/oj#art_18').
:- pred representative_established_in_territory/2, gloss('authorised representative established in territory of Member State'), source('celex:32024R1689/oj#art_18').
:- pred member_state_determines_conditions/2, gloss('Member State determines conditions for documentation availability'), source('celex:32024R1689/oj#art_18').

member_state_determines_conditions(MemberState, documentation_art_18_par_1(Doc)) :-
    member_state(MemberState),
    documentation_art_18_par_1(Doc),
    provider_or_authorised_representative_bankrupt_or_ceased(_Provider, MemberState).

financial_institution_provider(Provider) :-
    provider(Provider),
    subject_to_union_financial_services_law(Provider).

:- pred subject_to_union_financial_services_law/1, gloss('subject to requirements regarding internal governance under Union financial services law'), source('celex:32024R1689/oj#art_18').

maintains_technical_documentation_as_part_of(Provider, relevant_union_financial_services_law) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S),
    must_keep_documentation(Provider, technical_documentation(S)).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(period/2, 'celex:32024R1689/oj#art_18').
provenance(years/1, 'celex:32024R1689/oj#art_18').
provenance(after/1, 'celex:32024R1689/oj#art_18').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_18').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(quality_management_system_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(approved_changes_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(notified_body_decisions/1, 'celex:32024R1689/oj#art_18').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_art_18_par_1/1, 'celex:32024R1689/oj#art_18').
provenance(provider_or_authorised_representative_bankrupt_or_ceased/2, 'celex:32024R1689/oj#art_18').
provenance(provider_established_in_territory/2, 'celex:32024R1689/oj#art_18').
provenance(representative_established_in_territory/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
provenance(subject_to_union_financial_services_law/1, 'celex:32024R1689/oj#art_18').
provenance(maintains_technical_documentation_as_part_of/2, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

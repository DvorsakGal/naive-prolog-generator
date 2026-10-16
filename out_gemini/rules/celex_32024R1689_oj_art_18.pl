% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1d9b80159d9b1d544b7f92321e52bc8abdd6c8dccd97378a095863a2a9e9cad2
% cached     : False
% title      : Documentation keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('provider is a financial institution under Union law'), source('celex:32024R1689/oj#art_18').
:- pred subject_to_financial_services_governance(P), gloss('entity subject to governance arrangements under Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred must_keep(Actor, Object), gloss('actor is obliged to keep specified documentation'), source('celex:32024R1689/oj#art_18').
:- pred must_determine(Actor, Object), gloss('actor is obliged to determine specified conditions'), source('celex:32024R1689/oj#art_18').
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_18').

must_keep(Provider, at_disposal(Auth, technical_documentation(System), period(years(10), after(market_or_service(System)))))) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Auth),
    \+ (financial_institution(Provider), subject_to_financial_services_governance(Provider)).

must_keep(Provider, at_disposal(Auth, quality_management_system_documentation(System), period(years(10), after(market_or_service(System)))))) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Auth).

must_keep(Provider, at_disposal(Auth, approved_changes_documentation(System), period(years(10), after(market_or_service(System)))))) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Auth).

must_keep(Provider, at_disposal(Auth, notified_body_documents(System), period(years(10), after(market_or_service(System)))))) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Auth).

must_keep(Provider, at_disposal(Auth, eu_declaration_of_conformity(System), period(years(10), after(market_or_service(System)))))) :-
    provider(Provider),
    high_risk_ai_system(System),
    national_competent_authority(Auth).

must_keep(Provider, part_of_financial_services_documentation(technical_documentation(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    financial_institution(Provider),
    subject_to_financial_services_governance(Provider).

must_determine(State, conditions(documentation_kept_on_bankruptcy_or_cessation(System), period(years(10), after(market_or_service(System))))) :-
    member_state(State),
    high_risk_ai_system(System).

provenance(must_keep/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine/2, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

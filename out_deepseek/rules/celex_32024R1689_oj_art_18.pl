% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a03a91f9aad3e1af1d4b2ed8935f8ac26ee45e657ecb76916de08e821cb9ef5c
% cached     : False
% title      : Documentation keeping
:- pred must_keep_at_disposal/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred documentation_kept_under_financial_services_law/1, gloss('provider maintains technical documentation under financial services law'), source('celex:32024R1689/oj#art_18').

must_keep_at_disposal(Provider, documentation(period(years(10), after(Event)), Docs)) :-
    provider(Provider),
    (   placing_on_market(Event)
    ;   putting_into_service(Event)
    ),
    Docs = [technical_documentation,
            quality_management_system_documentation,
            changes_approved_by_notified_bodies,
            decisions_and_documents_from_notified_bodies,
            eu_declaration_of_conformity].

documentation_kept_under_financial_services_law(Provider) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_financial_services_governance_requirements(Provider).

provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_kept_under_financial_services_law/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

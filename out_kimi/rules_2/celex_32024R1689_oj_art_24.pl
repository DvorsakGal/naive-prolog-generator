% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : c971f9da0b04ae5500d9c46f92f03993325c95e09c7ffd20baa7425cef470215
% cached     : False
% title      : Obligations of distributors
:- pred must_verify_before_making_available/2, gloss('distributor must verify specified conditions before making high-risk AI system available on market'), source('celex:32024R1689/oj#art_24').
:- pred bears_required_ce_marking/1, gloss('high-risk AI system bears required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_eu_declaration_of_conformity/1, gloss('high-risk AI system accompanied by copy of EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_instructions_for_use/1, gloss('high-risk AI system accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred provider_complied_with_obligations/1, gloss('provider complied with obligations under Article 16(1)(b) and (c)'), source('celex:32024R1689/oj#art_24').
:- pred importer_complied_with_obligations/1, gloss('importer complied with obligations under Article 23(3)'), source('celex:32024R1689/oj#art_24').
:- pred must_not_make_available_until_conformity/2, gloss('distributor shall not make high-risk AI system available until brought into conformity'), source('celex:32024R1689/oj#art_24').
:- pred not_in_conformity_with_chapter_3_section_2/1, gloss('high-risk AI system not in conformity with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_24').
:- pred must_inform_provider_or_importer_of_risk/2, gloss('distributor shall inform provider or importer of risk within meaning of Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure_storage_transport_compliance/2, gloss('distributor shall ensure storage or transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_24').
:- pred under_responsibility_of_distributor/2, gloss('high-risk AI system under responsibility of distributor'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_conditions_applicable/1, gloss('storage or transport conditions applicable to high-risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred jeopardises_compliance_with_chapter_3_section_2/1, gloss('conditions jeopardise compliance with Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_24').
:- pred must_take_corrective_action_withdraw_or_recall/2, gloss('distributor shall take corrective action, withdraw or recall non-conforming high-risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred made_available_on_market_by_distributor/2, gloss('high-risk AI system made available on market by distributor'), source('celex:32024R1689/oj#art_24').
:- pred corrective_action_necessary/1, gloss('corrective action necessary to bring system into conformity'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure_provider_importer_or_operator_takes_corrective_action/2, gloss('distributor shall ensure provider, importer or relevant operator takes corrective action'), source('celex:32024R1689/oj#art_24').
:- pred must_immediately_inform_provider_importer_and_authorities/2, gloss('distributor shall immediately inform provider, importer and competent authorities of risk and corrective actions'), source('celex:32024R1689/oj#art_24').
:- pred competent_authority_for_system/2, gloss('authority competent for the high-risk AI system concerned'), source('celex:32024R1689/oj#art_24').
:- pred non_compliance_details/1, gloss('details of non-compliance'), source('celex:32024R1689/oj#art_24').
:- pred corrective_actions_taken/1, gloss('corrective actions taken'), source('celex:32024R1689/oj#art_24').
:- pred must_provide_information_and_documentation/2, gloss('distributor shall provide authority with information and documentation'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request_from_authority/2, gloss('reasoned request from relevant competent authority'), source('celex:32024R1689/oj#art_24').
:- pred actions_pursuant_to_article_24_paragraphs/1, gloss('actions pursuant to Article 24(1)-(4)'), source('celex:32024R1689/oj#art_24').
:- pred necessary_to_demonstrate_conformity/1, gloss('information necessary to demonstrate conformity with Chapter III Section 2'), source('celex:32024R1689/oj#art_24').

must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_required_ce_marking(System),
    accompanied_by_eu_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).

must_not_make_available_until_conformity(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    not_in_conformity_with_chapter_3_section_2(System),
    \+ brought_into_conformity(System).

must_inform_provider_or_importer_of_risk(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_within_art_79_1(System),
    (provider(P), responsible_for_system(P, System); importer(I), responsible_for_system(I, System)).

must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System),
    storage_or_transport_conditions_applicable(System),
    \+ jeopardises_compliance_with_chapter_3_section_2(System).

must_take_corrective_action_withdraw_or_recall(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    not_in_conformity_with_chapter_3_section_2(System),
    corrective_action_necessary(System).

must_ensure_provider_importer_or_operator_takes_corrective_action(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    not_in_conformity_with_chapter_3_section_2(System),
    (provider(P), responsible_for_system(P, System);
     importer(I), responsible_for_system(I, System);
     operator(O), relevant_operator(O, System)).

must_immediately_inform_provider_importer_and_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_within_art_79_1(System),
    made_available_on_market_by_distributor(Distributor, System),
    (provider(P), responsible_for_system(P, System); importer(I), responsible_for_system(I, System)),
    competent_authority_for_system(Authority, System),
    non_compliance_details(System),
    corrective_actions_taken(System).

must_provide_information_and_documentation(Distributor, Authority) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by_distributor(Distributor, System),
    reasoned_request_from_authority(Authority, Distributor),
    actions_pursuant_to_article_24_paragraphs(System),
    necessary_to_demonstrate_conformity(System).

provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_action_withdraw_or_recall/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_provider_importer_or_operator_takes_corrective_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_provider_importer_and_authorities/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24').

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

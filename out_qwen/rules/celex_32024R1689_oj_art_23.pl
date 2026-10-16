% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3bcdefb10731b29a3fde35d13ec9a2a34feaa8e26e2f0e96ba9a434bd0df4639
% cached     : False
% title      : Obligations of importers
:- pred must_verify_conformity_before_placing_on_market/2, gloss('importer must verify specific conformity elements before placing high-risk AI system on market'), source('celex:32024R1689/oj#art_23').
:- pred must_not_place_on_market_if_nonconformity_suspected/2, gloss('importer must not place system on market if non-conformity or falsification suspected'), source('celex:32024R1689/oj#art_23').
:- pred must_inform_of_risk/2, gloss('importer must inform provider, representative and authorities if system presents risk'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_importer_details/2, gloss('importer must indicate name and contact details on system or packaging'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_transport_compliance/2, gloss('importer must ensure storage and transport do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_documents/2, gloss('importer must keep certificate, instructions and declaration for 10 years'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_information_to_authority/2, gloss('importer must provide information and documentation to demonstrate conformity upon request'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate_with_authority/2, gloss('importer must cooperate with competent authorities to reduce risks'), source('celex:32024R1689/oj#art_23').
:- pred sufficient_reason_to_consider_nonconformity/2, gloss('importer has reason to believe system is non-compliant or falsified'), source('celex:32024R1689/oj#art_23').
:- pred presents_risk/2, gloss('high-risk AI system presents a risk within meaning of Article 79(1)'), source('celex:32024R1689/oj#art_23').

must_verify_conformity_before_placing_on_market(I, S) :-
    importer(I),
    placing_on_market(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up(S),
    ce_marking_and_declaration_present(S),
    authorised_representative_appointed(S).

must_not_place_on_market_if_nonconformity_suspected(I, S) :-
    importer(I),
    sufficient_reason_to_consider_nonconformity(I, S).

must_inform_of_risk(I, S) :-
    importer(I),
    presents_risk(S, _RiskType).

must_indicate_importer_details(I, S) :-
    importer(I),
    placing_on_market(S).

must_ensure_storage_transport_compliance(I, S) :-
    importer(I),
    placing_on_market(S).

must_keep_documents(I, S) :-
    importer(I),
    placing_on_market(S).

must_provide_information_to_authority(I, S) :-
    importer(I),
    placing_on_market(S).

must_cooperate_with_authority(I, S) :-
    importer(I),
    placing_on_market(S).

provenance(must_verify_conformity_before_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market_if_nonconformity_suspected/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_importer_details/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documents/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_to_authority/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_authority/2, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_nonconformity/2, 'celex:32024R1689/oj#art_23').
provenance(presents_risk/2, 'celex:32024R1689/oj#art_23').

references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').

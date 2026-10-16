% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f2b696532f70d7e3704fcd172f11fb259f43b546133e32de68086e62c0d1f6dc
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred may_impose_fine/2, gloss('Commission may impose fine on provider of general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred fine_infringement/2, gloss('infringement ground for fine under Article 101'), source('celex:32024R1689/oj#art_101').
:- pred fine_amount_cap/2, gloss('maximum fine amount for provider'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_preliminary_findings/2, gloss('Commission must communicate preliminary findings before decision'), source('celex:32024R1689/oj#art_101').
:- pred fine_characteristics/1, gloss('fines must be effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate_fine_information/2, gloss('information on fines must be communicated to the Board'), source('celex:32024R1689/oj#art_101').
:- pred cjeu_jurisdiction/1, gloss('CJEU has unlimited jurisdiction to review fine decisions'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/1, gloss('Commission must adopt implementing acts for proceedings'), source('celex:32024R1689/oj#art_101').

may_impose_fine(Commission, fine(Provider, Amount)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    intentionally_or_negligently(Provider, Infringement),
    fine_infringement(Infringement, Provider),
    fine_amount_cap(Provider, Cap),
    Amount =< Cap.

fine_infringement(infringed_relevant_provisions, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    infringed(Provider, relevant_provisions).

fine_infringement(failed_document_request(art_91), Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_comply_with_document_request(Provider, art_91).

fine_infringement(supplied_incorrect_incomplete_misleading_information, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    supplied_incorrect_incomplete_misleading_information(Provider).

fine_infringement(failed_measure_art_93, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_comply_with_measure(Provider, art_93).

fine_infringement(failed_access_art_92, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    failed_to_make_available_access(Provider, Model, art_92).

fine_amount_cap(Provider, Cap) :-
    provider(Provider),
    annual_total_worldwide_turnover(Provider, preceding_financial_year, Turnover),
    Cap is max(0.03 * Turnover, 15000000).

must_communicate_preliminary_findings(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides(Provider, Model),
    before_adopting_decision(Commission, art_101_par_1).

fine_characteristics(effective).
fine_characteristics(proportionate).
fine_characteristics(dissuasive).

must_communicate_fine_information(Commission, Board) :-
    fine_imposed(Commission, _Provider, _Amount),
    as_appropriate(Board).

cjeu_jurisdiction(review_fine_decision(Commission, Provider, Amount)) :-
    fine_imposed(Commission, Provider, Amount).

must_adopt_implementing_acts(Commission) :-
    implementing_acts(Commission, proceedings_arrangements_safeguards, art_101_par_1).

provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_infringement/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount_cap/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(fine_characteristics/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
provenance(cjeu_jurisdiction/1, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

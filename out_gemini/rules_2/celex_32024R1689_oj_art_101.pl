% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : a259544a2ad54b7b557e0503df3c794eeaffafa6a3d37f1de86d37bd5f51be37
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred permitted_impose_fine/2, gloss('Commission may impose a fine on a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred fine_infringement_condition/2, gloss('Condition under which fine can be imposed on a provider of general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred intentionally_or_negligently/2, gloss('Entity committed an act intentionally or negligently'), source('celex:32024R1689/oj#art_101').
:- pred infringed_provisions/2, gloss('Entity infringed provisions of Regulation (EU) 2024/1689'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_request_document_or_info/2, gloss('Entity failed to comply with request under Article 91 or supplied incorrect info'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_measure_requested/2, gloss('Entity failed to comply with a measure requested under Article 93'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_provide_access_for_evaluation/2, gloss('Entity failed to provide Commission access to model for evaluation under Article 92'), source('celex:32024R1689/oj#art_101').
:- pred fine_ceiling/2, gloss('Maximum fine applicable to a provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_101').
:- pred must_communicate/2, gloss('Actor must communicate information or procedural step to recipient'), source('celex:32024R1689/oj#art_101').
:- pred must_give_opportunity_to_be_heard/2, gloss('Commission must give provider an opportunity to be heard before decision'), source('celex:32024R1689/oj#art_101').
:- pred fine_requirements/1, gloss('Fine is effective, proportionate and dissuasive'), source('celex:32024R1689/oj#art_101').
:- pred permitted_review_decision/2, gloss('Court of Justice has jurisdiction to review fine decision'), source('celex:32024R1689/oj#art_101').
:- pred must_adopt_implementing_acts/2, gloss('Actor must adopt implementing acts containing procedural safeguards'), source('celex:32024R1689/oj#art_101').

% Paragraph 1: Commission may impose fines on providers of general-purpose AI models
permitted_impose_fine(Commission, fine(Provider, Amount)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    fine_infringement_condition(Provider, Infringement),
    intentionally_or_negligently(Provider, Infringement),
    fine_ceiling(Provider, MaxAmount),
    Amount =< MaxAmount.

fine_infringement_condition(Provider, infringed_provisions) :-
    infringed_provisions(Provider, 'celex:32024R1689/oj').
fine_infringement_condition(Provider, failed_to_comply_request_document_or_info) :-
    failed_to_comply_request_document_or_info(Provider, 'celex:32024R1689/oj#art_91').
fine_infringement_condition(Provider, failed_to_comply_measure_requested) :-
    failed_to_comply_measure_requested(Provider, 'celex:32024R1689/oj#art_93').
fine_infringement_condition(Provider, failed_to_provide_access_for_evaluation) :-
    failed_to_provide_access_for_evaluation(Provider, 'celex:32024R1689/oj#art_92').

% Paragraph 2: Procedural duties before decision
must_communicate(Commission, preliminary_findings(Provider)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).

must_give_opportunity_to_be_heard(Commission, Provider) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).

% Paragraph 4: Communication to the Board
must_communicate(Commission, fine_info_to_board(Provider, Fine)) :-
    commission(Commission),
    permitted_impose_fine(Commission, fine(Provider, Fine)).

% Paragraph 5: Unlimited review by CJEU
permitted_review_decision(court_of_justice, decision_fixing_fine(Commission, Provider)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider).

% Paragraph 6: Implementing acts
must_adopt_implementing_acts(Commission, procedural_safeguards_article_101_1) :-
    commission(Commission).

% Provenance
provenance(permitted_impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(fine_infringement_condition/2, 'celex:32024R1689/oj#art_101').
provenance(intentionally_or_negligently/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_provisions/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_request_document_or_info/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_measure_requested/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_provide_access_for_evaluation/2, 'celex:32024R1689/oj#art_101').
provenance(fine_ceiling/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fine_requirements/1, 'celex:32024R1689/oj#art_101').
provenance(permitted_review_decision/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').

% References
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

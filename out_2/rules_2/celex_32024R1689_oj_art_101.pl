% unit       : celex:32024R1689/oj#art_101
% context    : CHAPTER XII PENALTIES
% slice sha  : 863289a44e0acab966ec52ddef65337536e6a1882b1d01e8499a22a251ca916c
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 8601350b9ced1cfd37eb73506edc709e76c2c5a879856e6bb58980a9fef85d78
% cached     : False
% title      : Fines for providers of general-purpose AI models
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_101').
:- pred intentional_or_negligent/1, gloss('intentional or negligent conduct'), source('celex:32024R1689/oj#art_101').
:- pred infringed_provisions/1, gloss('infringed relevant provisions of the regulation'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_request/1, gloss('failed to comply with a request for a document or information'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_comply_measure/1, gloss('failed to comply with a measure requested'), source('celex:32024R1689/oj#art_101').
:- pred failed_to_make_available/1, gloss('failed to make available access to the model for evaluation'), source('celex:32024R1689/oj#art_101').
:- pred board/1, gloss('Board of the European AI Board'), source('celex:32024R1689/oj#art_101').
:- pred implementing_acts/1, gloss('implementing acts containing detailed arrangements'), source('celex:32024R1689/oj#art_101').

impose_fine(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider),
    intentional_or_negligent(Provider),
    (   infringed_provisions(Provider)
    ;   failed_to_comply_request(Provider)
    ;   failed_to_comply_measure(Provider)
    ;   failed_to_make_available(Provider)
    ).

must_communicate_preliminary_findings(Commission, Provider) :-
    commission(Commission),
    general_purpose_ai_model_provider(Provider).

must_communicate_fine_information(Commission, B) :-
    commission(Commission),
    board(B).

must_adopt_implementing_acts(Commission, A) :-
    commission(Commission),
    implementing_acts(A).

provenance(impose_fine/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information/2, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_101').

references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% unit       : celex:32024R1689/oj#anx_11
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : gpt-oss:120b-cloud
% prompt sha : 26cee1ad10ea9dc1881bf2f39b14996362a4b720380e0e1fb4ce51b52f737615
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_technical_documentation/2, gloss('technical documentation that providers of general‑purpose AI models must produce'), source('celex:32024R1689/oj#anx_11').

:- pred required_information_item/3, gloss('specific information element that must be included in the technical documentation'), source('celex:32024R1689/oj#anx_11').

:- pred required_item/1, gloss('type of information element required in the technical documentation'), source('celex:32024R1689/oj#anx_11').

required_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

required_information_item(Provider, Model, Item) :-
    required_technical_documentation(Provider, Model),
    required_item(Item).

required_item(general_description).
required_item(detailed_description).
required_item(additional_information).

provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(required_information_item/3, 'celex:32024R1689/oj#anx_11').
provenance(required_item/1, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% unit       : celex:32024R1689/oj#art_50
% context    : CHAPTER IV TRANSPARENCY OBLIGATIONS FOR PROVIDERS AND DEPLOYERS OF CERTAIN AI SYSTEMS
% slice sha  : 31eeb02afca75c8be11035e1eec5140aa0b5055857369cbac2bd3a05f1d6fb4f
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e29b91bf3b16b053deeae9e2eed7a537751699943fe09166f4f782ebd85b2d62
% cached     : False
% title      : Transparency obligations for providers and deployers of certain AI systems
:- pred interacts_directly_with_natural_persons_applies/1, gloss('AI system intended to interact directly with natural persons'), source('celex:32024R1689/oj#art_50').
:- pred obvious_applies/1, gloss('It is obvious to a reasonably well‑informed, observant and circumspect natural person'), source('celex:32024R1689/oj#art_50').
:- pred authorised_for_criminal_offences_applies/1, gloss('AI system is authorised by law to detect, prevent, investigate or prosecute criminal offences'), source('celex:32024R1689/oj#art_50').
:- pred generates_synthetic_content_applies/1, gloss('AI system generates synthetic audio, image, video or text content'), source('celex:32024R1689/oj#art_50').
:- pred assistive_function_applies/1, gloss('AI system performs an assistive function for standard editing'), source('celex:32024R1689/oj#art_50').
:- pred not_substantially_alter_input_applies/1, gloss('AI system does not substantially alter the input data provided by the deployer'), source('celex:32024R1689/oj#art_50').
:- pred generates_text_applies/1, gloss('AI system generates or manipulates text content'), source('celex:32024R1689/oj#art_50').
:- pred public_interest_purpose_applies/1, gloss('The generated text is published with the purpose of informing the public on matters of public interest'), source('celex:32024R1689/oj#art_50').
:- pred human_review_applies/1, gloss('AI‑generated content has undergone a process of human review or editorial control'), source('celex:32024R1689/oj#art_50').

must_inform(Provider, ai_interaction_information(S)) :-
    provider(Provider),
    ai_system(S),
    interacts_directly_with_natural_persons_applies(S),
    \+ obvious_applies(S),
    \+ authorised_for_criminal_offences_applies(S).

must_mark(Provider, output_marked(S)) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content_applies(S),
    \+ assistive_function_applies(S),
    \+ not_substantially_alter_input_applies(S),
    \+ authorised_for_criminal_offences_applies(S).

must_inform(Deployer, operation_of_system(S)) :-
    deployer(Deployer),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_for_criminal_offences_applies(S).

must_process_personal_data(Deployer, S) :-
    deployer(Deployer),
    (emotion_recognition_system(S) ; biometric_categorisation_system(S)),
    \+ authorised_for_criminal_offences_applies(S).

must_disclose(Deployer, artificial_generation(S)) :-
    deployer(Deployer),
    deep_fake(S),
    \+ authorised_for_criminal_offences_applies(S).

must_disclose(Deployer, artificial_generation_text(S)) :-
    deployer(Deployer),
    generates_text_applies(S),
    public_interest_purpose_applies(S),
    \+ authorised_for_criminal_offences_applies(S),
    \+ human_review_applies(S).

must_provide(Actor, clear_distinguishable_information) :-
    (provider(Actor) ; deployer(Actor)).

must_encourage(ai_office, drawing_up_codes_of_practice).
must_facilitate(ai_office, drawing_up_codes_of_practice).

provenance(must_inform/2, 'celex:32024R1689/oj#art_50').
provenance(must_mark/2, 'celex:32024R1689/oj#art_50').
provenance(must_process_personal_data/2, 'celex:32024R1689/oj#art_50').
provenance(must_disclose/2, 'celex:32024R1689/oj#art_50').
provenance(must_provide/2, 'celex:32024R1689/oj#art_50').
provenance(must_encourage/2, 'celex:32024R1689/oj#art_50').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_50').

references('celex:32024R1689/oj#art_50', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_50', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#art_50', 'celex:32016L0680/oj').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_4').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_1').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_2').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_50/par_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#chp_3').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_56/par_6').
references('celex:32024R1689/oj#art_50', 'celex:32024R1689/oj#art_98/par_2').

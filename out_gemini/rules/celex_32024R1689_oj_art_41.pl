% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3e6be2ae71450d6207a5431b6e763c3b4eaf685791770c73437c951470a43e64
% cached     : False
% title      : Common specifications
:- pred permitted_adopt_common_specifications/2, gloss('Commission is permitted to adopt implementing acts establishing common specifications for specific requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred request_conditions_fulfilled/1, gloss('Conditions under Art 41(1)(a) regarding standardisation requests are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred publication_conditions_fulfilled/1, gloss('Conditions under Art 41(1)(b) regarding lack of published harmonised standards are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred must_consult/2, gloss('Entity must consult another body on a matter'), source('celex:32024R1689/oj#art_41').
:- pred must_inform/2, gloss('Entity must inform another body of a matter'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity/2, gloss('An AI system or GPAI model is presumed in conformity with requirements or obligations'), source('celex:32024R1689/oj#art_41').
:- pred conforms_to_common_specification/2, gloss('An AI system or GPAI model conforms to a common specification or parts thereof'), source('celex:32024R1689/oj#art_41').
:- pred must_assess/2, gloss('Entity must assess a proposed standard or information'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal/2, gloss('Commission must repeal implementing acts or parts thereof covering common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_duly_justify/2, gloss('Provider must duly justify equivalent technical solutions when not complying with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_41').

% Paragraph 1: Commission may adopt implementing acts establishing common specifications
permitted_adopt_common_specifications(commission, Scope) :-
    request_conditions_fulfilled(Scope),
    publication_conditions_fulfilled(Scope).

must_consult(commission, advisory_forum(Scope)) :-
    drafting_common_specifications(commission, Scope).

% Paragraph 2: Commission informs the committee before preparing draft implementing act
must_inform(commission, committee_art_22(conditions_fulfilled(Scope))) :-
    preparing_draft_implementing_act(commission, Scope),
    request_conditions_fulfilled(Scope),
    publication_conditions_fulfilled(Scope).

% Paragraph 3: Presumption of conformity
presumed_conformity(Target, Scope) :-
    high_risk_ai_system(Target),
    conforms_to_common_specification(Target, Spec),
    covers_scope(Spec, Scope).

presumed_conformity(Target, Scope) :-
    general_purpose_ai_model(Target),
    conforms_to_common_specification(Target, Spec),
    covers_scope(Spec, Scope).

% Paragraph 4: Assessment and repeal upon publication of harmonised standard
must_assess(commission, harmonised_standard(Std)) :-
    proposed_for_oj_publication(Std).

must_repeal(commission, implementing_act_common_specifications(Spec)) :-
    published_in_oj(harmonised_standard(Std)),
    covers_same_scope(Std, Spec).

% Paragraph 5: Requirement to duly justify equivalent technical solutions
must_duly_justify(Provider, equivalent_technical_solutions(Target, Scope)) :-
    provider(Provider),
    high_risk_ai_system(Target),
    \+ conforms_to_common_specification(Target, _Spec).

must_duly_justify(Provider, equivalent_technical_solutions(Target, Scope)) :-
    provider(Provider),
    general_purpose_ai_model(Target),
    \+ conforms_to_common_specification(Target, _Spec).

% Paragraph 6: Member State informs Commission if specification insufficient
must_inform(MemberState, commission(deficiency(Spec, Scope))) :-
    member_state(MemberState),
    considers_insufficient(MemberState, Spec, Scope).

must_assess(commission, member_state_information(MemberState, Spec)) :-
    must_inform(MemberState, commission(deficiency(Spec, _Scope))).

% Provenance
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(request_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(publication_conditions_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_41').
provenance(conforms_to_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_duly_justify/2, 'celex:32024R1689/oj#art_41').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_41').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').

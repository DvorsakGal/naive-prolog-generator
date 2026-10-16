% unit       : celex:32024R1689/oj#art_7
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 1 Classification of AI systems as high-risk
% slice sha  : df07ff30cbc9ec3e0848c61c523687f56c5820aab439616953067a253ebc382e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 0ed263b1a3335611e354bc791f9061b2aeca8b0b18446feee29afd686d60c53f
% cached     : False
% title      : Amendments to <ref id="celex:32024R1689/oj#anx_3"/>
:- pred permitted_adopt_delegated_act/2, gloss('Commission is empowered to adopt delegated act to amend Annex III'), source('celex:32024R1689/oj#art_7').
:- pred intended_in_annex_3_area/1, gloss('AI system is intended to be used in any of the areas listed in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred poses_equivalent_or_greater_risk/1, gloss('AI system poses risk equivalent to or greater than high-risk AI systems in Annex III'), source('celex:32024R1689/oj#art_7').
:- pred no_longer_poses_significant_risk/1, gloss('high-risk AI system no longer poses any significant risk to fundamental rights, health, or safety'), source('celex:32024R1689/oj#art_7').
:- pred deletion_preserves_overall_protection/1, gloss('deletion of AI system does not decrease overall level of protection under Union law'), source('celex:32024R1689/oj#art_7').

% Paragraph 1: Commission empowered to add or modify use-cases in Annex III
permitted_adopt_delegated_act(Commission, add_or_modify_annex_3(System)) :-
    commission(Commission),
    ai_system(System),
    intended_in_annex_3_area(System),
    poses_equivalent_or_greater_risk(System).

% Paragraph 3: Commission empowered to remove high-risk AI systems from Annex III
permitted_adopt_delegated_act(Commission, remove_from_annex_3(System)) :-
    commission(Commission),
    ai_system(System),
    no_longer_poses_significant_risk(System),
    deletion_preserves_overall_protection(System).

% Provenance
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_7').

% References
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

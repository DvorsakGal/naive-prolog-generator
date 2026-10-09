% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6750c112ca87ac717cbbc7cb3321256d9dea68dbf4b2965faacd23033d53e0fa
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop/2, gloss('Commission must develop guidelines on the practical implementation of the Regulation'), source('celex:32024R1689/oj#art_96').
:- pred must_pay_attention/2, gloss('Commission must pay particular attention to the needs of SMEs, start‑ups, local public authorities and sectors most likely to be affected'), source('celex:32024R1689/oj#art_96').
:- pred must_take_due_account/2, gloss('Guidelines shall take due account of the state of the art, harmonised standards and common specifications'), source('celex:32024R1689/oj#art_96').
:- pred must_update/2, gloss('Commission shall update previously adopted guidelines when requested by Member States or the AI Office, or on its own initiative'), source('celex:32024R1689/oj#art_96').

must_develop(commission,
    guidelines(implementation_of(regulation),
        includes([
            requirements_and_obligations,   % art_8‑art_15, art_25
            prohibited_practices,            % art_5
            substantial_modification,       % art_... (substantial modification)
            transparency_obligations,       % art_50
            relationship_with_harmonisation_legislation, % annex 1
            definition_of_ai_system          % art_3 unp_1 pnt_1
        ]))).

must_pay_attention(commission,
    needs_of([smes_start_ups, local_public_authorities, affected_sectors])).

must_take_due_account(commission,
    guidelines(state_of_the_art, harmonised_standards, common_specifications)).

must_update(commission,
    guidelines(previously_adopted)) :-
    request(member_state);
    request(ai_office);
    initiative(commission).

provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_pay_attention/2, 'celex:32024R1689/oj#art_96').
provenance(must_take_due_account/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').

references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').

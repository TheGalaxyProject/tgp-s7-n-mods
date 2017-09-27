.class Lcom/samsung/android/app/executor/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/app/executor/data/State;
    .locals 25
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v12, "parameterList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v20, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "specVer"

    .line 33
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "1.0"

    .local v3, "specVer":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "seqNum"

    .line 38
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "stepNum":Ljava/lang/Integer;
    const-string/jumbo v2, "isExecuted"

    .line 39
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, "isExecuted":Ljava/lang/Boolean;
    const-string/jumbo v2, "appName"

    .line 40
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "appName":Ljava/lang/String;
    const-string/jumbo v2, "stateId"

    .line 41
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "ruleId"

    .line 42
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "ruleId":Ljava/lang/String;
    const-string/jumbo v2, "isLandingState"

    .line 43
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .local v9, "isLandingState":Ljava/lang/Boolean;
    const-string/jumbo v2, "isLastState"

    .line 44
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .local v10, "isLastState":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v2, "subIntent"

    .line 50
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v11, ""

    .local v11, "subIntent":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "parameters"

    .line 56
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .local v23, "parameters":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .line 58
    .local v18, "i":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_3

    .line 147
    new-instance v2, Lcom/samsung/android/app/executor/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/app/executor/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v2, "specVer"

    .line 34
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "specVer":Ljava/lang/String;
    goto/16 :goto_0

    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    :cond_1
    const-string/jumbo v2, "isLastState"

    .line 45
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    goto :goto_1

    :cond_2
    const-string/jumbo v2, "subIntent"

    .line 51
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "subIntent":Ljava/lang/String;
    goto :goto_2

    .line 59
    .restart local v18    # "i":I
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 61
    .local v22, "parameterObj":Lorg/json/JSONObject;
    new-instance v21, Lcom/samsung/android/app/executor/data/Parameter;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/app/executor/data/Parameter;-><init>()V

    .local v21, "parameter":Lcom/samsung/android/app/executor/data/Parameter;
    const-string/jumbo v2, "slotType"

    .line 63
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, ""

    .line 66
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v2, "slotName"

    .line 69
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    .line 72
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v2, "slotValue"

    .line 75
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, ""

    .line 78
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v2, "slotValueType"

    .line 81
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, ""

    .line 84
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    :goto_7
    const-string/jumbo v2, "CH_ObjectType"

    .line 87
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, ""

    .line 90
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v2, "CH_Objects"

    .line 93
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    .line 123
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    :goto_9
    const-string/jumbo v2, "parameterName"

    .line 126
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, ""

    .line 129
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    :goto_a
    const-string/jumbo v2, "parameterType"

    .line 132
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, ""

    .line 135
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    :goto_b
    const-string/jumbo v2, "isMandatory"

    .line 138
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 141
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    .line 144
    :goto_c
    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v2, "slotType"

    .line 64
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 147
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v21    # "parameter":Lcom/samsung/android/app/executor/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :catch_0
    move-exception v17

    .line 151
    .local v17, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v17    # "e":Lorg/json/JSONException;
    .restart local v3    # "specVer":Ljava/lang/String;
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    .restart local v11    # "subIntent":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v21    # "parameter":Lcom/samsung/android/app/executor/data/Parameter;
    .restart local v22    # "parameterObj":Lorg/json/JSONObject;
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    const-string/jumbo v2, "slotName"

    .line 70
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v2, "slotValue"

    .line 76
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    const-string/jumbo v2, "slotValueType"

    .line 82
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v2, "CH_ObjectType"

    .line 88
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 94
    :cond_9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    const-string/jumbo v2, "CH_Objects"

    .line 95
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .local v14, "CHObjects":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 97
    .local v19, "j":I
    :goto_d
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_a

    .line 121
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto/16 :goto_9

    .line 98
    :cond_a
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 99
    .local v13, "CHObjectObj":Lorg/json/JSONObject;
    new-instance v16, Lcom/samsung/android/app/executor/data/CHObject;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/app/executor/data/CHObject;-><init>()V

    .local v16, "chObject":Lcom/samsung/android/app/executor/data/CHObject;
    const-string/jumbo v2, "CH_Type"

    .line 101
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, ""

    .line 104
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_e
    const-string/jumbo v2, "CH_Value"

    .line 107
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, ""

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_f
    const-string/jumbo v2, "CH_ValueType"

    .line 113
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, ""

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    .line 119
    :goto_10
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    :cond_b
    const-string/jumbo v2, "CH_Type"

    .line 102
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_e

    :cond_c
    const-string/jumbo v2, "CH_Value"

    .line 108
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_f

    :cond_d
    const-string/jumbo v2, "CH_ValueType"

    .line 114
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_10

    .end local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v14    # "CHObjects":Lorg/json/JSONArray;
    .end local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    .end local v16    # "chObject":Lcom/samsung/android/app/executor/data/CHObject;
    .end local v19    # "j":I
    :cond_e
    const-string/jumbo v2, "parameterName"

    .line 127
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_f
    const-string/jumbo v2, "parameterType"

    .line 133
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    const-string/jumbo v2, "isMandatory"

    .line 139
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c
.end method

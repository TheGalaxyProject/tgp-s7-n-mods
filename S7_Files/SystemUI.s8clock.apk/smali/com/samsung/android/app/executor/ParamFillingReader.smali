.class Lcom/samsung/android/app/executor/ParamFillingReader;
.super Ljava/lang/Object;
.source "ParamFillingReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/app/executor/data/ParamFilling;
    .locals 21
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v5, "screenStates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v6, "screenParameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/ScreenParameter;>;"
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v15, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "utterance"

    .line 30
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "utterance":Ljava/lang/String;
    const-string/jumbo v1, "intent"

    .line 31
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "intent":Ljava/lang/String;
    const-string/jumbo v1, "appName"

    .line 32
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "appName":Ljava/lang/String;
    const-string/jumbo v1, "screenStates"

    .line 34
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .local v19, "screenStatesObj":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .line 35
    .local v14, "n":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v14, v1, :cond_0

    const-string/jumbo v1, "screenParameters"

    .line 39
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .local v18, "screenParamsObj":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .line 41
    .local v12, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_1

    .line 118
    new-instance v1, Lcom/samsung/android/app/executor/data/ParamFilling;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/executor/data/ParamFilling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 36
    .end local v12    # "i":I
    .end local v18    # "screenParamsObj":Lorg/json/JSONArray;
    :cond_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 42
    .restart local v12    # "i":I
    .restart local v18    # "screenParamsObj":Lorg/json/JSONArray;
    :cond_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 44
    .local v16, "parameterObj":Lorg/json/JSONObject;
    new-instance v17, Lcom/samsung/android/app/executor/data/ScreenParameter;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/app/executor/data/ScreenParameter;-><init>()V

    .local v17, "screenParameter":Lcom/samsung/android/app/executor/data/ScreenParameter;
    const-string/jumbo v1, "slotType"

    .line 46
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    .line 49
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v1, "slotName"

    .line 52
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    .line 55
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v1, "slotValue"

    .line 58
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    .line 61
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v1, "CH_ObjectType"

    .line 64
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    .line 67
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v1, "CH_Objects"

    .line 70
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 100
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    :goto_6
    const-string/jumbo v1, "parameterName"

    .line 103
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, ""

    .line 106
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    :goto_7
    const-string/jumbo v1, "parameterType"

    .line 109
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, ""

    .line 112
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V

    .line 115
    :goto_8
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v1, "slotType"

    .line 47
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 118
    .end local v2    # "utterance":Ljava/lang/String;
    .end local v3    # "intent":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v16    # "parameterObj":Lorg/json/JSONObject;
    .end local v17    # "screenParameter":Lcom/samsung/android/app/executor/data/ScreenParameter;
    .end local v18    # "screenParamsObj":Lorg/json/JSONArray;
    .end local v19    # "screenStatesObj":Lorg/json/JSONArray;
    :catch_0
    move-exception v11

    .line 121
    .local v11, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v11    # "e":Lorg/json/JSONException;
    .restart local v2    # "utterance":Ljava/lang/String;
    .restart local v3    # "intent":Ljava/lang/String;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "n":I
    .restart local v15    # "obj":Lorg/json/JSONObject;
    .restart local v16    # "parameterObj":Lorg/json/JSONObject;
    .restart local v17    # "screenParameter":Lcom/samsung/android/app/executor/data/ScreenParameter;
    .restart local v18    # "screenParamsObj":Lorg/json/JSONArray;
    .restart local v19    # "screenStatesObj":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    const-string/jumbo v1, "slotName"

    .line 53
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "slotValue"

    .line 59
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v1, "CH_ObjectType"

    .line 65
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 71
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    const-string/jumbo v1, "CH_Objects"

    .line 72
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .local v8, "CHObjects":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .line 74
    .local v13, "j":I
    :goto_9
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v13, v1, :cond_7

    .line 98
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    goto/16 :goto_6

    .line 75
    :cond_7
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    .local v7, "CHObjectObj":Lorg/json/JSONObject;
    new-instance v10, Lcom/samsung/android/app/executor/data/CHObject;

    invoke-direct {v10}, Lcom/samsung/android/app/executor/data/CHObject;-><init>()V

    .local v10, "chObject":Lcom/samsung/android/app/executor/data/CHObject;
    const-string/jumbo v1, "CH_Type"

    .line 78
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, ""

    .line 81
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_a
    const-string/jumbo v1, "CH_Value"

    .line 84
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, ""

    .line 87
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_b
    const-string/jumbo v1, "CH_ValueType"

    .line 90
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, ""

    .line 93
    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    .line 96
    :goto_c
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_8
    const-string/jumbo v1, "CH_Type"

    .line 79
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_a

    :cond_9
    const-string/jumbo v1, "CH_Value"

    .line 85
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const-string/jumbo v1, "CH_ValueType"

    .line 91
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_c

    .end local v7    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v8    # "CHObjects":Lorg/json/JSONArray;
    .end local v9    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/CHObject;>;"
    .end local v10    # "chObject":Lcom/samsung/android/app/executor/data/CHObject;
    .end local v13    # "j":I
    :cond_b
    const-string/jumbo v1, "parameterName"

    .line 104
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v1, "parameterType"

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8
.end method

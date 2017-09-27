.class public Lcom/android/server/ReactiveATCmd;
.super Ljava/lang/Object;
.source "ReactiveATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_REACTIVE:Ljava/lang/String; = "REACTIVE"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NA:Ljava/lang/String; = "NA"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final AT_RESPONSE_STATUS_LOCK:Ljava/lang/String; = "LOCK"

.field private static final AT_RESPONSE_STATUS_LOCK_1:Ljava/lang/String; = "LOCK_1"

.field private static final AT_RESPONSE_STATUS_LOCK_2:Ljava/lang/String; = "LOCK_2"

.field private static final AT_RESPONSE_STATUS_LOCK_3:Ljava/lang/String; = "LOCK_3"

.field private static final AT_RESPONSE_STATUS_LOCK_4:Ljava/lang/String; = "LOCK_4"

.field private static final AT_RESPONSE_STATUS_LOCK_5:Ljava/lang/String; = "LOCK_5"

.field private static final AT_RESPONSE_STATUS_TRIGGERED:Ljava/lang/String; = "TRIGGERED"

.field private static final AT_RESPONSE_STATUS_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final LOCK_STATE_1:I = 0x3

.field private static final LOCK_STATE_2:I = 0x4

.field private static final LOCK_STATE_3:I = 0x5

.field private static final LOCK_STATE_4:I = 0x6

.field private static final LOCK_STATE_5:I = 0x7

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I

.field private rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sput-object p1, Lcom/android/server/ReactiveATCmd;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 55
    return-void
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 240
    .local v2, "result":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "params":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 249
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "result":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 244
    .restart local v2    # "result":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 64
    .local v0, "response":Ljava/lang/String;
    const-string/jumbo v0, "REACTIVE"

    .line 65
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 71
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "params":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    .line 74
    const-string/jumbo v11, "1,0,0"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 75
    const-string/jumbo v11, "2,0,"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 76
    const-string/jumbo v11, "2,1,"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 79
    .local v10, "supportedParams":[Ljava/lang/String;
    if-nez v5, :cond_0

    .line 80
    const-string/jumbo v11, "NG (INVALID_PARAM)"

    return-object v11

    .line 82
    :cond_0
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    if-nez v11, :cond_1

    .line 83
    const-string/jumbo v11, "NG (FAILED CONNECTION)"

    return-object v11

    .line 85
    :cond_1
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v11

    if-nez v11, :cond_2

    .line 86
    const-string/jumbo v11, "NG (FAILED CONNECTION)"

    return-object v11

    .line 89
    :cond_2
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 94
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getRawServiceValueForAtCommand()I

    move-result v0

    .line 98
    .local v0, "appliedSolution":I
    packed-switch v0, :pswitch_data_0

    .line 159
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 160
    .local v9, "rl_flag":I
    move v3, v9

    .line 164
    .end local v9    # "rl_flag":I
    .local v3, "flag":I
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    .end local v0    # "appliedSolution":I
    .end local v3    # "flag":I
    :goto_1
    return-object v7

    .line 102
    .restart local v0    # "appliedSolution":I
    :pswitch_0
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 103
    .local v4, "frp_flag":I
    move v3, v4

    .line 104
    .restart local v3    # "flag":I
    goto :goto_0

    .line 108
    .end local v3    # "flag":I
    .end local v4    # "frp_flag":I
    :pswitch_1
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 109
    .restart local v4    # "frp_flag":I
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 111
    .restart local v9    # "rl_flag":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 112
    move v3, v9

    .restart local v3    # "flag":I
    goto :goto_0

    .line 113
    .end local v3    # "flag":I
    :cond_3
    const/4 v11, 0x2

    if-ne v4, v11, :cond_4

    .line 114
    move v3, v4

    .restart local v3    # "flag":I
    goto :goto_0

    .line 115
    .end local v3    # "flag":I
    :cond_4
    if-nez v4, :cond_5

    .line 116
    if-nez v9, :cond_5

    .line 117
    const/4 v3, 0x0

    .restart local v3    # "flag":I
    goto :goto_0

    .line 118
    .end local v3    # "flag":I
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_6

    .line 119
    if-nez v9, :cond_6

    .line 120
    const/4 v3, 0x3

    .restart local v3    # "flag":I
    goto :goto_0

    .line 121
    .end local v3    # "flag":I
    :cond_6
    if-nez v4, :cond_7

    .line 122
    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    .line 123
    const/4 v3, 0x4

    .restart local v3    # "flag":I
    goto :goto_0

    .line 124
    .end local v3    # "flag":I
    :cond_7
    const/4 v11, 0x1

    if-ne v4, v11, :cond_8

    .line 125
    const/4 v11, 0x1

    if-ne v9, v11, :cond_8

    .line 126
    const/4 v3, 0x6

    .restart local v3    # "flag":I
    goto :goto_0

    .line 128
    .end local v3    # "flag":I
    :cond_8
    move v3, v9

    .restart local v3    # "flag":I
    goto :goto_0

    .line 133
    .end local v3    # "flag":I
    .end local v4    # "frp_flag":I
    .end local v9    # "rl_flag":I
    :pswitch_2
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v4

    .line 134
    .restart local v4    # "frp_flag":I
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v9

    .line 136
    .restart local v9    # "rl_flag":I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_9

    .line 137
    move v3, v9

    .restart local v3    # "flag":I
    goto :goto_0

    .line 138
    .end local v3    # "flag":I
    :cond_9
    const/4 v11, 0x2

    if-ne v4, v11, :cond_a

    .line 139
    move v3, v4

    .restart local v3    # "flag":I
    goto :goto_0

    .line 140
    .end local v3    # "flag":I
    :cond_a
    if-nez v4, :cond_b

    .line 141
    if-nez v9, :cond_b

    .line 142
    const/4 v3, 0x0

    .restart local v3    # "flag":I
    goto :goto_0

    .line 143
    .end local v3    # "flag":I
    :cond_b
    const/4 v11, 0x1

    if-ne v4, v11, :cond_c

    .line 144
    if-nez v9, :cond_c

    .line 145
    const/4 v3, 0x3

    .restart local v3    # "flag":I
    goto/16 :goto_0

    .line 146
    .end local v3    # "flag":I
    :cond_c
    if-nez v4, :cond_d

    .line 147
    const/4 v11, 0x1

    if-ne v9, v11, :cond_d

    .line 148
    const/4 v3, 0x5

    .restart local v3    # "flag":I
    goto/16 :goto_0

    .line 149
    .end local v3    # "flag":I
    :cond_d
    const/4 v11, 0x1

    if-ne v4, v11, :cond_e

    .line 150
    const/4 v11, 0x1

    if-ne v9, v11, :cond_e

    .line 151
    const/4 v3, 0x7

    .restart local v3    # "flag":I
    goto/16 :goto_0

    .line 153
    .end local v3    # "flag":I
    :cond_e
    move v3, v9

    .restart local v3    # "flag":I
    goto/16 :goto_0

    .line 167
    .end local v4    # "frp_flag":I
    .end local v9    # "rl_flag":I
    :pswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "UNLOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 171
    :pswitch_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 175
    :pswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "TRIGGERED"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 179
    :pswitch_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 183
    :pswitch_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 187
    :pswitch_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 191
    :pswitch_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_4"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 195
    :pswitch_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "LOCK_5"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 204
    .end local v0    # "appliedSolution":I
    .end local v3    # "flag":I
    :cond_f
    const/4 v11, 0x1

    aget-object v11, v10, v11

    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 206
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 207
    .local v1, "data":[B
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionAccept([B)[B

    move-result-object v6

    .line 209
    .local v6, "response":[B
    if-eqz v6, :cond_10

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 212
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v12}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getErrorCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 215
    .end local v1    # "data":[B
    .end local v6    # "response":[B
    :cond_11
    const/4 v11, 0x2

    aget-object v11, v10, v11

    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 217
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 218
    .restart local v1    # "data":[B
    iget-object v11, p0, Lcom/android/server/ReactiveATCmd;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->sessionComplete([B)I

    move-result v8

    .line 220
    .local v8, "ret":I
    if-nez v8, :cond_12

    .line 221
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "OK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 223
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 226
    .end local v1    # "data":[B
    .end local v8    # "ret":I
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "NG (INVALID_PARAM)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 164
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

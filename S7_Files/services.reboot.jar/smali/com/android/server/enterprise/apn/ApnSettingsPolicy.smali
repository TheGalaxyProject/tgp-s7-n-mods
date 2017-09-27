.class public Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field mMDMConfigVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 81
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 83
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 85
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->dunRequired:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 91
    const-string/jumbo v0, "18"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    .line 118
    iput-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method private enforceApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_APN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 108
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_APN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 107
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 5
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.sec.MDM_APN"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 114
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_APN"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 113
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 410
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 411
    .local v7, "telMan":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-eqz v9, :cond_0

    .line 412
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 413
    :cond_0
    const-string/jumbo v9, "ApnSettingsPolicyService"

    const-string/jumbo v10, "No SIM "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-object v8

    .line 418
    :cond_1
    const-string/jumbo v9, "gsm.sim.operator.numeric"

    .line 417
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "numeric":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 421
    .local v0, "APNLIST_SELECTION":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 424
    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 425
    const-string/jumbo v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "arrayNumeric":[Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v1

    if-ge v2, v9, :cond_4

    .line 431
    aget-object v6, v1, v2

    .line 432
    .local v6, "numericIndividual":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_2

    .line 434
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "mcc":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, "mnc":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "(mcc = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 440
    const-string/jumbo v10, " AND "

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 441
    const-string/jumbo v10, "mnc"

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 441
    const-string/jumbo v10, " = "

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 441
    const-string/jumbo v10, "\""

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 441
    const-string/jumbo v10, "\")"

    .line 439
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_2

    .line 444
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    .end local v1    # "arrayNumeric":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "numericIndividual":Ljava/lang/String;
    :cond_3
    new-array v1, v10, [Ljava/lang/String;

    aput-object v5, v1, v11

    .restart local v1    # "arrayNumeric":[Ljava/lang/String;
    goto/16 :goto_0

    .line 450
    .end local v1    # "arrayNumeric":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v0, v8

    .end local v0    # "APNLIST_SELECTION":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "ColumnName"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 611
    const-string/jumbo v1, ""

    .line 613
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    if-nez v1, :cond_0

    .line 615
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :cond_0
    :goto_0
    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 96
    const-string/jumbo v1, "enterprise_policy_new"

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 13
    .param p1, "apId"    # J

    .prologue
    .line 370
    const/4 v8, 0x0

    .line 371
    .local v8, "isValid":Z
    const/4 v6, 0x0

    .line 373
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    cmp-long v0, v4, p1

    if-gez v0, :cond_5

    .line 374
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    .line 375
    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "numeric"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "type"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 378
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    .line 379
    .local v10, "subId":I
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 380
    const-string/jumbo v3, "phone"

    .line 379
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 381
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11, v10}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, "numeric":Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 383
    .local v1, "url":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 384
    .local v6, "c":Landroid/database/Cursor;
    const-string/jumbo v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 386
    .local v8, "isValid":Z
    if-eqz v8, :cond_1

    .line 387
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    .line 393
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 399
    .end local v8    # "isValid":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v10    # "subId":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    return v8

    .line 388
    .restart local v1    # "url":Landroid/net/Uri;
    .restart local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "isValid":Z
    .restart local v9    # "numeric":Ljava/lang/String;
    .restart local v10    # "subId":I
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 387
    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 387
    if-eqz v0, :cond_1

    goto :goto_0

    .line 396
    .end local v1    # "url":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "isValid":Z
    .end local v9    # "numeric":Ljava/lang/String;
    .end local v10    # "subId":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v7

    .line 397
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    if-eqz v6, :cond_2

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 398
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 399
    if-eqz v6, :cond_4

    .line 400
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_4
    throw v0

    .line 403
    .end local v2    # "ID_PROJECTION":[Ljava/lang/String;
    .local v6, "c":Landroid/database/Cursor;
    .local v8, "isValid":Z
    :cond_5
    const-string/jumbo v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "isNewAp"    # Z
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 632
    if-eqz p1, :cond_2

    .line 633
    if-nez p4, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    :goto_1
    const-string/jumbo v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void

    .line 633
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_2
    if-eqz p4, :cond_0

    .line 637
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateProtocol(Ljava/lang/String;)Z
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    return v1

    .line 704
    :cond_0
    const-string/jumbo v0, "IP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 708
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 704
    :cond_2
    const-string/jumbo v0, "IPV6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "IPV4V6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 710
    return v1
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 643
    if-nez p1, :cond_0

    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 39
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "isNewAp"    # Z
    .param p3, "apnSettings"    # Lcom/samsung/android/knox/net/apn/ApnSettings;

    .prologue
    monitor-enter p0

    .line 185
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/16 v31, 0x1

    .line 187
    .local v31, "success":Z
    const-wide/16 v28, -0x1

    .line 188
    .local v28, "rowId":J
    const/4 v11, 0x0

    .local v11, "devMCC":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "devMNC":Ljava/lang/String;
    const/4 v13, 0x0

    .line 190
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 187
    const-wide/16 v36, -0x1

    monitor-exit p0

    .line 191
    return-wide v36

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v6

    .line 194
    .local v6, "apId":J
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v34

    .line 195
    .local v34, "user":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v30

    .line 196
    .local v30, "server":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v22

    .line 197
    .local v22, "password":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v25

    .line 198
    .local v25, "proxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v23

    .line 199
    .local v23, "port":I
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, "mmsProxy":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v19

    .line 201
    .local v19, "mmsc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "apType":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v10

    .line 203
    .local v10, "authType":I
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 204
    .local v21, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "apn":Ljava/lang/String;
    if-eqz v21, :cond_1

    if-nez v9, :cond_2

    .line 208
    :cond_1
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "Invalid value"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const-wide/16 v36, -0x1

    monitor-exit p0

    return-wide v36

    .line 212
    :cond_2
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x41

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_3

    .line 213
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "APN name maximum length (65)"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    const-wide/16 v36, -0x1

    monitor-exit p0

    return-wide v36

    .line 216
    :cond_3
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x78

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_4

    .line 217
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "APN excedes maximum length (120)"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    const-wide/16 v36, -0x1

    monitor-exit p0

    return-wide v36

    .line 220
    :cond_4
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 221
    .local v16, "mcc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 222
    .local v20, "mnc":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "mmsPort":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 225
    .local v24, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_5

    .line 226
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "Invalid protocol!"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    const-wide/16 v36, -0x1

    monitor-exit p0

    return-wide v36

    .line 230
    :cond_5
    :try_start_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 231
    .local v26, "roamingProtocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateProtocol(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_6

    .line 232
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "Invalid Roaming Protocol!"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    const-wide/16 v36, -0x1

    monitor-exit p0

    return-wide v36

    .line 239
    :cond_6
    :try_start_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 240
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 241
    const/4 v15, -0x1

    .line 243
    .local v15, "iMmsPort":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_7

    const-string/jumbo v36, "*"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_7

    .line 244
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 247
    :cond_7
    if-nez p2, :cond_1c

    const-wide/16 v36, 0x1

    cmp-long v36, v36, v6

    if-lez v36, :cond_1c

    .line 251
    :cond_8
    :goto_0
    const/16 v31, 0x0

    .line 252
    if-nez p2, :cond_9

    const-wide/16 v36, 0x1

    cmp-long v36, v36, v6

    if-lez v36, :cond_9

    .line 253
    const-string/jumbo v36, "ApnSettingsPolicyService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_9
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_b

    .line 255
    :cond_a
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap name"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_d

    .line 257
    :cond_c
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_f

    .line 259
    :cond_e
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_f
    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v36

    if-nez v36, :cond_11

    .line 261
    :cond_10
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_11
    const/16 v36, -0x1

    move/from16 v0, v36

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 263
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap port"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_12
    const/16 v36, -0x1

    move/from16 v0, v36

    if-le v0, v15, :cond_13

    .line 265
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_13
    const/16 v36, -0x2

    move/from16 v0, v36

    if-gt v0, v10, :cond_14

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ge v0, v10, :cond_15

    .line 267
    :cond_14
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    .end local v15    # "iMmsPort":I
    :cond_15
    :goto_1
    if-eqz v31, :cond_1b

    .line 276
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    .line 277
    const-string/jumbo v37, "phone"

    .line 276
    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    .line 278
    .local v32, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v32 .. v32}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    if-eqz v13, :cond_16

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v37, 0x4

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_16

    .line 282
    const/16 v36, 0x0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "devMCC":Ljava/lang/String;
    const/16 v36, 0x3

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 289
    .end local v11    # "devMCC":Ljava/lang/String;
    .end local v12    # "devMNC":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v35, "values":Landroid/content/ContentValues;
    const-string/jumbo v36, "name"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v37, "numeric"

    .line 303
    if-eqz v16, :cond_17

    if-nez v20, :cond_1d

    :cond_17
    const/16 v36, 0x0

    .line 302
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string/jumbo v36, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v36, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v36, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v36, "user"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v36, "server"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v36, "password"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v36, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v37, "port"

    if-ltz v23, :cond_1e

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v36, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v36, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v36, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz p2, :cond_20

    .line 318
    const-string/jumbo v36, "authtype"

    const/16 v37, -0x2

    move/from16 v0, v37

    if-ge v0, v10, :cond_1f

    const/16 v37, 0x4

    move/from16 v0, v37

    if-le v0, v10, :cond_1f

    .end local v10    # "authType":I
    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :cond_18
    :goto_5
    const-string/jumbo v36, "type"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz v12, :cond_19

    if-eqz v11, :cond_19

    .line 326
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19

    .line 327
    const-string/jumbo v36, "current"

    const/16 v37, 0x1

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    move/from16 v36, v0

    const/16 v37, 0x11

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_1a

    .line 334
    const-string/jumbo v36, "protocol"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v36, "roaming_protocol"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1a
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->size()I

    move-result v36

    if-lez v36, :cond_24

    .line 339
    if-eqz p2, :cond_22

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 342
    sget-object v37, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 341
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v33

    .line 343
    .local v33, "url":Landroid/net/Uri;
    if-eqz v33, :cond_21

    const/16 v31, 0x1

    .line 344
    .local v31, "success":Z
    :goto_6
    if-eqz v31, :cond_1b

    .line 345
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp Created rowUri : "

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static/range {v33 .. v33}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v28

    .end local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v31    # "success":Z
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .end local v33    # "url":Landroid/net/Uri;
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_1b
    :goto_7
    monitor-exit p0

    .line 366
    return-wide v28

    .line 248
    .restart local v10    # "authType":I
    .local v11, "devMCC":Ljava/lang/String;
    .restart local v12    # "devMNC":Ljava/lang/String;
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v15    # "iMmsPort":I
    .local v31, "success":Z
    :cond_1c
    if-eqz v16, :cond_8

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_8

    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_8

    .line 249
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v36

    if-eqz v36, :cond_8

    .line 250
    const/16 v36, -0x1

    move/from16 v0, v36

    move/from16 v1, v23

    if-gt v0, v1, :cond_8

    const/16 v36, -0x1

    move/from16 v0, v36

    if-gt v0, v15, :cond_8

    const/16 v36, -0x2

    move/from16 v0, v36

    if-gt v0, v10, :cond_8

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ge v0, v10, :cond_15

    goto/16 :goto_0

    .line 269
    .end local v15    # "iMmsPort":I
    :catch_0
    move-exception v14

    .line 270
    .local v14, "e":Ljava/lang/Exception;
    const/16 v31, 0x0

    .line 271
    :try_start_9
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .end local v6    # "apId":J
    .end local v8    # "apType":Ljava/lang/String;
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "authType":I
    .end local v11    # "devMCC":Ljava/lang/String;
    .end local v12    # "devMNC":Ljava/lang/String;
    .end local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "mcc":Ljava/lang/String;
    .end local v17    # "mmsPort":Ljava/lang/String;
    .end local v18    # "mmsProxy":Ljava/lang/String;
    .end local v19    # "mmsc":Ljava/lang/String;
    .end local v20    # "mnc":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "password":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "protocol":Ljava/lang/String;
    .end local v25    # "proxy":Ljava/lang/String;
    .end local v26    # "roamingProtocol":Ljava/lang/String;
    .end local v28    # "rowId":J
    .end local v30    # "server":Ljava/lang/String;
    .end local v31    # "success":Z
    .end local v34    # "user":Ljava/lang/String;
    :catchall_0
    move-exception v36

    monitor-exit p0

    throw v36

    .line 303
    .restart local v6    # "apId":J
    .restart local v8    # "apType":Ljava/lang/String;
    .restart local v9    # "apn":Ljava/lang/String;
    .restart local v10    # "authType":I
    .local v13, "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v16    # "mcc":Ljava/lang/String;
    .restart local v17    # "mmsPort":Ljava/lang/String;
    .restart local v18    # "mmsProxy":Ljava/lang/String;
    .restart local v19    # "mmsc":Ljava/lang/String;
    .restart local v20    # "mnc":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "password":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "protocol":Ljava/lang/String;
    .restart local v25    # "proxy":Ljava/lang/String;
    .restart local v26    # "roamingProtocol":Ljava/lang/String;
    .restart local v28    # "rowId":J
    .restart local v30    # "server":Ljava/lang/String;
    .restart local v31    # "success":Z
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v34    # "user":Ljava/lang/String;
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_1d
    :try_start_a
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_2

    .line 312
    :cond_1e
    const-string/jumbo v36, ""

    goto/16 :goto_3

    .line 319
    :cond_1f
    sget v10, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    .line 320
    :cond_20
    if-nez p2, :cond_18

    const/16 v36, -0x2

    move/from16 v0, v36

    if-ge v0, v10, :cond_18

    const/16 v36, 0x4

    move/from16 v0, v36

    if-le v0, v10, :cond_18

    .line 321
    const-string/jumbo v36, "authtype"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 362
    .end local v10    # "authType":I
    .end local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .end local v31    # "success":Z
    .end local v32    # "tm":Landroid/telephony/TelephonyManager;
    .end local v35    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 363
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_7

    .line 343
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "devSimOperatorNumeric":Ljava/lang/String;
    .restart local v31    # "success":Z
    .restart local v32    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v33    # "url":Landroid/net/Uri;
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_21
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 350
    .end local v33    # "url":Landroid/net/Uri;
    :cond_22
    :try_start_c
    sget-object v36, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 351
    .restart local v33    # "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 352
    const/16 v37, 0x0

    const/16 v38, 0x0

    .line 351
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 353
    .local v27, "rowCount":I
    if-lez v27, :cond_23

    const/16 v31, 0x1

    .line 354
    .local v31, "success":Z
    :goto_8
    if-eqz v31, :cond_1b

    .line 355
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp Updated rowUri : "

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static/range {v33 .. v33}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    goto/16 :goto_7

    .line 353
    .local v31, "success":Z
    :cond_23
    const/16 v31, 0x0

    goto :goto_8

    .line 360
    .end local v27    # "rowCount":I
    .end local v33    # "url":Landroid/net/Uri;
    :cond_24
    const-string/jumbo v36, "ApnSettingsPolicyService"

    const-string/jumbo v37, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v36 .. v37}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_7
.end method

.method public declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 156
    const/4 v1, -0x1

    .line 158
    .local v1, "rowCount":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 160
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p2

    if-lez v4, :cond_0

    .line 161
    const-string/jumbo v4, "ApnSettingsPolicyService"

    const-string/jumbo v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 162
    return v3

    .line 165
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 166
    .local v2, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 167
    const-string/jumbo v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    if-lez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit p0

    return v3

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 19
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 455
    const/4 v12, 0x0

    .line 456
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 457
    .local v8, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    const/16 v2, 0x11

    new-array v4, v2, [Ljava/lang/String;

    .line 458
    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string/jumbo v2, "name"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string/jumbo v2, "mcc"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const-string/jumbo v2, "mnc"

    const/4 v3, 0x3

    aput-object v2, v4, v3

    const-string/jumbo v2, "apn"

    const/4 v3, 0x4

    aput-object v2, v4, v3

    .line 459
    const-string/jumbo v2, "user"

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const-string/jumbo v2, "server"

    const/4 v3, 0x6

    aput-object v2, v4, v3

    const-string/jumbo v2, "password"

    const/4 v3, 0x7

    aput-object v2, v4, v3

    const-string/jumbo v2, "proxy"

    const/16 v3, 0x8

    aput-object v2, v4, v3

    const-string/jumbo v2, "port"

    const/16 v3, 0x9

    aput-object v2, v4, v3

    .line 460
    const-string/jumbo v2, "mmsproxy"

    const/16 v3, 0xa

    aput-object v2, v4, v3

    const-string/jumbo v2, "mmsport"

    const/16 v3, 0xb

    aput-object v2, v4, v3

    const-string/jumbo v2, "mmsc"

    const/16 v3, 0xc

    aput-object v2, v4, v3

    const-string/jumbo v2, "authtype"

    const/16 v3, 0xd

    aput-object v2, v4, v3

    .line 461
    const-string/jumbo v2, "type"

    const/16 v3, 0xe

    aput-object v2, v4, v3

    const-string/jumbo v2, "protocol"

    const/16 v3, 0xf

    aput-object v2, v4, v3

    const-string/jumbo v2, "roaming_protocol"

    const/16 v3, 0x10

    aput-object v2, v4, v3

    .line 463
    .local v4, "columns":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "APNLIST_SELECTION":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 469
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 468
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 470
    .local v12, "cursor":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 471
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .local v9, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 474
    :cond_0
    new-instance v10, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v10}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 475
    .local v10, "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 476
    .local v14, "id":J
    invoke-virtual {v10, v14, v15}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 477
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 479
    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 481
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 482
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v18

    .line 486
    .local v18, "strPort":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 487
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 488
    .local v16, "port":I
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 490
    .end local v16    # "port":I
    :cond_1
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 491
    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 492
    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 493
    const-string/jumbo v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 494
    .local v17, "strAuthType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 495
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 496
    .local v11, "authType":I
    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 498
    .end local v11    # "authType":I
    :cond_2
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 502
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 503
    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    .line 505
    :cond_3
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .end local v10    # "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v14    # "id":J
    .end local v17    # "strAuthType":Ljava/lang/String;
    .end local v18    # "strPort":Ljava/lang/String;
    :cond_4
    move-object v8, v9

    .line 513
    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    :cond_5
    if-eqz v12, :cond_6

    .line 514
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 516
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_0
    return-object v8

    .line 510
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    :catch_0
    move-exception v13

    .line 511
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .local v13, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    if-eqz v12, :cond_6

    .line 514
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 512
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 513
    :goto_2
    if-eqz v12, :cond_7

    .line 514
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_7
    throw v2

    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .local v8, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    goto :goto_2

    .line 510
    .end local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .restart local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    :catch_1
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    .restart local v8    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/apn/ApnSettings;>;"
    goto :goto_1
.end method

.method public getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 18
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    .line 520
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 521
    const/4 v10, 0x0

    .line 526
    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x1

    cmp-long v2, v4, p2

    if-lez v2, :cond_0

    .line 527
    const-string/jumbo v2, "ApnSettingsPolicyService"

    const-string/jumbo v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/4 v2, 0x0

    return-object v2

    .line 531
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 532
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 533
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 534
    new-instance v8, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    .line 535
    .local v8, "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const-string/jumbo v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 536
    .local v12, "id":J
    invoke-virtual {v8, v12, v13}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    .line 537
    const-string/jumbo v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 539
    const-string/jumbo v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 540
    const-string/jumbo v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 541
    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 542
    const-string/jumbo v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 543
    const-string/jumbo v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 544
    const-string/jumbo v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 545
    const-string/jumbo v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 546
    .local v16, "strPort":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 548
    .local v14, "port":I
    invoke-virtual {v8, v14}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    .line 550
    .end local v14    # "port":I
    :cond_1
    const-string/jumbo v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 551
    const-string/jumbo v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 552
    const-string/jumbo v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 553
    const-string/jumbo v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 554
    .local v15, "strAuthType":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 555
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 556
    .local v9, "authType":I
    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    .line 558
    .end local v9    # "authType":I
    :cond_2
    const-string/jumbo v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    .line 559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v4, 0x11

    if-lt v2, v4, :cond_3

    .line 562
    const-string/jumbo v2, "protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    .line 563
    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :cond_3
    if-eqz v10, :cond_4

    .line 571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_4
    return-object v8

    .line 570
    .end local v8    # "apnSettings":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v12    # "id":J
    .end local v15    # "strAuthType":Ljava/lang/String;
    .end local v16    # "strPort":Ljava/lang/String;
    :cond_5
    if-eqz v10, :cond_6

    .line 571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 573
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 567
    :catch_0
    move-exception v11

    .line 568
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    if-eqz v10, :cond_6

    .line 571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 569
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 570
    if-eqz v10, :cond_7

    .line 571
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_7
    throw v2
.end method

.method public getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 11
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 579
    const/4 v6, 0x0

    .line 580
    .local v6, "apn":Lcom/samsung/android/knox/net/apn/ApnSettings;
    const/4 v7, 0x0

    .line 582
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "ApnSettingsPolicyService"

    const-string/jumbo v1, "getPreferredApn():"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    .line 586
    const-string/jumbo v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "apn"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 587
    const-string/jumbo v5, "name ASC"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 585
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 589
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 591
    .local v8, "apnId":J
    const-string/jumbo v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 593
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 602
    .end local v6    # "apn":Lcom/samsung/android/knox/net/apn/ApnSettings;
    .end local v8    # "apnId":J
    :cond_0
    if-eqz v7, :cond_1

    .line 603
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v6

    .line 598
    .restart local v6    # "apn":Lcom/samsung/android/knox/net/apn/ApnSettings;
    :catch_0
    move-exception v10

    .line 599
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPreferredApn Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    if-eqz v7, :cond_1

    .line 603
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 601
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 602
    if-eqz v7, :cond_2

    .line 603
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_2
    throw v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 712
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 680
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 685
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 697
    return-void
.end method

.method public declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Lcom/samsung/android/knox/ContextInfo;
    .param p2, "apId"    # J

    .prologue
    const-wide/16 v6, 0x0

    monitor-enter p0

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "success":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    cmp-long v4, v6, p2

    if-eqz v4, :cond_1

    cmp-long v4, v6, p2

    if-lez v4, :cond_1

    .line 132
    :try_start_1
    const-string/jumbo v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p2    # "apId":J
    :cond_0
    :goto_0
    monitor-exit p0

    .line 146
    return v2

    .line 134
    .restart local p2    # "apId":J
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "apn_id"

    cmp-long v5, v6, p2

    if-nez v5, :cond_2

    const-wide/16 p2, -0x1

    .end local p2    # "apId":J
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    .line 138
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 137
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, "rowCount":I
    if-lez v1, :cond_3

    const/4 v2, 0x1

    .line 140
    :goto_1
    const-string/jumbo v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    .end local v1    # "rowCount":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 139
    .restart local v1    # "rowCount":I
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.class public Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;
.super Ljava/lang/Object;
.source "EnterpriseBillingTelephonyInterface.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EnterpriseBillingTelephonyInterface"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/knox/net/billing/EnterpriseApn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v11, 0x0

    .line 36
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    const-string/jumbo v3, " getCurrentActiveApns - start "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/16 v17, 0x0

    .line 40
    .local v17, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v17    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    if-eqz v17, :cond_3

    .line 45
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    const-string/jumbo v3, " getCurrentActiveApns - telephony manager not null "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 49
    const/4 v13, 0x0

    .line 50
    .local v13, "mcc":Ljava/lang/String;
    const/4 v14, 0x0

    .line 52
    .local v14, "mnc":Ljava/lang/String;
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    const-string/jumbo v3, " getCurrentActiveApns - SystemProperties -  Sim state valid "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v16

    .line 55
    .local v16, "phoneId":I
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getCurrentActiveApns - phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    move/from16 v0, v16

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 59
    .local v15, "numeric":Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 61
    .local v13, "mcc":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 64
    .end local v13    # "mcc":Ljava/lang/String;
    .end local v14    # "mnc":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    const-string/jumbo v3, " getCurrentActiveApns - Sim state valid "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 67
    const/4 v9, 0x0

    .line 70
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 73
    .local v18, "token":J
    :try_start_1
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getCurrentActiveApns - mcc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mnc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 76
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "apn"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 77
    const-string/jumbo v5, "mcc= ? AND mnc = ?"

    .line 78
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    .line 79
    const/4 v7, 0x0

    .line 74
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 80
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    :cond_1
    move-object v12, v11

    .line 82
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "apn":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    if-nez v12, :cond_6

    .line 85
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    :goto_1
    :try_start_3
    new-instance v2, Lcom/samsung/android/knox/net/billing/EnterpriseApn;

    invoke-direct {v2, v8, v13, v14}, Lcom/samsung/android/knox/net/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 94
    .end local v8    # "apn":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    if-eqz v9, :cond_3

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v15    # "numeric":Ljava/lang/String;
    .end local v16    # "phoneId":I
    .end local v18    # "token":J
    :cond_3
    const-string/jumbo v2, "EnterpriseBillingTelephonyInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " getCurrentActiveApns - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v11

    .restart local v8    # "apn":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .restart local v15    # "numeric":Ljava/lang/String;
    .restart local v16    # "phoneId":I
    .restart local v18    # "token":J
    :cond_4
    move-object v11, v12

    .line 83
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    goto :goto_2

    .line 92
    .end local v8    # "apn":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    :catchall_0
    move-exception v2

    .line 94
    :goto_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    if-eqz v9, :cond_5

    .line 96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_5
    throw v2

    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    goto :goto_3

    .line 41
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v15    # "numeric":Ljava/lang/String;
    .end local v16    # "phoneId":I
    .end local v18    # "token":J
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .restart local v17    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v10

    .local v10, "exception":Ljava/lang/NullPointerException;
    goto/16 :goto_0

    .end local v10    # "exception":Ljava/lang/NullPointerException;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .end local v17    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v8    # "apn":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .restart local v15    # "numeric":Ljava/lang/String;
    .restart local v16    # "phoneId":I
    .restart local v18    # "token":J
    :cond_6
    move-object v11, v12

    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/net/billing/EnterpriseApn;>;"
    goto :goto_1
.end method

.method public static getDefaultType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 139
    const-string/jumbo v0, "EnterpriseBillingTelephonyInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultType - apn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v6, 0x0

    .line 141
    .local v6, "apnDefaultType":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 145
    .local v8, "token":J
    const/4 v7, 0x0

    .line 147
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 150
    const-string/jumbo v3, "apn= ? AND mcc= ? AND mnc = ?"

    .line 151
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v4, v10

    iget-object v5, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v5, v4, v10

    iget-object v5, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 152
    const/4 v5, 0x0

    .line 147
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 158
    .end local v6    # "apnDefaultType":Ljava/lang/String;
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    if-eqz v7, :cond_1

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 164
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "token":J
    :cond_1
    return-object v6

    .line 156
    .restart local v6    # "apnDefaultType":Ljava/lang/String;
    .restart local v8    # "token":J
    :catchall_0
    move-exception v0

    .line 158
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    if-eqz v7, :cond_2

    .line 160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_2
    throw v0
.end method

.method public static updateApnType(Landroid/content/Context;Lcom/samsung/android/knox/net/billing/EnterpriseApn;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apn"    # Lcom/samsung/android/knox/net/billing/EnterpriseApn;
    .param p2, "apnType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v4, "EnterpriseBillingTelephonyInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateApnType - updated rows - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "returnValue":I
    if-eqz p1, :cond_0

    .line 114
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 120
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 121
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 123
    const-string/jumbo v6, "apn= ? AND mcc = ? AND mnc = ?"

    .line 124
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->apn:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget-object v8, p1, Lcom/samsung/android/knox/net/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    .line 120
    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "token":J
    :cond_0
    const-string/jumbo v4, "EnterpriseBillingTelephonyInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateApnType - updated rows - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v0

    .line 125
    .restart local v1    # "values":Landroid/content/ContentValues;
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    .line 127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v4
.end method

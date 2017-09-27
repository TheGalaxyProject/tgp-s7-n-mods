.class final Lcom/samsung/android/settings/iris/IrisLockSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "IrisLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    const-string/jumbo v8, "my_irises"

    .line 868
    .local v8, "KEY_MY_IRISES":Ljava/lang/String;
    const-string/jumbo v9, "register_irises"

    .line 869
    .local v9, "KEY_REGISTER_IRISES":Ljava/lang/String;
    const-string/jumbo v2, "change_reset_password"

    .line 870
    .local v2, "KEY_IRIS_PASSWORD":Ljava/lang/String;
    const-string/jumbo v3, "iris_preview_style"

    .line 872
    .local v3, "KEY_IRIS_PREVIEW_STYLE":Ljava/lang/String;
    const-string/jumbo v7, "iris_web_signin"

    .line 873
    .local v7, "KEY_IRIS_WEB_SIGN_IN":Ljava/lang/String;
    const-string/jumbo v5, "iris_samsung_pay"

    .line 874
    .local v5, "KEY_IRIS_SAMSUNG_PAY":Ljava/lang/String;
    const-string/jumbo v10, "com.samsung.android.spay"

    .line 875
    .local v10, "PKG_NAME_SAMSUNGPAY":Ljava/lang/String;
    const-string/jumbo v4, "iris_samsung_pass"

    .line 876
    .local v4, "KEY_IRIS_SAMSUNG_PASS":Ljava/lang/String;
    const-string/jumbo v6, "iris_screen_lock"

    .line 878
    .local v6, "KEY_IRIS_UNLOCK":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v17, "my_irises"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    const-string/jumbo v17, "register_irises"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    const-string/jumbo v17, "change_reset_password"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    const/16 v16, 0x0

    .line 886
    .local v16, "supportIrises":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string/jumbo v18, "com.samsung.android.spay"

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 887
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 888
    .local v12, "bundle":Landroid/os/Bundle;
    const-string/jumbo v17, "com.samsung.android.spay.supportIrises"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 895
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "bundle":Landroid/os/Bundle;
    .end local v16    # "supportIrises":Z
    :goto_0
    const-string/jumbo v17, "com.samsung.android.spay"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz v16, :cond_4

    .line 899
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-eqz v17, :cond_1

    .line 900
    :cond_0
    const-string/jumbo v17, "iris_samsung_pass"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_1
    const-string/jumbo v17, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-nez v17, :cond_3

    .line 904
    :cond_2
    const-string/jumbo v17, "iris_web_signin"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_3
    return-object v15

    .line 891
    .restart local v16    # "supportIrises":Z
    :catch_0
    move-exception v14

    .line 892
    .local v14, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "IrisLockSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to load meta-data, NullPointer: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 889
    .end local v14    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v13

    .line 890
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v17, "IrisLockSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to load meta-data, NameNotFound: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 896
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "supportIrises":Z
    :cond_4
    const-string/jumbo v17, "iris_samsung_pay"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    const/4 v1, 0x0

    return-object v1

    .line 854
    :cond_0
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 855
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const-string/jumbo v1, "android.intent.action.MAIN"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 856
    const-string/jumbo v1, "com.android.settings"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 857
    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisLockSettings"

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 858
    const-class v1, Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 859
    const v1, 0x7f080089

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 860
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

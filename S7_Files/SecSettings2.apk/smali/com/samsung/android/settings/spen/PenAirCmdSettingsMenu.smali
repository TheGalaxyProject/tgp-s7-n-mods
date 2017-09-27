.class public Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PenAirCmdSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private IntentUpdated:Z

.field private bUpdated:Z

.field private mActivity:Landroid/app/Activity;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

.field private mShortcutList:Ljava/lang/String;

.field private mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;-><init>()V

    .line 349
    sput-object v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 87
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    .line 91
    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 65
    return-void
.end method

.method private appsCountSummaryUpdate()V
    .locals 25

    .prologue
    .line 195
    const/16 v18, 0x0

    .line 197
    .local v18, "mSavedAppNums":I
    const/16 v19, 0x0

    .line 198
    .local v19, "mSavedApplist":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 199
    .local v17, "mSavedApp":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 200
    .local v16, "mAppName":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 201
    .local v20, "mSubText":Ljava/lang/String;
    const-string/jumbo v9, ", "

    .line 202
    .local v9, "comma":Ljava/lang/String;
    const-string/jumbo v4, "ar"

    .line 203
    .local v4, "ISO639_ARABIC":Ljava/lang/String;
    const-string/jumbo v5, "ja"

    .line 204
    .local v5, "JAPANESE":Ljava/lang/String;
    const-string/jumbo v3, "zh"

    .line 205
    .local v3, "CHINESE":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 207
    const-string/jumbo v9, "\u060c "

    .line 216
    :cond_0
    :goto_0
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UpdateSavedAirCmd mShortcutList :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 220
    .local v19, "mSavedApplist":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 221
    const/4 v14, 0x0

    .end local v16    # "mAppName":Ljava/lang/String;
    .end local v17    # "mSavedApp":[Ljava/lang/String;
    .local v14, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    .line 223
    aget-object v22, v19, v14

    const-string/jumbo v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "mSavedApp":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 225
    .local v21, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string/jumbo v23, "execute"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/SemExecutableManager;

    .line 227
    .local v13, "em":Lcom/samsung/android/app/SemExecutableManager;
    const-string/jumbo v22, "0"

    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 228
    const/4 v7, 0x0

    .line 229
    .local v7, "ci":Landroid/content/pm/ComponentInfo;
    new-instance v8, Landroid/content/ComponentName;

    const/16 v22, 0x1

    aget-object v22, v17, v22

    const/16 v23, 0x2

    aget-object v23, v17, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v8, "cn":Landroid/content/ComponentName;
    :try_start_0
    const-string/jumbo v22, "A"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 232
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 241
    .end local v7    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_1
    :goto_2
    if-eqz v7, :cond_3

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 266
    .end local v8    # "cn":Landroid/content/ComponentName;
    :cond_2
    :goto_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 267
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 221
    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 208
    .end local v13    # "em":Lcom/samsung/android/app/SemExecutableManager;
    .end local v14    # "i":I
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "mAppName":Ljava/lang/String;
    .local v17, "mSavedApp":[Ljava/lang/String;
    .local v19, "mSavedApplist":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 209
    const-string/jumbo v9, "\u3001"

    goto/16 :goto_0

    .line 210
    :cond_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 211
    const-string/jumbo v9, "\uff0c"

    goto/16 :goto_0

    .line 233
    .end local v16    # "mAppName":Ljava/lang/String;
    .restart local v7    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v13    # "em":Lcom/samsung/android/app/SemExecutableManager;
    .restart local v14    # "i":I
    .local v17, "mSavedApp":[Ljava/lang/String;
    .local v19, "mSavedApplist":[Ljava/lang/String;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    :try_start_1
    const-string/jumbo v22, "S"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 234
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .local v7, "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_2

    .line 235
    .local v7, "ci":Landroid/content/pm/ComponentInfo;
    :cond_7
    const-string/jumbo v22, "P"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 236
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .local v7, "ci":Landroid/content/pm/ComponentInfo;
    goto :goto_2

    .line 238
    .local v7, "ci":Landroid/content/pm/ComponentInfo;
    :catch_0
    move-exception v12

    .line 239
    .local v12, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 246
    .end local v7    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v12    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    const-string/jumbo v22, "1"

    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 247
    if-eqz v13, :cond_9

    .line 248
    const/16 v22, 0x4

    aget-object v22, v17, v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/samsung/android/app/SemExecutableManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v15

    .line 249
    .local v15, "info":Lcom/samsung/android/app/SemExecutableInfo;
    if-eqz v15, :cond_3

    .line 252
    const/4 v6, 0x0

    .line 254
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v22, 0x1

    :try_start_2
    aget-object v22, v17, v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 258
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_5
    if-eqz v6, :cond_2

    .line 259
    const/16 v22, 0x1

    aget-object v22, v17, v22

    invoke-virtual {v15}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 260
    .local v16, "mAppName":Ljava/lang/String;
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mAppName :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 255
    .end local v16    # "mAppName":Ljava/lang/String;
    .restart local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v11

    .line 256
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Fail to get application info : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 263
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "info":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_9
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    const-string/jumbo v23, "ExecuteManager is null"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 269
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 272
    .end local v13    # "em":Lcom/samsung/android/app/SemExecutableManager;
    .end local v17    # "mSavedApp":[Ljava/lang/String;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_b
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    .end local v14    # "i":I
    .end local v19    # "mSavedApplist":[Ljava/lang/String;
    :goto_6
    return-void

    .line 275
    .restart local v14    # "i":I
    .restart local v19    # "mSavedApplist":[Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0c0a

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 278
    .end local v14    # "i":I
    .local v16, "mAppName":Ljava/lang/String;
    .local v17, "mSavedApp":[Ljava/lang/String;
    .local v19, "mSavedApplist":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0c0a

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6
.end method

.method private getShortCutList()V
    .locals 4

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.REQUEST_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "request"

    const-string/jumbo v3, "shortcut_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "PenAirCmdSettingsMenu"

    const-string/jumbo v3, "Failed to get shortcut list, no activity found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEnableState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "isEnable":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 182
    const-string/jumbo v0, "PenAirCmdSettingsMenu"

    const-string/jumbo v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 184
    if-eqz p3, :cond_0

    .line 185
    const-string/jumbo v0, "shortcut_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    .line 181
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    .line 113
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->addPreferencesFromResource(I)V

    .line 114
    const-string/jumbo v0, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 119
    :cond_0
    const-string/jumbo v0, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    const-string/jumbo v0, "key_air_cmd_detachment_option"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.app.spenhub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string/jumbo v0, "about_spen_features"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "about_spen_features_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    const-string/jumbo v0, "spen_contact_us"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "spen_contact_us_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 107
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 291
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 335
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "key_air_cmd_use_minimized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 339
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_use_minimized"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    return v3

    .line 341
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v4, "key_air_cmd_detachment_option"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 342
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 343
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_detachment_option"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    return v3

    .line 346
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 305
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 312
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100178

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3e8

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 314
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 313
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 315
    :cond_3
    const-string/jumbo v2, "spen_contact_us"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 318
    .restart local v1    # "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v2, "about_spen_features"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.app.spenhub"

    const-string/jumbo v4, "com.samsung.android.app.spenhub.ui.SpenhubActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 325
    .restart local v1    # "intent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 326
    :catch_2
    move-exception v0

    .line 327
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 137
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 138
    const-string/jumbo v1, "PenAirCmdSettingsMenu"

    const-string/jumbo v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 140
    const-string/jumbo v4, "air_cmd_apps_and_functions"

    .line 139
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "Nintent":Ljava/lang/String;
    const-string/jumbo v1, "aircommand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    if-eqz v1, :cond_2

    .line 149
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getShortCutList()V

    .line 155
    .end local v0    # "Nintent":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "air_cmd_use_minimized"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_detachment_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    const-string/jumbo v3, "air_button_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 162
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    .line 160
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    return-void

    .line 144
    .restart local v0    # "Nintent":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "shortcut_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    .line 147
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    goto :goto_0

    .line 150
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    goto :goto_0

    .line 153
    .end local v0    # "Nintent":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 155
    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 297
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 296
    return-void
.end method

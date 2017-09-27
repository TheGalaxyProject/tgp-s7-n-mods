.class public Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;
.super Landroid/preference/PreferenceFragment;
.source "DebugPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/DebugPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugPagePref"
.end annotation


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mConfigClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mConfigContainer:Landroid/preference/PreferenceGroup;

.field mDebugFlagClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field mDebugFlagContainer:Landroid/preference/PreferenceGroup;

.field mSystemAnimationScaleContainer:Landroid/preference/PreferenceGroup;

.field mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

.field mTaskAnimationList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "clsObj"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->writeValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updateAnimationScaleValue(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "clsObj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updatePref(Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private addConfigValues()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    if-nez v3, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "%s is not supported."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 245
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    .line 244
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 246
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 247
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getClass()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    .line 251
    new-instance v1, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$3;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 269
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, v5, v3

    .line 270
    .local v0, "flag":Ljava/lang/reflect/Field;
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pref_key_config_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 270
    invoke-direct {p0, v0, v7, v8}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->makePreferenceFromField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    .line 272
    .local v2, "newPref":Landroid/preference/Preference;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1

    .line 273
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 277
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 242
    .end local v0    # "flag":Ljava/lang/reflect/Field;
    .end local v2    # "newPref":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private addDebugFlags()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 197
    :try_start_0
    const-string/jumbo v7, "com.android.systemui.recents.RecentsDebugFlags"

    .line 196
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 198
    .local v5, "recentsFlagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v0, v8, v7

    .line 199
    .local v0, "ch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Static"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 200
    iput-object v0, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "ch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "recentsFlagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;

    if-nez v7, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "%s are not supported."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 210
    iget-object v10, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v6

    .line 209
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 211
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 212
    return-void

    .line 198
    .restart local v0    # "ch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "recentsFlagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "ch":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "recentsFlagCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v3, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$2;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 233
    .local v3, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v2, v7, v6

    .line 235
    .local v2, "flag":Ljava/lang/reflect/Field;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pref_key_debug_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-direct {p0, v2, v12, v9}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->makePreferenceFromField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    .line 237
    .local v4, "newPref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    iget-object v9, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 233
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 194
    .end local v2    # "flag":Ljava/lang/reflect/Field;
    .end local v4    # "newPref":Landroid/preference/Preference;
    :cond_3
    return-void

    .line 204
    .end local v3    # "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_1
.end method

.method private addEtcItems()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "pref_key_systemui_tuner"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "pref_key_finish_recents_activity"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$6;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 346
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "pref_key_show_help"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$7;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 325
    return-void
.end method

.method private addTaskAnimations()V
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    if-nez v7, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "[%s] is disabled."

    new-array v6, v6, [Ljava/lang/Object;

    .line 284
    iget-object v9, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v5

    .line 283
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 285
    iget-object v6, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 286
    return-void

    .line 289
    :cond_0
    new-instance v3, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$4;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 307
    .local v3, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    invoke-static {}, Lcom/android/systemui/recents/DebugPageActivity;->-get0()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v7, v5

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v1, v8, v7

    .line 309
    .local v1, "configVarName":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    invoke-virtual {v10, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 310
    .local v0, "configVar":Ljava/lang/reflect/Field;
    iget-object v10, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationList:Ljava/util/HashSet;

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    .line 313
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pref_key_task_animation_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 312
    invoke-direct {p0, v0, v10, v11}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->makePreferenceFromField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    .line 314
    .local v4, "newPref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 315
    iget-object v10, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v0    # "configVar":Ljava/lang/reflect/Field;
    .end local v4    # "newPref":Landroid/preference/Preference;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "configVarName":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    iget-object v8, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationList:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_2
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 281
    return-void

    :cond_2
    move v5, v6

    .line 322
    goto :goto_2

    .line 316
    .restart local v1    # "configVarName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1
.end method

.method private getConfig()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method private makePreferenceFromField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 8
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "clsObj"    # Ljava/lang/Object;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 155
    invoke-virtual {p1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    new-instance v4, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 187
    .local v4, "newPref":Landroid/preference/Preference;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v4, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 191
    return-object v4

    .line 159
    .end local v4    # "newPref":Landroid/preference/Preference;
    :cond_0
    new-instance v2, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, "etPref":Landroid/preference/EditTextPreference;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    const/4 v3, 0x1

    .line 172
    .local v3, "inputType":I
    :goto_1
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 173
    move-object v4, v2

    .line 176
    .restart local v4    # "newPref":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v5, p3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "defVal":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "defVal":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "inputType":I
    .end local v4    # "newPref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 164
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 163
    if-eqz v5, :cond_4

    .line 165
    :cond_3
    const/16 v3, 0x2002

    .restart local v3    # "inputType":I
    goto :goto_1

    .line 166
    .end local v3    # "inputType":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/recents/DebugPageActivity$Primitives;->isPrimitives(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 167
    const/4 v3, 0x2

    .restart local v3    # "inputType":I
    goto :goto_1

    .line 169
    .end local v3    # "inputType":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "inputType":I
    goto :goto_1
.end method

.method private updateAnimationScaleValue(I)V
    .locals 8
    .param p1, "which"    # I

    .prologue
    .line 466
    packed-switch p1, :pswitch_data_0

    .line 477
    return-void

    .line 468
    :pswitch_0
    :try_start_0
    const-string/jumbo v3, "pref_key_window_animation_scale"

    .line 480
    .local v3, "prefKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 481
    .local v2, "pref":Landroid/preference/ListPreference;
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v7, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v4

    .line 483
    .local v4, "scale":F
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 484
    .local v6, "values":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_1

    .line 485
    aget-object v7, v6, v1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 486
    .local v5, "val":F
    cmpg-float v7, v4, v5

    if-gtz v7, :cond_0

    .line 487
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 488
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    return-void

    .line 471
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/ListPreference;
    .end local v3    # "prefKey":Ljava/lang/String;
    .end local v4    # "scale":F
    .end local v5    # "val":F
    .end local v6    # "values":[Ljava/lang/CharSequence;
    :pswitch_1
    const-string/jumbo v3, "pref_key_transition_animation_scale"

    .restart local v3    # "prefKey":Ljava/lang/String;
    goto :goto_0

    .line 474
    .end local v3    # "prefKey":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "pref_key_animator_duration_scale"

    .restart local v3    # "prefKey":Ljava/lang/String;
    goto :goto_0

    .line 484
    .restart local v1    # "i":I
    .restart local v2    # "pref":Landroid/preference/ListPreference;
    .restart local v4    # "scale":F
    .restart local v5    # "val":F
    .restart local v6    # "values":[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 492
    .end local v5    # "val":F
    :cond_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/ListPreference;
    .end local v3    # "prefKey":Ljava/lang/String;
    .end local v4    # "scale":F
    .end local v6    # "values":[Ljava/lang/CharSequence;
    :goto_2
    return-void

    .line 493
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 466
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updatePref(Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 10
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "clsObj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 440
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 443
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 444
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    move-object v3, v0

    .line 445
    .local v3, "swPref":Landroid/preference/SwitchPreference;
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 446
    .local v5, "val":Z
    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 447
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 439
    .end local v3    # "swPref":Landroid/preference/SwitchPreference;
    .end local v5    # "val":Z
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v2, v0

    .line 450
    .local v2, "etPref":Landroid/preference/EditTextPreference;
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "val":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v2    # "etPref":Landroid/preference/EditTextPreference;
    .end local v4    # "val":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 456
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[In updatePref] IllegalAccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 455
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 458
    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private writeValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "clsObj"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 420
    :try_start_0
    instance-of v2, p3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 421
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/DebugPageActivity$Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "valueOf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 422
    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 421
    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 424
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    return v8

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "errMsg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "%s write failed(val:%s): %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 434
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p3, v4, v8

    const/4 v5, 0x2

    aput-object v1, v4, v5

    .line 433
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 436
    return v7

    .line 431
    .end local v1    # "errMsg":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errMsg":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v3, 0x7f090003

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addPreferencesFromResource(I)V

    .line 90
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mWindowManager:Landroid/view/IWindowManager;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 94
    const-string/jumbo v4, "pref_key_debug_flags"

    .line 93
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagContainer:Landroid/preference/PreferenceGroup;

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addDebugFlags()V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 99
    const-string/jumbo v4, "pref_key_config_values"

    .line 98
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigContainer:Landroid/preference/PreferenceGroup;

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addConfigValues()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 104
    const-string/jumbo v4, "pref_key_system_animation_scales"

    .line 103
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mSystemAnimationScaleContainer:Landroid/preference/PreferenceGroup;

    .line 105
    new-instance v1, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;-><init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V

    .line 137
    .local v1, "listener":Landroid/preference/Preference$OnPreferenceChangeListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mSystemAnimationScaleContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mSystemAnimationScaleContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 139
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationList:Ljava/util/HashSet;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 145
    const-string/jumbo v4, "pref_key_task_animation_values"

    .line 144
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addTaskAnimations()V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addEtcItems()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 384
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 387
    iget-object v5, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;

    if-eqz v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v6, v5

    .line 389
    .local v1, "flag":Ljava/lang/reflect/Field;
    iget-object v8, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mDebugFlagContainer:Landroid/preference/PreferenceGroup;

    .line 390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pref_key_debug_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 389
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 391
    .local v2, "pref":Landroid/preference/Preference;
    invoke-direct {p0, v2, v1, v11}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updatePref(Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 388
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "flag":Ljava/lang/reflect/Field;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updateAnimationScaleValue(I)V

    .line 397
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updateAnimationScaleValue(I)V

    .line 398
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updateAnimationScaleValue(I)V

    .line 400
    iget-object v5, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 402
    iget-object v5, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 403
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "varName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mConfigContainer:Landroid/preference/PreferenceGroup;

    .line 405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pref_key_config_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 406
    .restart local v2    # "pref":Landroid/preference/Preference;
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-direct {p0, v2, v0, v7}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updatePref(Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 409
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationList:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 410
    iget-object v7, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mTaskAnimationContainer:Landroid/preference/PreferenceGroup;

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pref_key_task_animation_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 410
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getConfig()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-direct {p0, v2, v0, v7}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->updatePref(Landroid/preference/Preference;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 402
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "pref":Landroid/preference/Preference;
    .end local v3    # "varName":Ljava/lang/String;
    :cond_2
    return-void
.end method

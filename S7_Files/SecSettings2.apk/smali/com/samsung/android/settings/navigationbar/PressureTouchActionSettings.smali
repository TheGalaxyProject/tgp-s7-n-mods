.class public Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PressureTouchActionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static action_list:[Ljava/lang/String;

.field private static action_menu:[Ljava/lang/String;

.field private static sDbKey:Ljava/lang/String;


# instance fields
.field private mCenterPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

.field private mContext:Landroid/content/Context;

.field private mLeftPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

.field private mRightPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    .line 239
    new-instance v0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings$1;-><init>()V

    .line 238
    sput-object v0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updatePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/String;)V
    .locals 9
    .param p1, "preference"    # Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    :cond_0
    const-string/jumbo v5, "None"

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "info":[Ljava/lang/String;
    aget-object v5, v3, v7

    const-string/jumbo v6, "LaunchApp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v3, v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "appInfo":[Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 127
    new-instance v6, Landroid/content/ComponentName;

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x200

    .line 126
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 128
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0b057f

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "NavigationBarSettings"

    const-string/jumbo v6, "cannot find app name !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string/jumbo v6, "DirectCall"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    aget-object v5, v3, v7

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 136
    new-array v5, v8, [Ljava/lang/Object;

    aget-object v6, v3, v8

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b0581

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    :cond_3
    aget-object v5, v3, v7

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    .line 140
    aget-object v5, v3, v7

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact_id"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string/jumbo v3, "display_name"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id == \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "cursor":Landroid/database/Cursor;
    const v0, 0x7f0b0582

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "displayName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 216
    :cond_0
    return-object v7
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 220
    const-string/jumbo v1, ""

    .line 221
    .local v1, "summary":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_list:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 222
    sget-object v2, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_list:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    sget-object v2, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_menu:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 227
    :cond_0
    return-object v1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 198
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 203
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DirectCall;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mLeftPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->clearFlag()V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mCenterPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->clearFlag()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mRightPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->clearFlag()V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    .line 80
    const v3, 0x7f0800c1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->addPreferencesFromResource(I)V

    .line 81
    const-string/jumbo v3, "left_key"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mLeftPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    .line 82
    const-string/jumbo v3, "center_key"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mCenterPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    .line 83
    const-string/jumbo v3, "right_key"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mRightPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    .line 85
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_list:[Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_menu:[Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 89
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 90
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    .line 91
    .local v1, "pref":Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
    sget-object v3, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_menu:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 92
    sget-object v3, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->action_list:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "pref":Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v0, "NavigationBarSettings"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 147
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "left_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    const-string/jumbo v4, "navigationbar_left"

    sput-object v4, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object v4, p2

    .line 169
    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "LaunchApp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.samsung.android.settings.navigationbar.NavigationBarAppList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string/jumbo v4, "dbkey"

    sget-object v5, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->startActivity(Landroid/content/Intent;)V

    .line 191
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p2    # "objValue":Ljava/lang/Object;
    :goto_1
    return v6

    .line 157
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v4, "center_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const-string/jumbo v4, "navigationbar_center"

    sput-object v4, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_2
    const-string/jumbo v4, "right_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string/jumbo v4, "navigationbar_right"

    sput-object v4, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_3
    const-string/jumbo v5, "DirectCall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "intent.action.INTERACTION_TAB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, "phonebookIntent":Landroid/content/Intent;
    const-string/jumbo v4, "additional"

    const-string/jumbo v5, "phone"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v4, "excludeProfile"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/16 v4, 0x65

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 182
    .end local v3    # "phonebookIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->sDbKey:Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 232
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "key":Ljava/lang/String;
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mLeftPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const-string/jumbo v1, "navigationbar_left"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->updatePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mCenterPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const-string/jumbo v1, "navigationbar_center"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->updatePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->mRightPref:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    const-string/jumbo v1, "navigationbar_right"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/PressureTouchActionSettings;->updatePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Ljava/lang/String;)V

    .line 100
    return-void
.end method

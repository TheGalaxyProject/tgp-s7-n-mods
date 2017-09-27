.class public Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FindMyMobileSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;,
        Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_FMM:I

.field private static SETTINGS_FMM_ADD_ACCOUNT:I

.field private static SETTINGS_FMM_LOCATIONSERVICE:I

.field private static SETTINGS_FMM_REMOTECONTROL:I

.field public static chkboxFlag:Z

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstLogin:Z

.field private mGoToDive:Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

.field private mGoogleLocationService:Landroid/preference/SwitchPreference;

.field private mHasFMMDMClient:Z

.field private mHasSamsungAccount:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsShopDemo:Z

.field private mIsSupportLMM:Z

.field private mLastLocationObserver:Landroid/database/ContentObserver;

.field private mReactivationLock:Landroid/preference/SwitchPreference;

.field private mReactivationLockDialog:Landroid/app/AlertDialog;

.field private mReactivationLockObserver:Landroid/database/ContentObserver;

.field private mRemoteControls:Landroid/preference/SwitchPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccount:Landroid/accounts/Account;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;

.field private mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

.field private mSendLastLocation:Landroid/preference/SwitchPreference;

.field private mSimChangeAlert:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 841
    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    .line 145
    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    .line 149
    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    .line 171
    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$1;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 184
    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$2;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    .line 197
    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$3;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    .line 205
    new-instance v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$4;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    sget-object v2, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 737
    .local v0, "lmmFlag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 738
    const/4 v1, 0x1

    .line 743
    :goto_0
    const-string/jumbo v2, "FindMyMobileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReactivationLock Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v0    # "lmmFlag":I
    :cond_0
    return v1

    .line 741
    .restart local v0    # "lmmFlag":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportSendLastLocation(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    const/4 v3, 0x0

    .line 280
    .local v3, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.android.fmm"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 281
    .local v2, "i":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .local v0, "curVer":I
    const v4, 0x25ad14a0

    .line 282
    if-gt v4, v0, :cond_0

    .line 283
    const/4 v3, 0x1

    .line 287
    .end local v0    # "curVer":I
    .end local v2    # "i":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 285
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private moveToFMMActivity(Z)V
    .locals 10
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 581
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 582
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "login_state"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 583
    .local v4, "login_state":I
    const-string/jumbo v5, "login_state"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "locale":Ljava/lang/String;
    const-string/jumbo v5, "ko"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 586
    .local v2, "isDomestic":Ljava/lang/Boolean;
    const-string/jumbo v5, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDomestic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string/jumbo v5, "isDomestic"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v5, "switch_state"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    const-string/jumbo v5, "com.samsung.android.fmm"

    const-string/jumbo v7, "com.sec.dsm.system.FMMAgreement"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string/jumbo v5, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSendLastLocation change : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "login_state"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/16 v5, 0x3eb

    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_1
    return-void

    .end local v2    # "isDomestic":Ljava/lang/Boolean;
    :cond_0
    move v5, v6

    .line 585
    goto :goto_0

    .line 593
    .restart local v2    # "isDomestic":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private moveToLoginPage(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 570
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.osp.app.signin"

    const-string/jumbo v3, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v2, "MODE"

    const-string/jumbo v3, "REMOTE_CONTROLS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onCancelPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_my_mobile"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 688
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 686
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showReactivationLockDialog()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 602
    iput-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 605
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 606
    const v1, 0x7f0b0734

    .line 605
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 606
    const v1, 0x7f0b0732

    .line 605
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 607
    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f0b153f

    .line 605
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 620
    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$7;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v2, 0x7f0b1105

    .line 605
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$8;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    .line 605
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 598
    return-void
.end method

.method private showReactivationLockDisableDialog()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 641
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 642
    iput-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 645
    :cond_0
    const v0, 0x7f0b0725

    .line 646
    .local v0, "bodyTextResID":I
    const v1, 0x7f0b0724

    .line 648
    .local v1, "titleTextResId":I
    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    const v0, 0x7f0b0727

    .line 650
    const v1, 0x7f0b0726

    .line 653
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 654
    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$9;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f0b153f

    .line 653
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 668
    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$10;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    const v4, 0x7f0b1105

    .line 653
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 672
    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$11;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    .line 653
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockDialog:Landroid/app/AlertDialog;

    .line 638
    return-void
.end method

.method private updateAccountInformation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 768
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 769
    .local v1, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    .line 770
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_1

    .line 771
    aget-object v2, v1, v3

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccount:Landroid/accounts/Account;

    .line 772
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 774
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 773
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 766
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 769
    goto :goto_0

    .line 778
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0b1775

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 779
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_3

    .line 783
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f0b0735

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 785
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    const v3, 0x7f040244

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .line 780
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 781
    const v3, 0x7f0b0736

    .line 780
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private updateSimChangeAlert()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 698
    .local v0, "isAirplaneMode":Z
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 699
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 723
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "change_alert"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 724
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b19db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 728
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 694
    :cond_0
    return-void

    .line 703
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_2

    .line 704
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 706
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    .line 710
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 711
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_6

    .line 713
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 712
    :cond_6
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_5

    .line 715
    iget-boolean v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v1, :cond_7

    .line 716
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 718
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_3

    .line 726
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b19dc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    .line 168
    sget v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 515
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 516
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_0

    .line 517
    if-ne p2, v10, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, "RemoteControlRequestCode complete"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001df

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    .line 522
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "remote_control"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_1

    .line 530
    if-ne p2, v10, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    .line 535
    :cond_1
    const/16 v4, 0x3eb

    if-ne p1, v4, :cond_3

    .line 536
    if-ne p2, v10, :cond_2

    .line 537
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v7, "FMMAgreement RESULT_OK"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string/jumbo v4, "switch_state"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 539
    .local v3, "switch_state":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "send_last_location"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 540
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 542
    .end local v3    # "switch_state":Ljava/lang/Boolean;
    :cond_2
    const-string/jumbo v4, "login_state"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 543
    .local v2, "login_state":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "login_state"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 544
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "FMMAgreement : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "login_state"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v2    # "login_state":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_4

    .line 548
    if-ne p2, v10, :cond_7

    .line 549
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v1

    .line 550
    .local v1, "isReactivationLock":Z
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reactivation lock is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz v1, :cond_6

    .line 552
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "lock_my_mobile"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.reactivationlock_on"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v6, " onActivityResult[reactivationlock_on]"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 514
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isReactivationLock":Z
    :cond_4
    :goto_1
    return-void

    .restart local v3    # "switch_state":Ljava/lang/Boolean;
    :cond_5
    move v4, v6

    .line 539
    goto/16 :goto_0

    .line 558
    .end local v3    # "switch_state":Ljava/lang/Boolean;
    .restart local v1    # "isReactivationLock":Z
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.reactivationlock_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onActivityResult[reactivationlock_off]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 562
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 565
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isReactivationLock":Z
    :cond_7
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, "Reactivation lock onActivityResult is not RESULT_OK!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const v7, 0x7f080073

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->addPreferencesFromResource(I)V

    .line 217
    const-string/jumbo v7, "go_to_samsungdive"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoToDive:Lcom/samsung/android/settings/fmm/MultipleLineTitlePreference;

    .line 218
    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 219
    const-string/jumbo v7, "remote_controls"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    .line 220
    const-string/jumbo v7, "google_location_service"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    .line 221
    const-string/jumbo v7, "send_final_location_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendFinalLocationInfo:Landroid/preference/SwitchPreference;

    .line 222
    const-string/jumbo v7, "send_final_location_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "sim_change_alert"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    .line 224
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 225
    const v9, 0x7f0b072d

    .line 224
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    const-string/jumbo v7, "reactivation_lock"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    .line 227
    const-string/jumbo v7, "send_last_location"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    .line 229
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 235
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const v8, 0x7f0b1494

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 236
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 241
    .local v3, "hasSAPackage":Z
    const-string/jumbo v7, "FindMyMobileSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasSAPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz v3, :cond_4

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 245
    .local v0, "desc":[Landroid/accounts/AuthenticatorDescription;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 246
    aget-object v7, v0, v4

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 247
    aget-object v7, v0, v4

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 252
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 253
    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    .line 252
    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    new-instance v6, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 261
    .local v6, "iconResizer":Lcom/samsung/android/settings/IconResizer;
    const v7, 0x7f0a001a

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 262
    const/4 v5, 0x0

    .line 263
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 264
    iget-object v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 263
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 265
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .end local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i":I
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "iconResizer":Lcom/samsung/android/settings/IconResizer;
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 271
    new-instance v7, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 213
    :cond_2
    return-void

    .line 245
    .restart local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "FindMyMobileSettings"

    const-string/jumbo v8, "No Package name for account type com.osp.app.signin"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    .end local v0    # "desc":[Landroid/accounts/AuthenticatorDescription;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i":I
    :cond_4
    const-string/jumbo v7, "samsung_account"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 401
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    :cond_1
    const-string/jumbo v0, "FindMyMobileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f1001df

    const/16 v4, 0x3e8

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 453
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 454
    .local v1, "isChecked":Z
    const/4 v2, 0x1

    .line 455
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "login_state"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_3

    const/4 v3, 0x1

    .line 457
    .local v3, "stateResult":Z
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 458
    if-eqz v1, :cond_6

    .line 459
    const-string/jumbo v6, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "CHU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 460
    const-string/jumbo v6, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 459
    if-eqz v6, :cond_1

    .line 460
    :cond_0
    sget-boolean v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->chkboxFlag:Z

    if-eqz v6, :cond_4

    .line 463
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    .line 465
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    .line 466
    if-eqz v1, :cond_5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 465
    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "remote_control"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_on"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_on]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_2
    return v2

    .line 455
    .end local v3    # "stateResult":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "stateResult":Z
    goto :goto_0

    .line 461
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showNotificationChargeDialog()V

    goto :goto_2

    :cond_5
    move v4, v5

    .line 466
    goto :goto_1

    .line 473
    :cond_6
    if-eqz v3, :cond_8

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    .line 476
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_REMOTECONTROL:I

    .line 477
    if-eqz v1, :cond_7

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 476
    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "remote_control"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.remotecontrol_off"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "FindMyMobileSettings"

    const-string/jumbo v5, " onCheckedChanged[remotecontrol_off]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    move v4, v5

    .line 477
    goto :goto_3

    .line 483
    :cond_8
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto :goto_2

    .line 486
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_b

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 488
    const v7, 0x7f1001e0

    .line 487
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    .line 489
    iget-object v6, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v7, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_LOCATIONSERVICE:I

    .line 490
    if-eqz v1, :cond_a

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 489
    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 492
    const-string/jumbo v5, "network"

    .line 491
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_a
    move v4, v5

    .line 490
    goto :goto_4

    .line 493
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 494
    if-nez v1, :cond_c

    if-eqz v3, :cond_d

    .line 497
    :cond_c
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToFMMActivity(Z)V

    goto/16 :goto_2

    .line 495
    :cond_d
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->moveToLoginPage(I)V

    goto/16 :goto_2

    .line 499
    :cond_e
    iget-object v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    iput-boolean v8, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    .line 501
    if-eqz v1, :cond_f

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V

    .line 503
    const/4 v2, 0x0

    .line 508
    :goto_5
    const-string/jumbo v4, "FindMyMobileSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReactivationLock state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 505
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDisableDialog()V

    .line 506
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-nez v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->SETTINGS_FMM_ADD_ACCOUNT:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 424
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "samsung_signin"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "login_state"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    .line 427
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v8, "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "com.osp.app.signin"

    const-string/jumbo v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string/jumbo v0, "MODE"

    const-string/jumbo v1, "REMOTE_CONTROLS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v8    # "mIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 431
    :catch_0
    move-exception v7

    .line 432
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 438
    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 439
    const v3, 0x7f0b0731

    move-object v5, v4

    .line 437
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 442
    const-class v1, Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 443
    const v3, 0x7f0b072d

    move-object v5, v4

    .line 441
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 292
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "shopdemo"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    .line 297
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 298
    iput-boolean v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->hasFMMDMClient(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    .line 305
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_b

    .line 309
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "remote_control"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_c

    .line 310
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 315
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->checkReactivationLock()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_e

    .line 322
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 327
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "send_last_location"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 328
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 333
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 334
    const-string/jumbo v6, "network"

    .line 333
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 336
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsSupportLMM:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_3

    .line 337
    :cond_2
    const-string/jumbo v2, "reactivation_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 340
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasFMMDMClient:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIsShopDemo:Z

    if-eqz v2, :cond_10

    .line 341
    :cond_4
    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v2, "remote_controls"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 343
    const-string/jumbo v2, "go_to_samsungdive"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 345
    const-string/jumbo v2, "send_last_location"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 350
    :cond_5
    :goto_6
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.sec.android.app.mt"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 354
    :goto_7
    const-string/jumbo v2, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 355
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 358
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 359
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 362
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->isSupportSendLastLocation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 363
    const-string/jumbo v2, "send_last_location"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    .line 366
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "com.osp.app.signin"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 367
    .local v1, "hasSAPackage":Z
    if-eqz v1, :cond_9

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateAccountInformation()V

    .line 370
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mHasSamsungAccount:Z

    if-eqz v2, :cond_12

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "samsung_signin"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 373
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 376
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 386
    :goto_8
    iput-boolean v4, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mFirstLogin:Z

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->updateSimChangeAlert()V

    .line 389
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 390
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v7, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "remote_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 393
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 392
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_my_mobile"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 395
    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLockObserver:Landroid/database/ContentObserver;

    .line 394
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "send_last_location"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mLastLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "hasSAPackage":Z
    :cond_a
    move v2, v4

    .line 296
    goto/16 :goto_0

    .line 306
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v5, 0x7f0b0732

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 312
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 318
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "lock_my_mobile"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 324
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_4

    .line 330
    :cond_f
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    .line 346
    :cond_10
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.google.android.gms"

    invoke-static {v2, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_5

    .line 347
    const-string/jumbo v2, "google_location_service"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 351
    :cond_11
    const-string/jumbo v2, "sim_change_alert"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 378
    .restart local v1    # "hasSAPackage":Z
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mRemoteControls:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 381
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mGoogleLocationService:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mReactivationLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 383
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSimChangeAlert:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 384
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->mSendLastLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_8
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 791
    const v4, 0x7f0401a1

    const/4 v5, 0x0

    .line 790
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 792
    .local v2, "mDialogLayout":Landroid/view/View;
    const v3, 0x7f1104cc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 793
    .local v0, "chkbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$12;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 797
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    const v4, 0x7f0b0439

    .line 797
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 800
    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$13;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const v5, 0x104000a

    .line 797
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 815
    new-instance v4, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$14;-><init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;Landroid/widget/CheckBox;)V

    const/high16 v5, 0x1040000

    .line 797
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 789
    .local v1, "dialog":Landroid/app/Dialog;
    return-void
.end method

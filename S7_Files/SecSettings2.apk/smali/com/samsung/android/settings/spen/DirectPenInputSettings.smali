.class public Lcom/samsung/android/settings/spen/DirectPenInputSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DirectPenInputSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;,
        Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;,
        Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;,
        Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;,
        Lcom/samsung/android/settings/spen/DirectPenInputSettings$5;
    }
.end annotation


# instance fields
.field private ACCESSIBILITY_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

.field private ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

.field private DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

.field private URI_PEN_WRITING_BUDDY:Ljava/lang/String;

.field private URI_TEXT_SUGGESTION:Ljava/lang/String;

.field private enabledServicesSeparator:C

.field private isShowEnablePopup:Z

.field private isTryButtonPressed:Z

.field private mActivity:Landroid/app/Activity;

.field private final mDirectPenObserver:Landroid/database/ContentObserver;

.field private mListView:Landroid/widget/ListView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

.field private tryBtn:Landroid/widget/Button;

.field private tryItView:Landroid/view/View;

.field private withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->startTryIt()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 63
    const-string/jumbo v0, "pen_writing_buddy"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "pen_writing_buddy_text_suggestion"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "accessibility_magnifier"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "enabled_accessibility_services"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->ACCESSIBILITY_ENABLED:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "com.google.android.marvin.talkback"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->DEFAULT_SCREENREADER_NAME:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 74
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    .line 75
    const/16 v0, 0x3a

    iput-char v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->enabledServicesSeparator:C

    .line 76
    iput-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 77
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 78
    iput-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 92
    new-instance v0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$1;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    .line 287
    new-instance v0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$2;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    .line 330
    new-instance v0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$3;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 432
    new-instance v0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$4;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 452
    new-instance v0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$5;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    return-void
.end method

.method private isWritingBuddyServcieInstalled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.writingbuddyservice"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return v4

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private setPreferenceEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 215
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 216
    .local v1, "writingBuddyOn":Z
    :goto_0
    const-string/jumbo v2, "predictive_text"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 217
    .local v0, "cp":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 214
    :cond_0
    return-void

    .line 215
    .end local v0    # "cp":Landroid/preference/SwitchPreference;
    .end local v1    # "writingBuddyOn":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "writingBuddyOn":Z
    goto :goto_0
.end method

.method private startTryIt()V
    .locals 3

    .prologue
    .line 371
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isTryButtonPressed:Z

    .line 372
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.app.contacts.action.WRITINGBUDDY_SEARCH_INPUT_TUTORIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startWritingBuddyService()V
    .locals 5

    .prologue
    .line 468
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 469
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.writingbuddyservice"

    .line 470
    const-string/jumbo v4, "com.samsung.android.writingbuddyservice.WritingBuddyServiceStarter"

    .line 469
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DirectPenInputSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting writingbuddy service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isTalkBackEnabled()Z
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 177
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 178
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 181
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f080064

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    .line 182
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const v3, 0x7f11084b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    .line 183
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mListView:Landroid/widget/ListView;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryItView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 211
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    return-void

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->tryBtn:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$8;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    .line 112
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->setHasOptionsMenu(Z)V

    .line 113
    const v5, 0x7f080063

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->addPreferencesFromResource(I)V

    .line 115
    iget-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 117
    .local v4, "writingBuddyOn":Z
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isWritingBuddyServcieInstalled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 118
    const-string/jumbo v5, "settings_main"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 119
    .local v2, "ps":Landroid/preference/PreferenceScreen;
    const-string/jumbo v5, "settings_more_information"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 120
    .local v1, "pc":Landroid/preference/PreferenceCategory;
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    .end local v1    # "pc":Landroid/preference/PreferenceCategory;
    .end local v2    # "ps":Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_2
    return-void

    .end local v4    # "writingBuddyOn":Z
    :cond_1
    move v5, v7

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "writingBuddyOn":Z
    goto :goto_1

    .line 122
    :cond_3
    const-string/jumbo v5, "predictive_text"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 123
    .local v0, "cp":Landroid/preference/SwitchPreference;
    if-eqz v0, :cond_0

    .line 124
    iget-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    .line 125
    .local v3, "textSuggestion":Z
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaHKTWModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 126
    :cond_4
    const/4 v3, 0x1

    .line 128
    :cond_5
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eq v5, v3, :cond_6

    .line 129
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 130
    iget-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;

    if-eqz v3, :cond_8

    :goto_4
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :cond_6
    new-instance v5, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$6;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    new-instance v5, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 124
    .end local v3    # "textSuggestion":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "textSuggestion":Z
    goto :goto_3

    :cond_8
    move v7, v6

    .line 130
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const v0, 0x7f0b0430

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 266
    const/4 v1, 0x2

    .line 265
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 258
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 272
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 283
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 275
    :pswitch_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "helphub:section"

    const-string/jumbo v3, "writing_buddy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 227
    const-string/jumbo v1, "writingbuddymanagerservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->startWritingBuddyService()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 231
    .local v0, "writingBuddyOn":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onWritingBuddyChangeListener:Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->setPreferenceEnabled()V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    .line 238
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 223
    return-void

    .line 230
    .end local v0    # "writingBuddyOn":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "writingBuddyOn":Z
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 250
    return-void
.end method

.method public showEnableDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "descMessage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "withOffFunctions"    # Z

    .prologue
    const v9, 0x7f0b0c1a

    .line 390
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v0, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 391
    .local v0, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v0, v6}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 392
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04001b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 393
    .local v4, "dialogView":Landroid/view/ViewGroup;
    const v6, 0x7f11010d

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 394
    .local v2, "descText":Landroid/widget/TextView;
    const v6, 0x7f11010e

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 395
    .local v1, "descList":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 397
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :goto_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->isShowEnablePopup:Z

    .line 403
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 405
    new-instance v7, Lcom/samsung/android/settings/spen/DirectPenInputSettings$9;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$9;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    const v8, 0x7f0b0bfc

    .line 403
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 414
    new-instance v7, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/spen/DirectPenInputSettings$10;-><init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V

    .line 403
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 424
    .local v3, "dialog":Landroid/app/AlertDialog$Builder;
    if-eqz p3, :cond_1

    .line 425
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->withOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    :goto_1
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 389
    return-void

    .line 399
    .end local v3    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 427
    .restart local v3    # "dialog":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->withoutOffFunctionsOKBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public turnOffTalkBack()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 386
    const/4 v0, 0x1

    return v0
.end method

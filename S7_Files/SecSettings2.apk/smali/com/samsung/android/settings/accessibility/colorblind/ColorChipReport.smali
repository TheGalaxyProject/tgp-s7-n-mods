.class public Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$6;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$7;
    }
.end annotation


# instance fields
.field private isSwitch:Z

.field private mCVDSeverity:F

.field private mCVDType:I

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mColourAdjustment:Landroid/widget/TextView;

.field private mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

.field private final mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

.field private mGreyscaleDialog:Landroid/app/AlertDialog;

.field private final mGreyscaleObserver:Landroid/database/ContentObserver;

.field private final mNegColorObserver:Landroid/database/ContentObserver;

.field private mNegativeColorDialog:Landroid/app/AlertDialog;

.field private mResultText:Landroid/widget/TextView;

.field private mRetestDialog:Landroid/app/AlertDialog;

.field private mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTestCheck:I

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUserParameter:F

.field private rel:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 50
    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 51
    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 55
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 194
    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    .line 218
    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    .line 560
    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 47
    return-void
.end method

.method private CheckSwitch()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 625
    const-string/jumbo v4, "color_blind"

    .line 624
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 626
    .local v1, "state":I
    const-string/jumbo v3, "ColorChipReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CheckSwitch state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-ne v1, v0, :cond_0

    .line 628
    .local v0, "SwitchState":Z
    :goto_0
    return v0

    .end local v0    # "SwitchState":Z
    :cond_0
    move v0, v2

    .line 627
    goto :goto_0
.end method

.method private CheckTestRecord()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 508
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 509
    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-ne v0, v1, :cond_2

    .line 510
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "color_blind"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v2, v1

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v0, v2, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    .line 522
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 507
    return-void

    :cond_1
    move v0, v2

    .line 516
    goto :goto_0

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_1
.end method

.method private CreateGreyscaleAndNegativeColorDialog()V
    .locals 7

    .prologue
    const v6, 0x7f0b029b

    const v5, 0x7f0b01f5

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 436
    const v1, 0x7f0b021e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 437
    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 438
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 439
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 436
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b151b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$15;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    .line 428
    return-void
.end method

.method private CreateGreyscaleDialog()V
    .locals 6

    .prologue
    const v5, 0x7f0b01f5

    .line 384
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    const v1, 0x7f0b01e9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 392
    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 393
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 391
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 394
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$11;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b151b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$12;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$13;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    .line 383
    return-void
.end method

.method private CreateNegativeColorDialog()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 348
    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 349
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$8;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b151b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$9;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$10;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 340
    return-void
.end method

.method private InitControls()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    const-string/jumbo v3, "color_blind_test"

    .line 77
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 79
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    .line 85
    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0218

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 99
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 100
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "color_blind"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    .line 103
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 75
    return-void

    .line 89
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0219

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0e61

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .restart local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_2
    move v1, v2

    .line 100
    goto :goto_1
.end method

.method private RetestOperate()V
    .locals 4

    .prologue
    .line 614
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind_test"

    const/4 v3, 0x0

    .line 615
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, "resetIntent":Landroid/content/Intent;
    const-string/jumbo v1, "toStartActivity"

    const-string/jumbo v2, "fromSwitchOn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.colorblind"

    const-string/jumbo v3, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->startActivity(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method private SetSwitchOnOff(Z)V
    .locals 8
    .param p1, "isOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 473
    if-eqz p1, :cond_6

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v1, 0x1

    .line 475
    .local v1, "mNegativeColorsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    .line 476
    .local v0, "mGreyscaleModeEnabled":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V

    .line 478
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 479
    return-void

    .line 474
    .end local v0    # "mGreyscaleModeEnabled":Z
    .end local v1    # "mNegativeColorsEnabled":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "mNegativeColorsEnabled":Z
    goto :goto_0

    .line 475
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mGreyscaleModeEnabled":Z
    goto :goto_1

    .line 480
    :cond_2
    if-eqz v1, :cond_3

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V

    .line 483
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 484
    return-void

    .line 485
    :cond_3
    if-eqz v0, :cond_4

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleDialog()V

    .line 487
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 488
    return-void

    .line 490
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    .line 472
    .end local v0    # "mGreyscaleModeEnabled":Z
    .end local v1    # "mNegativeColorsEnabled":Z
    :cond_5
    :goto_2
    return-void

    .line 493
    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 494
    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    .line 495
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "color_blind"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 499
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 502
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget v6, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v7, 0x3f19999a    # 0.6f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    :goto_3
    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v4, v5, v2, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 136
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 156
    return-void
.end method

.method public static setColorBlind(Landroid/content/Context;ZZF)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z
    .param p2, "isCVDSeverity"    # Z
    .param p3, "userParameter"    # F

    .prologue
    .line 632
    if-eqz p1, :cond_1

    .end local p2    # "isCVDSeverity":Z
    :goto_0
    invoke-static {p0, p2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->setColorWeaknessMode(Landroid/content/Context;Z)V

    .line 634
    const-string/jumbo v1, "accessibility"

    .line 633
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 635
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind_user_parameter"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 642
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    .line 631
    return-void

    .line 632
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local p2    # "isCVDSeverity":Z
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ReadjustLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 252
    const-string/jumbo v1, "color_blind_test"

    .line 251
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 255
    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0218

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :goto_0
    return-void

    .line 258
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0e61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public checkColorBlindState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    .line 186
    .local v0, "checkSwitch":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->ReadjustLayout()V

    .line 187
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 189
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v4, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v2, v1, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    .line 184
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x4

    return v0
.end method

.method public isOptionsMenuEnable()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 283
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 124
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 125
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "color_blind"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    .line 121
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 556
    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onCheckedChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 555
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 239
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 273
    const/4 v0, 0x1

    const v1, 0x7f0b01d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 274
    const/4 v1, 0x2

    .line 273
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 271
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 109
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    .line 110
    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    .line 114
    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate : mCVDType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCVDSeverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    const-string/jumbo v2, " mUserParameter "

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 115
    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->InitControls()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-eqz v0, :cond_0

    .line 596
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 602
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 608
    :cond_3
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    .line 610
    :cond_4
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 594
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->removeSwitchBarToggleSwitch()V

    .line 131
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDetach()V

    .line 278
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 305
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 295
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_0

    .line 300
    :sswitch_1
    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click actionbar home icon : mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 181
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    .line 165
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    .line 167
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    .line 169
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->removeDialogsOnResumeActivity()V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    .line 173
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 162
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 589
    return-void
.end method

.method public removeDialogsOnResumeActivity()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    .line 526
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    const/4 v1, 0x1

    .line 529
    .local v1, "mNegativeColorsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    .line 528
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_4

    const/4 v0, 0x1

    .line 530
    .local v0, "mGreyscaleModeEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_7

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_9

    .line 525
    :cond_2
    :goto_2
    return-void

    .line 526
    .end local v0    # "mGreyscaleModeEnabled":Z
    .end local v1    # "mNegativeColorsEnabled":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "mNegativeColorsEnabled":Z
    goto :goto_0

    .line 528
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "mGreyscaleModeEnabled":Z
    goto :goto_1

    .line 531
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 532
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 533
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 534
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 536
    :cond_6
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 538
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 539
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 540
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 541
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 543
    :cond_8
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_2

    .line 545
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 546
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 547
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    .line 548
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 550
    :cond_a
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    goto :goto_2
.end method

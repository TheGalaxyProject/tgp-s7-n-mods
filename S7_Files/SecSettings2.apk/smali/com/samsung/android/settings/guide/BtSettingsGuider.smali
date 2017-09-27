.class final Lcom/samsung/android/settings/guide/BtSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/BtSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

.field private static final synthetic -com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

.field private static isFinished:Z

.field private static mCreate:Z


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->BOND_STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_FINISHED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->DISCOVERY_STARTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->STATE_CHANGED:Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-com-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/guide/BtSettingsGuider;Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .param p1, "action"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 144
    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 129
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 130
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 134
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 136
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 137
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 142
    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 674
    new-instance v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    invoke-static {v1, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 154
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListFocusEnabled(ZLandroid/app/Activity;)V

    .line 405
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 551
    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 554
    .local v0, "bubbleView":Landroid/view/View;
    const v2, 0x7f11001c

    .line 553
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 555
    .local v1, "summary":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 557
    const v2, 0x7f1103c4

    .line 556
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "summary":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 559
    .restart local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 550
    :cond_1
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 9
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 504
    const-string/jumbo v5, "BtSettingsGuider"

    const-string/jumbo v6, "initHelpDialogContent :: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 510
    .local v1, "bubbleView":Landroid/view/View;
    const v5, 0x7f11001c

    .line 509
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 511
    .local v3, "summary":Landroid/widget/TextView;
    if-nez v3, :cond_0

    .line 513
    const v5, 0x7f1103c4

    .line 512
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "summary":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 515
    .restart local v3    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v3, :cond_1

    .line 516
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v6}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 524
    .local v2, "orientation":I
    if-ne v2, v8, :cond_2

    .line 525
    iget-object v5, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 526
    .local v4, "window":Landroid/view/Window;
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 527
    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 528
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 531
    .end local v4    # "window":Landroid/view/Window;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 534
    const v5, 0x7f110017

    .line 533
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 536
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 538
    new-instance v5, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_3
    return-void
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 443
    const/4 v1, -0x1

    .line 445
    .local v1, "resID":I
    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 446
    return-void

    .line 449
    :cond_0
    const v0, 0x7f04011a

    .line 451
    .local v0, "layout":I
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 453
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 500
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 441
    return-void

    .line 455
    :pswitch_1
    const v1, 0x7f0b03bb

    .line 456
    goto :goto_0

    .line 459
    :pswitch_2
    const v1, 0x7f0b03bc

    .line 460
    goto :goto_0

    .line 462
    :pswitch_3
    const v1, 0x7f0b03bd

    .line 463
    goto :goto_0

    .line 465
    :pswitch_4
    const v1, 0x7f0b03c5

    .line 466
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    const v0, 0x7f040116

    .line 474
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 478
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    .line 488
    const-wide/16 v4, 0x96

    .line 478
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 469
    :cond_2
    const v0, 0x7f040115

    goto :goto_1

    .line 492
    :pswitch_5
    const v1, 0x7f0b03bc

    .line 493
    const v0, 0x7f04011a

    .line 494
    goto :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 737
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 741
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 742
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 744
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 746
    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 747
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    .line 736
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    :goto_0
    return-void

    .line 749
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 750
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 751
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0

    .line 753
    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 5
    .param p1, "bondState"    # I
    .param p2, "prevBondState"    # I

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 767
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 769
    .local v0, "bShowDialog":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 765
    :cond_1
    :goto_1
    return-void

    .line 767
    .end local v0    # "bShowDialog":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bShowDialog":Z
    goto :goto_0

    .line 771
    :pswitch_0
    if-eqz v0, :cond_3

    .line 772
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 774
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 778
    :pswitch_1
    if-ne p2, v4, :cond_1

    .line 780
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_5

    .line 781
    iget v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 783
    if-nez v0, :cond_4

    .line 785
    sget-object v2, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 790
    :cond_4
    :goto_2
    if-eqz v0, :cond_1

    .line 791
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 788
    :cond_5
    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 797
    :pswitch_2
    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onReceive(Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v2, -0x80000000

    .line 692
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$BluetoothBroadcastActionsSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 691
    :goto_0
    return-void

    .line 694
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 698
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 702
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 706
    :pswitch_3
    const-string/jumbo v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 708
    const-string/jumbo v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 706
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 721
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 728
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 719
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 909
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 906
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 914
    .restart local v1    # "activity":Landroid/app/Activity;
    :pswitch_1
    if-eqz v1, :cond_0

    .line 915
    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_1

    .line 916
    check-cast v1, Landroid/app/ListActivity;

    .end local v1    # "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 917
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_1
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 918
    const v3, 0x7f11049f

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 924
    :pswitch_2
    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 927
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 930
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 931
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "created":Z
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_0

    .line 371
    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 372
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 374
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 375
    const/4 v0, 0x1

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 387
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_2

    .line 388
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 393
    :goto_0
    if-eqz v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 397
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 398
    iput p2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 367
    return-void

    .line 390
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    .line 268
    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-eqz v1, :cond_1

    .line 269
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 273
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NOT_FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 275
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 279
    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 284
    .local v0, "cachedDevices":I
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_0

    .line 288
    :cond_5
    iget v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_6

    .line 289
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 291
    :cond_6
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 6

    .prologue
    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f1103c6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 424
    .local v0, "bubble":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 425
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 427
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 430
    invoke-direct {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 432
    sget-object v3, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 433
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 434
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "BtSettingsGuider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IllegalArgumentException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 167
    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->finish()V

    .line 246
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 809
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 239
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 235
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 645
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 650
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V

    .line 659
    const-wide/16 v2, 0x96

    .line 650
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 178
    invoke-static {v3}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    const-string/jumbo v0, "BtSettingsGuider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume is called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-boolean v0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    if-eqz v0, :cond_2

    .line 194
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 187
    sput-boolean v3, Lcom/samsung/android/settings/guide/BtSettingsGuider;->isFinished:Z

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onDestroy()V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 199
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 223
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 226
    sput-boolean v4, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mCreate:Z

    .line 177
    return-void

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_5

    .line 201
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 202
    const-string/jumbo v0, "BtSettingsGuider"

    const-string/jumbo v1, "changeHelpDialogState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDeviceProfileShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    goto :goto_1

    .line 212
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_3

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_6

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 218
    :goto_2
    sget-object v0, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    goto :goto_1

    .line 216
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 5
    .param p1, "clickable"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 574
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 576
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 580
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 581
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 583
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 584
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 585
    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 590
    :cond_1
    if-eqz p1, :cond_2

    .line 591
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 571
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    const v5, 0x7f0b03c5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const v4, 0x7f0b03bc

    const v3, 0x7f04011a

    .line 301
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, p1, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 308
    invoke-static {}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-getcom-samsung-android-settings-guide-BtSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 359
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v1, Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 300
    return-void

    .line 310
    :pswitch_1
    const v1, 0x7f0b03bb

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 322
    :pswitch_3
    const v1, 0x7f0b03bd

    invoke-direct {p0, v1, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 326
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 327
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    const v1, 0x7f040116

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 333
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_1

    .line 334
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 336
    const/4 v2, 0x2

    .line 335
    if-ne v1, v2, :cond_1

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_0

    .line 330
    :cond_2
    const v1, 0x7f040115

    invoke-direct {p0, v5, v1, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_2

    .line 343
    :pswitch_5
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 348
    :pswitch_6
    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 359
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

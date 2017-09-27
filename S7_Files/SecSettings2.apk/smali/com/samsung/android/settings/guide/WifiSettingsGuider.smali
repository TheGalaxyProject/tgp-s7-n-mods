.class public final Lcom/samsung/android/settings/guide/WifiSettingsGuider;
.super Lcom/samsung/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/samsung/android/settings/guide/GuiderLifecycleListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;,
        Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

.field public static isWifiGuideOn:Z

.field private static mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private count:I

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreate:Z

.field private mEnableScanMenuItem:Z

.field private mFirstCheck:Z

.field public mHandler:Landroid/os/Handler;

.field private mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->values()[Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-com-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 111
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 112
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 113
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 115
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 121
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 122
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 123
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 132
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 138
    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 141
    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 142
    iput v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    .line 143
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 146
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 173
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "wifi"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 12
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 634
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, "bubbleView":Landroid/view/View;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.helphub"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 651
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const v7, 0x7f11001c

    .line 650
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 652
    .local v5, "summary":Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 654
    const v7, 0x7f1103c4

    .line 653
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "summary":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 656
    .restart local v5    # "summary":Landroid/widget/TextView;
    :cond_0
    if-eqz v5, :cond_1

    .line 657
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "summary":Landroid/widget/TextView;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v8, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v8}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 668
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    .line 669
    .local v4, "orientation":I
    if-ne v4, v11, :cond_2

    .line 670
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 671
    .local v6, "window":Landroid/view/Window;
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 672
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 673
    invoke-virtual {v6, v10}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 676
    .end local v6    # "window":Landroid/view/Window;
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 679
    const v7, 0x7f110017

    .line 678
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 681
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 683
    new-instance v7, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    :cond_3
    return-void

    .line 660
    .end local v0    # "btnClose":Landroid/widget/ImageButton;
    .end local v4    # "orientation":I
    :catch_0
    move-exception v2

    .line 661
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 562
    const/4 v0, -0x1

    .line 563
    .local v0, "layout":I
    const/4 v1, -0x1

    .line 565
    .local v1, "resID":I
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 566
    return-void

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 571
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 624
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 561
    return-void

    .line 577
    :pswitch_1
    const v1, 0x7f0b0c63

    .line 578
    const v0, 0x7f040125

    .line 579
    goto :goto_0

    .line 581
    :pswitch_2
    const v1, 0x7f0b0c64

    .line 582
    const v0, 0x7f040125

    .line 583
    goto :goto_0

    .line 585
    :pswitch_3
    const v1, 0x7f0b0c65

    .line 586
    const v0, 0x7f040125

    .line 587
    goto :goto_0

    .line 589
    :pswitch_4
    const v1, 0x7f0b0c62

    .line 590
    const v0, 0x7f040122

    .line 591
    goto :goto_0

    .line 593
    :pswitch_5
    const v1, 0x7f0b0c66

    .line 594
    const v0, 0x7f040125

    .line 595
    goto :goto_0

    .line 597
    :pswitch_6
    const v1, 0x7f0b03c5

    .line 598
    const v0, 0x7f040121

    .line 602
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 606
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    .line 616
    const-wide/16 v4, 0x96

    .line 606
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 1158
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1160
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1161
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1163
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1164
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 1166
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1167
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1158
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 849
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 850
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 852
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_0
    if-eqz v0, :cond_2

    .line 853
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 855
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 856
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 857
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 858
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 861
    :cond_1
    if-eqz p1, :cond_2

    .line 862
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 848
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 876
    iput-boolean p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 878
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 880
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 875
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "touchTransparency"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;
    .param p4, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;
    .param p5, "needShowWrongToast"    # Z

    .prologue
    .line 550
    new-instance v0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 557
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 558
    sput-object p4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 545
    return-void
.end method


# virtual methods
.method public dismissCompleteDialog()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 824
    :cond_1
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 6

    .prologue
    .line 457
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 459
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f1103c6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 460
    .local v0, "bubble":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 461
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 464
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 467
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 485
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 455
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 469
    .restart local v0    # "bubble":Landroid/widget/FrameLayout;
    .restart local v1    # "bubbleView":Landroid/view/View;
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 470
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    .end local v0    # "bubble":Landroid/widget/FrameLayout;
    .end local v1    # "bubbleView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 488
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "WifiSettingsGuider"

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

    goto :goto_1

    .line 473
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bubble":Landroid/widget/FrameLayout;
    .restart local v1    # "bubbleView":Landroid/view/View;
    :pswitch_2
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const/4 v2, 0x0

    .line 498
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 499
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 516
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 497
    :cond_0
    return-void

    .line 501
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 502
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 505
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/samsung/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 697
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 701
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 702
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 703
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 704
    const-string/jumbo v5, "connectivity"

    .line 703
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 707
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 710
    .local v2, "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 711
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 710
    if-eqz v4, :cond_3

    .line 712
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 713
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 695
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 714
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 715
    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 716
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 721
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 723
    const-string/jumbo v4, "networkInfo"

    .line 722
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 725
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 729
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 732
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 735
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    .line 736
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_6

    .line 737
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 739
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 740
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 741
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 742
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 743
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 745
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 746
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    .line 745
    if-eqz v4, :cond_2

    .line 747
    :cond_8
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 748
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 754
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_9
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 759
    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_a

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    .line 760
    :cond_a
    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 761
    iput-boolean v6, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 763
    :cond_b
    const-string/jumbo v4, "wifi_state"

    .line 764
    const/4 v5, 0x4

    .line 763
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 766
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    if-eqz v4, :cond_d

    .line 767
    if-eq v3, v6, :cond_c

    if-nez v3, :cond_2

    .line 769
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 770
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 771
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0

    .line 776
    :cond_d
    sget-object v4, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 789
    .end local v3    # "state":I
    :cond_e
    const-string/jumbo v4, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 796
    const-string/jumbo v4, "called_dialog"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const-string/jumbo v4, "WifiWarningDialog"

    const-string/jumbo v5, "from"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 795
    if-eqz v4, :cond_2

    .line 797
    const-string/jumbo v4, "WifiSettingsGuider"

    const-string/jumbo v5, "Hotspot is ON or Wifi is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 799
    iget-object v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 800
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0

    .line 802
    :cond_f
    const-string/jumbo v4, "com.android.settings.guide.DISMISS_HELP_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 803
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 291
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 960
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 959
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 329
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 330
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 328
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 201
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 204
    const-string/jumbo v1, "connectivity"

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 206
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 207
    iput-boolean v3, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 211
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "WifiSettingsGuider"

    const-string/jumbo v2, "IllegalArgumentException : mReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 951
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1041
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1042
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 1043
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 1039
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 307
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 308
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 310
    .local v0, "isScreenOn":Z
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    sget-object v2, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 317
    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 320
    :cond_1
    if-nez v0, :cond_2

    .line 321
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 323
    :cond_2
    const-string/jumbo v2, "WifiSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause :: mScreenOnCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sput-boolean v5, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 305
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 297
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    .local v0, "scan":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 300
    iget-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 296
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->setsIsInGuideMode(Z)V

    .line 237
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    sput-boolean v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 240
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 241
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 255
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v0, :cond_2

    .line 260
    const-string/jumbo v0, "WifiSettingsGuider"

    const-string/jumbo v1, "onResume :: showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 262
    iput v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    if-eqz v0, :cond_7

    .line 287
    :cond_3
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 234
    return-void

    :cond_4
    move v0, v2

    .line 240
    goto :goto_0

    :cond_5
    move v0, v2

    .line 241
    goto :goto_1

    .line 249
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v3, :cond_1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 251
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v1, v0, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto :goto_3
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 921
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 810
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 811
    sget-object v1, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    if-nez v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040129

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 815
    .local v0, "bView":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    .line 816
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 817
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    sget-object v2, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 818
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 819
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 820
    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 808
    .end local v0    # "bView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 912
    return-void
.end method

.method public showHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const v2, 0x7f040125

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 341
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 344
    return-void

    :cond_0
    move v0, v1

    .line 341
    goto :goto_0

    .line 347
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 348
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 353
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_1
    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 407
    sget-object v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    move v1, v5

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 409
    invoke-static {}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-getcom-samsung-android-settings-guide-WifiSettingsGuider$GuideStatesSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 339
    :cond_3
    :goto_2
    :pswitch_1
    return-void

    .line 359
    :pswitch_2
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 372
    :pswitch_3
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 385
    :pswitch_4
    new-instance v0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_1

    .line 395
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/samsung/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_1

    .line 418
    :pswitch_6
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 417
    const v1, 0x7f0b0c63

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 422
    :pswitch_7
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 421
    const v1, 0x7f0b0c64

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 426
    :pswitch_8
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 425
    const v1, 0x7f0b0c65

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 430
    :pswitch_9
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 429
    const v1, 0x7f0b0c62

    const v2, 0x7f040122

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 434
    :pswitch_a
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 433
    const v1, 0x7f0b0c66

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_2

    .line 438
    :pswitch_b
    sget-object v3, Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;

    .line 437
    const v1, 0x7f0b03c5

    .line 438
    const v2, 0x7f040121

    move-object v0, p0

    move-object v4, p1

    .line 437
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/samsung/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_3

    .line 441
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 443
    const/4 v1, 0x2

    .line 442
    if-ne v0, v1, :cond_3

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mHelpDialog:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method

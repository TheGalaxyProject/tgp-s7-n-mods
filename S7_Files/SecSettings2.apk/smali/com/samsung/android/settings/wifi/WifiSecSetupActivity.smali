.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final WIFI_OFF:Z

.field private static final isGalaxyView:Z

.field private static mContext:Landroid/content/Context;

.field private static mIsWifiConnected:Z

.field public static final mProductName:Ljava/lang/String;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static useSprintNewSetupWizard:Z


# instance fields
.field FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private helpMenuCheck:Z

.field private isCurrentAPchecked:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isHelpMenuShow:Z

.field private mBottomButtonArea:Landroid/widget/RelativeLayout;

.field private mCountryIso:Ljava/lang/String;

.field private mEffectImageContainer:Landroid/view/ViewGroup;

.field private mEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mHasNavBar:Z

.field private mIsEnableFRP:Z

.field private mIsPopupMenu:Z

.field private mIsReactiveLockEnabled:Z

.field private mIsSupportFRP:Z

.field private mIsTablet:Z

.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field private mPreviousBtnArea:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardCheck:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiAdvanced:Landroid/widget/LinearLayout;

.field private mWifiDevice:Landroid/widget/ImageView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private menuButton:Landroid/widget/LinearLayout;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupMenu;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;ZZI)V
    .locals 0
    .param p1, "isNextButtonEnabled"    # Z
    .param p2, "isDialogPopped"    # Z
    .param p3, "dialogMsg"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;JZ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->revealWifiEffectInfinite(JZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    .line 136
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isGalaxyView:Z

    .line 140
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 217
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 129
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 166
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 169
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    .line 185
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 187
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 188
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 189
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 193
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->transX:F

    .line 194
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    .line 218
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 219
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private allowToGoNext(ZZI)V
    .locals 7
    .param p1, "isNextButtonEnabled"    # Z
    .param p2, "isDialogPopped"    # Z
    .param p3, "dialogMsg"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 1185
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1186
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1188
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1189
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1190
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1192
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1193
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1194
    .local v2, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 1195
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1197
    .end local v2    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 1199
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :cond_2
    :goto_2
    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    move v3, v5

    .line 1186
    goto :goto_0

    :cond_4
    move v4, v5

    .line 1188
    goto :goto_1

    .line 1200
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on allowToGoNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 1203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private animateWifiEffect(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 394
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 397
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 385
    return-void
.end method

.method private checkWifiAgain()Z
    .locals 4

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 1211
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1212
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1219
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1225
    :cond_1
    :goto_1
    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkWifiAgain -  CountryISO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 1228
    :cond_2
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v1, 0x1

    return v1

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Exception occured at checkWifiAgain(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1221
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception on CountryISO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1226
    if-nez v1, :cond_2

    .line 1231
    const/4 v1, 0x0

    return v1
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1009
    .local v2, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1010
    .local v0, "accountArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 1011
    aget-object v3, v0, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1013
    .end local v1    # "accountEmail":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 526
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "action":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v6, :cond_3

    .line 547
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 549
    .local v5, "mNetworkInfo":Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 550
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 551
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v10, [Landroid/net/NetworkInfo;

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    .end local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 555
    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 556
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 557
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 558
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 560
    :cond_2
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v11, [Landroid/net/NetworkInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 562
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v6, :cond_0

    .line 563
    :cond_4
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 565
    const-string/jumbo v6, "networkInfo"

    .line 564
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 567
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 568
    .local v4, "isConn":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 569
    :cond_5
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v4, 0x1

    .line 573
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    .line 574
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 576
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 578
    if-eqz v4, :cond_a

    .line 579
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 580
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    :cond_8
    move v6, v8

    .line 574
    goto :goto_1

    :cond_9
    move v7, v8

    .line 576
    goto :goto_2

    .line 582
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 583
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    .line 585
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConn":Z
    :cond_b
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 586
    const/4 v4, 0x0

    .line 587
    .restart local v4    # "isConn":Z
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 588
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v4, 0x1

    .line 591
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    .line 592
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 594
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 596
    if-eqz v4, :cond_10

    .line 597
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 598
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 592
    goto :goto_3

    :cond_f
    move v7, v8

    .line 594
    goto :goto_4

    .line 600
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 601
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 515
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f110801

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 517
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 518
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V

    .line 519
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 520
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 521
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 513
    return-void
.end method

.method private isCaptivePortal()I
    .locals 13

    .prologue
    const/16 v12, 0x257

    const/16 v11, 0xc8

    .line 1235
    const/16 v3, 0x257

    .line 1237
    .local v3, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1238
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v8, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 1243
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1244
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1245
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1246
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1248
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1249
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1250
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_0

    .line 1251
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCaptivePortal: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " headers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_0
    if-ne v3, v11, :cond_2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-nez v8, :cond_2

    .line 1253
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Empty 200 response interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_1
    const/16 v3, 0xcc

    .line 1256
    :cond_2
    const/16 v8, 0x197

    if-ne v3, v8, :cond_4

    .line 1257
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    :cond_3
    const/16 v3, 0xcc

    .line 1267
    :cond_4
    if-eqz v7, :cond_5

    .line 1268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1269
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v7, 0x0

    .line 1273
    :cond_5
    if-ne v3, v12, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->checkWifiAgain()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1274
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1276
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v8, "http://www.amazon.com"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1278
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HttpClient statusCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v8, v11, :cond_b

    .line 1280
    const/16 v3, 0xcc

    .line 1285
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1292
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    :goto_2
    return v3

    .line 1260
    :catch_0
    move-exception v2

    .line 1261
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Probably not a portal: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1263
    :cond_8
    if-ne v3, v12, :cond_9

    .line 1267
    :cond_9
    if-eqz v7, :cond_5

    .line 1268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1266
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1267
    if-eqz v7, :cond_a

    .line 1268
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1269
    const/4 v7, 0x0

    .line 1266
    :cond_a
    throw v8

    .line 1282
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_b
    :try_start_3
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_6

    .line 1283
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fail: Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1286
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 1287
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_7

    .line 1288
    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Fail: IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isNetworkConnected()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1043
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 1044
    const-string/jumbo v4, "WifiSecSetupActivity"

    const-string/jumbo v5, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v7

    .line 1048
    :cond_0
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1050
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1051
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1053
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1055
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1057
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1058
    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 1059
    return v6

    .line 1060
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1061
    return v6

    .line 1062
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1063
    return v6

    .line 1067
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    return v7
.end method

.method public static isSupportGoogleFRP(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 941
    const/4 v2, 0x0

    .line 943
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 945
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 948
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    return v2

    .line 950
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 951
    .local v0, "result":I
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    packed-switch v0, :pswitch_data_0

    .line 971
    :goto_1
    :pswitch_0
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :pswitch_1
    const/4 v2, 0x1

    .line 967
    goto :goto_1

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 978
    const/4 v2, 0x0

    .line 980
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 982
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 985
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v3, 0x0

    return v3

    .line 989
    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 990
    .local v0, "flagResult":I
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    .line 993
    :cond_1
    const/4 v2, 0x1

    .line 999
    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return v2
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1018
    const/4 v2, 0x0

    .line 1019
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 1022
    .local v0, "flagResult":I
    if-ltz v0, :cond_2

    .line 1023
    if-gt v0, v3, :cond_2

    .line 1025
    if-ne v0, v3, :cond_0

    .line 1026
    const-string/jumbo v3, "com.google"

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1027
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/4 v2, 0x1

    .line 1033
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_1
    return v2

    .line 1031
    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 349
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 347
    return-void
.end method

.method private revealWifiEffectInfinite(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 407
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "delay":J
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    .line 405
    :cond_1
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 340
    const/16 v0, 0x400

    .line 341
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 344
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 339
    return-void
.end method

.method private startAnimation()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x294

    const-wide/16 v4, 0x14a

    const/4 v3, 0x0

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animTitleFromRight(Landroid/view/View;JJ)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animCommonFromRight(Landroid/view/View;JJ)V

    .line 372
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 374
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 360
    return-void
.end method

.method private updateLayoutComponent(Landroid/content/res/Configuration;)V
    .locals 14
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 665
    const v9, 0x7f040364

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 668
    const v9, 0x7f1107f5

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    .line 670
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 671
    const v10, 0x7f0a069e

    .line 670
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 672
    .local v4, "marginLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 673
    const v10, 0x7f0a069f

    .line 672
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 675
    .local v5, "marginRight":I
    const v9, 0x7f110606

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/SwitchBar;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 676
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_0

    .line 677
    new-instance v9, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 678
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9, v4, v5}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 679
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 682
    :cond_0
    const v9, 0x7f1107dd

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    .line 683
    const v9, 0x7f1107ff

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    .line 685
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 686
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 687
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    :goto_0
    const v9, 0x7f1107f6

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 751
    const v9, 0x7f1107f7

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    .line 753
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    .line 754
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107f8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107f9

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fa

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fb

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    const v9, 0x7f110695

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 761
    const v9, 0x7f110114

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    .line 763
    const v9, 0x7f110802

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    .line 764
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    .line 765
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_1
    const v9, 0x7f110803

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 768
    const v9, 0x7f110804

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 769
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0c8f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    const v9, 0x7f110805

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    .line 772
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    const v9, 0x7f110806

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 774
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0437

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 775
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0228

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 774
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 776
    .local v6, "nextButtonTts":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 777
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0437

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 781
    :cond_2
    const v9, 0x7f110807

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 782
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 783
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 784
    const v10, 0x7f0d020a

    const/4 v11, 0x0

    .line 783
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 782
    const/high16 v10, -0x1000000

    invoke-direct {v0, v10, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 785
    .local v0, "colorfilter":Landroid/graphics/ColorFilter;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 786
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 790
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 792
    const v9, 0x7f110606

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    .line 793
    const v9, 0x7f110800

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    .line 795
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0c8f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 796
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0228

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 795
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 797
    .local v7, "previousButtonTts":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 800
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    .line 821
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-nez v9, :cond_f

    .line 822
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020507

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-nez v9, :cond_10

    .line 846
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020507

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    :cond_4
    :goto_2
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 860
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    .line 861
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 864
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 865
    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 872
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_12

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_12

    .line 873
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 874
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 875
    .local v1, "decorView":Landroid/view/View;
    const/16 v8, 0x1706

    .line 881
    .local v8, "uiOptions":I
    invoke-virtual {v1, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 882
    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : True !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v1    # "decorView":Landroid/view/View;
    .end local v8    # "uiOptions":I
    :goto_4
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_14

    .line 891
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_6

    .line 892
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 895
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 897
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_7

    .line 898
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 900
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 901
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 903
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 904
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 656
    :cond_9
    :goto_5
    return-void

    .line 696
    .end local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .end local v6    # "nextButtonTts":Ljava/lang/String;
    .end local v7    # "previousButtonTts":Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 699
    new-instance v9, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const/4 v11, 0x5

    invoke-direct {v9, p0, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    .line 704
    :goto_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v13, 0x7f0b1254

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 705
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const v13, 0x7f0b1257

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 706
    const-string/jumbo v9, "KTT"

    sget-object v10, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 707
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    const v13, 0x7f0b1259

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 709
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const v13, 0x7f0b0ca1

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 713
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    const v13, 0x7f0b124c

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 717
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    if-eqz v9, :cond_d

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.helphub"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 721
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v9, v9, 0xa

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v9, v9, 0xa

    const/4 v10, 0x3

    if-ne v9, v10, :cond_d

    .line 722
    :cond_c
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->helpMenuCheck:Z

    if-eqz v9, :cond_d

    .line 723
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const v13, 0x7f0b1892

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_d
    :goto_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 731
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 736
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 701
    :cond_e
    new-instance v9, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const v11, 0x800005

    invoke-direct {v9, p0, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    goto/16 :goto_6

    .line 726
    :catch_0
    move-exception v2

    .line 727
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 824
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .restart local v6    # "nextButtonTts":Ljava/lang/String;
    .restart local v7    # "previousButtonTts":Ljava/lang/String;
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020532

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 848
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020530

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 865
    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 884
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_13

    .line 885
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 887
    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 888
    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : False !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 905
    :cond_14
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_19

    .line 906
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_15

    .line 907
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 909
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 911
    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-nez v9, :cond_18

    .line 912
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_16

    .line 913
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 915
    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_17

    .line 916
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 918
    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 919
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_5

    .line 921
    :cond_18
    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    .line 924
    :cond_19
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 925
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_1a

    .line 926
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 927
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 933
    :goto_8
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 934
    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    .line 929
    :cond_1a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 930
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_8
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 330
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 334
    :cond_0
    return v2

    .line 336
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onAdvancedMenuPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 506
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v8, ""

    .line 509
    .local v8, "screenTitle":Ljava/lang/String;
    const-class v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 510
    const-string/jumbo v6, ""

    const/4 v3, 0x0

    const v5, 0x7f0b125d

    move-object v0, p0

    move v7, v4

    .line 509
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 505
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 414
    :goto_0
    :pswitch_0
    return-void

    .line 423
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 430
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 431
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_4

    .line 434
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 439
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const v1, 0x7f0b12ac

    .line 442
    .local v1, "message":I
    const v2, 0x7f0b12ac

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    .end local v1    # "message":I
    :cond_3
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 450
    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 451
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x7f110802
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    const/4 v0, 0x0

    .line 631
    .local v0, "needToReopenPoupMenu":Z
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 632
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 634
    const/4 v0, 0x1

    .line 635
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    .line 637
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->onResume()V

    .line 639
    if-eqz v0, :cond_1

    .line 640
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 641
    const/4 v0, 0x0

    .line 626
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 235
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 236
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 237
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 238
    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsEnableFRP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useSprintNewSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_5

    .line 240
    const-string/jumbo v2, "is_network_required"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 253
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    .line 254
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    .line 258
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 260
    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSetupWizardCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v2, :cond_3

    .line 262
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v2, :cond_6

    .line 263
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 270
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 271
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V

    .line 285
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    :cond_4
    :goto_2
    return-void

    .line 245
    :cond_5
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : not support FRP !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :cond_6
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    .line 286
    :cond_7
    const v1, 0x7f0b0c7d

    .line 287
    .local v1, "message":I
    const v2, 0x7f0b0c7d

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 293
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v4

    .line 295
    :cond_1
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 296
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 298
    .local v1, "wifiIsEnabled":Z
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    const-string/jumbo v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 460
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 502
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 462
    :pswitch_1
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 467
    :pswitch_2
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :pswitch_3
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :pswitch_4
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :pswitch_5
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :pswitch_6
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 608
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 617
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 316
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 314
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I


# instance fields
.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field protected mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field protected mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field protected final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field protected mContext:Landroid/content/Context;

.field protected mDns1View:Landroid/widget/EditText;

.field protected mDns2View:Landroid/widget/EditText;

.field protected mEapAnonymousErrorText:Landroid/widget/TextView;

.field protected mEapAnonymousView:Landroid/widget/EditText;

.field protected mEapCaCertSpinner:Landroid/widget/Spinner;

.field protected mEapDomainView:Landroid/widget/TextView;

.field protected mEapIdentityErrorText:Landroid/widget/TextView;

.field protected mEapIdentityView:Landroid/widget/EditText;

.field protected mEapMethodSpinner:Landroid/widget/Spinner;

.field protected mEapUserCertSpinner:Landroid/widget/Spinner;

.field mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mGateway:Ljava/lang/String;

.field protected mGatewayView:Landroid/widget/EditText;

.field protected mInitDnsAddress:Ljava/lang/String;

.field protected mInitDnsAddress2:Ljava/lang/String;

.field protected mInitGwAddress:Ljava/lang/String;

.field protected mInitIpAddress:Ljava/lang/String;

.field protected mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected mIpSettingsSpinner:Landroid/widget/Spinner;

.field protected mIsCheckedCckm:Z

.field protected mIsCheckedFt:Z

.field protected mIsRequestHideKeyboard:Z

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mMode:I

.field protected mNetworkPrefixLengthView:Landroid/widget/TextView;

.field protected mPasswordErrorText:Landroid/widget/TextView;

.field protected mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field protected mPhase1Spinner:Landroid/widget/Spinner;

.field protected mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhase2Spinner:Landroid/widget/Spinner;

.field protected mProxyAuthId:Landroid/widget/TextView;

.field protected mProxyAuthPassword:Landroid/widget/TextView;

.field protected mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field protected mProxyExclusionListView:Landroid/widget/TextView;

.field protected mProxyHostView:Landroid/widget/TextView;

.field protected mProxyPacView:Landroid/widget/TextView;

.field protected mProxyPortView:Landroid/widget/TextView;

.field protected mProxySettingsSpinner:Landroid/widget/Spinner;

.field protected mSecuritySpinner:Landroid/widget/Spinner;

.field protected mShowPasswordView:Landroid/widget/CheckBox;

.field private mSpinnerTintColor:I

.field protected mSsidErrorText:Landroid/widget/TextView;

.field protected mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Landroid/text/TextWatcher;

.field private mTempSsid:Ljava/lang/String;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field protected final mView:Landroid/view/View;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    .line 495
    new-array v0, v3, [I

    const v1, 0x2ba8c0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    .line 496
    new-array v0, v3, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p4, "mode"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    .line 154
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 155
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 156
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    .line 158
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 159
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 183
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    .line 900
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    .line 1405
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1466
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    .line 1467
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    .line 1514
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 188
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 189
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    .line 191
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 192
    if-nez p3, :cond_1

    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    .line 193
    iput p4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    .line 194
    if-eqz p5, :cond_0

    .line 195
    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mLinkProperties:Landroid/net/LinkProperties;

    .line 200
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    .line 204
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 205
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    return-void

    .line 192
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    goto :goto_0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f11040e

    const/4 v10, 0x1

    .line 457
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 458
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    .line 460
    .local v5, "url":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 461
    const-string/jumbo v7, "WifiConfigController"

    const-string/jumbo v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 465
    :cond_0
    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 466
    move-object v2, v5

    .line 468
    .local v2, "linkName":Ljava/lang/String;
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    .line 469
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "//"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "front":Ljava/lang/String;
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "rear":Ljava/lang/String;
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 474
    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 476
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .end local v1    # "front":Ljava/lang/String;
    .end local v3    # "rear":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040353

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 482
    .local v4, "row":Landroid/view/View;
    const v7, 0x7f11027d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    .line 483
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 485
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 486
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 487
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 488
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 489
    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 490
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 492
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 456
    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1126
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 1127
    return v3

    .line 1130
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 1131
    const/4 v1, 0x1

    return v1

    .line 1125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    :cond_2
    return v3
.end method

.method private findEditTextFromLayout(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 777
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 779
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "childView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 776
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .restart local v0    # "childView":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 781
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 772
    :cond_3
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 9
    .param p1, "inetAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 855
    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "generateBlankFields"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/4 v4, -0x1

    .line 858
    .local v4, "networkPrefixLength":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 860
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 861
    const v8, 0x7f0b0159

    .line 860
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    const/16 v4, 0x18

    .line 874
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 877
    :try_start_0
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 878
    .local v3, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 879
    .local v0, "addr":[B
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    .line 880
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    .line 886
    .end local v0    # "addr":[B
    .end local v3    # "netPart":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 888
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0156

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :cond_2
    return-void

    .line 865
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 866
    if-ltz v4, :cond_4

    const/16 v6, 0x20

    if-le v4, v6, :cond_0

    .line 867
    :cond_4
    const/16 v4, 0x18

    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v4, 0x18

    goto :goto_0

    .line 881
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .local v2, "ee":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 882
    .end local v2    # "ee":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    .local v5, "u":Ljava/net/UnknownHostException;
    goto :goto_1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .param p2, "getType"    # I

    .prologue
    .line 1139
    const/4 v2, 0x0

    .line 1140
    .local v2, "ipv4Address":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1141
    .local v4, "startIdx":I
    const/4 v0, 0x0

    .line 1142
    .local v0, "endIdx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1144
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1145
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    .line 1146
    add-int/lit8 v4, v1, 0x2

    .line 1147
    move v1, v4

    .line 1150
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    .line 1151
    move v0, v1

    .line 1152
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 1153
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, "ipv4Address":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1155
    .local v2, "ipv4Address":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "ipv4Address":Ljava/lang/String;
    goto :goto_1

    .line 1144
    .local v2, "ipv4Address":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    :cond_3
    return-object v2
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "resId"    # I

    .prologue
    .line 620
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    .line 622
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 621
    const v3, 0x7f04036b

    .line 620
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 623
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 624
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 619
    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 686
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 687
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 688
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    .line 690
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 691
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x47

    iput v3, v2, Landroid/os/Message;->what:I

    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "netId"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    const-string/jumbo v3, "autoReconnect"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 698
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;ZLandroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v3, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 685
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 688
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OpenWebPage()V
    .locals 4

    .prologue
    .line 611
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 612
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: Activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    .line 498
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 499
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v8, :cond_0

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :cond_0
    return-void

    .line 501
    :cond_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 502
    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: SEC_MOBILE_AP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 506
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 507
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_4

    aget v5, v9, v8

    .line 508
    .local v5, "mask":I
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_3

    .line 509
    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 507
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 514
    .end local v5    # "mask":I
    :cond_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 515
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_7

    aget v5, v9, v8

    .line 516
    .restart local v5    # "mask":I
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_6

    .line 517
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "This has a LO Gateway Address"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_5
    return-void

    .line 515
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 523
    .end local v5    # "mask":I
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 524
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .local v7, "webpage":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_9

    .line 527
    iget v8, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v8, :cond_9

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    .line 529
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v8, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Go to Webpage: gateway addr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    if-eqz v8, :cond_a

    .line 533
    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_8

    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0x191

    if-ne v8, v9, :cond_9

    .line 534
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040353

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 535
    .local v6, "row":Landroid/view/View;
    const v8, 0x7f11027d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(I)V

    .line 536
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 537
    .local v1, "content":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v8, v10, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 538
    const v8, 0x7f11040e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    const v8, 0x7f11040e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 548
    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 497
    .end local v1    # "content":Landroid/text/SpannableString;
    .end local v6    # "row":Landroid/view/View;
    :cond_9
    :goto_2
    return-void

    .line 551
    :cond_a
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;

    invoke-direct {v3, p0, p1, p2, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V

    .line 603
    .local v3, "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "row":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f110798

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 445
    .local v0, "dialogContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 445
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 447
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040345

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 451
    .end local v0    # "dialogContainer":Landroid/widget/LinearLayout;
    .local v1, "row":Landroid/view/View;
    :goto_0
    const v2, 0x7f11027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 452
    const v2, 0x7f11040e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    return-void

    .line 449
    .local v1, "row":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040346

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "row":Landroid/view/View;
    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1457
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1585
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1586
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1587
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1590
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1593
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 1594
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1596
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1597
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1600
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 1601
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1603
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1604
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1581
    :cond_6
    return-void
.end method

.method protected enableSubmitIfAppropriate()V
    .locals 3

    .prologue
    .line 1231
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1232
    .local v0, "submit":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1236
    if-eqz v0, :cond_1

    .line 1237
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1230
    :cond_1
    return-void
.end method

.method protected getDefaultEapFieldsIndex()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1011
    const/4 v0, 0x0

    .line 1013
    .local v0, "index":I
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1014
    sget-object v1, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1015
    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v2, "SingTel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    sget-object v1, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1015
    if-eqz v1, :cond_0

    .line 1016
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v1, v3, :cond_0

    .line 1017
    const/4 v0, 0x4

    .line 1031
    :cond_0
    :goto_0
    return v0

    .line 1019
    :cond_1
    sget-object v1, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "AKA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    sget-object v1, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    sget-object v1, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1020
    if-eqz v1, :cond_0

    .line 1021
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v1, v3, :cond_0

    .line 1025
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 894
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSignalString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 628
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 630
    .local v0, "level":I
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "levels":[Ljava/lang/String;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    :cond_0
    return-object v2

    .line 634
    .end local v0    # "level":I
    .end local v1    # "levels":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method protected hasSubmitButton()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    return v2

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1207
    return v2

    .line 1209
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideForgetButton()V
    .locals 3

    .prologue
    .line 1213
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1214
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 1216
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1212
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 2

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1292
    .local v0, "focusedView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    .line 1290
    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 1282
    if-nez p1, :cond_0

    .line 1283
    return-void

    .line 1285
    :cond_0
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1287
    const/4 v2, 0x2

    .line 1286
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1281
    return-void
.end method

.method public hideSubmitButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1220
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1221
    .local v0, "submit":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1225
    if-eqz v0, :cond_1

    .line 1226
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1219
    :cond_1
    return-void
.end method

.method protected initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V
    .locals 15
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1040
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    const/4 v9, 0x0

    .line 1041
    .local v9, "mIpv4SetupFlag":Z
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1042
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 1043
    .local v8, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields ip "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1047
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 1048
    .local v5, "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_2

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 1049
    :cond_2
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    const/4 v9, 0x1

    .line 1066
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "linkAddress":Landroid/net/LinkAddress;
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1068
    const/4 v9, 0x0

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "route$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    .line 1070
    .local v10, "route":Landroid/net/RouteInfo;
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1071
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_5

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields gw "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_5
    invoke-virtual {v10}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1074
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1075
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_6

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 1076
    :cond_6
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    const/4 v9, 0x1

    .line 1088
    .end local v2    # "address":Ljava/lang/String;
    .end local v10    # "route":Landroid/net/RouteInfo;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1089
    .local v4, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/4 v3, 0x0

    .line 1090
    .local v3, "dns":Ljava/net/InetAddress;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1091
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dns":Ljava/net/InetAddress;
    check-cast v3, Ljava/net/InetAddress;

    .line 1092
    .local v3, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1093
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1108
    .restart local v3    # "dns":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1109
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_9
    :goto_3
    return-void

    .line 1054
    .end local v4    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v11    # "route$iterator":Ljava/util/Iterator;
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v8    # "linkAddress":Landroid/net/LinkAddress;
    :cond_a
    if-nez v9, :cond_0

    .line 1055
    const/4 v0, 0x1

    .line 1056
    .local v0, "GET_IPV4_ADDR":I
    const/4 v1, 0x2

    .line 1057
    .local v1, "GET_PREFIX_LENGTH":I
    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1059
    .local v6, "ipv6Address":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1060
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_b

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 1061
    :cond_b
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1079
    .end local v0    # "GET_IPV4_ADDR":I
    .end local v1    # "GET_PREFIX_LENGTH":I
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v6    # "ipv6Address":Ljava/lang/String;
    .end local v8    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v10    # "route":Landroid/net/RouteInfo;
    .restart local v11    # "route$iterator":Ljava/util/Iterator;
    :cond_c
    if-nez v9, :cond_4

    .line 1080
    const/4 v0, 0x1

    .line 1081
    .restart local v0    # "GET_IPV4_ADDR":I
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1082
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_d

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 1083
    :cond_d
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1095
    .end local v0    # "GET_IPV4_ADDR":I
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v10    # "route":Landroid/net/RouteInfo;
    .restart local v3    # "dns":Ljava/net/InetAddress;
    .restart local v4    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_e
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1096
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_f

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns1 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1098
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_10

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    .line 1099
    :cond_10
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1101
    :cond_11
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_8

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 1111
    .end local v2    # "address":Ljava/lang/String;
    :cond_12
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_13

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns2 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_13
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1114
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_14

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    .line 1115
    :cond_14
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1117
    :cond_15
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_9

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public isNeedToReconnect()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1246
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v4, v5, :cond_1

    .line 1247
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "change ip assignment method by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    return v6

    .line 1250
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1251
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    .local v3, "newIpAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1253
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed ip address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_2
    return v6

    .line 1257
    .end local v3    # "newIpAddress":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1258
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1259
    .local v2, "newGwAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1260
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed gateway address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_4
    return v6

    .line 1264
    .end local v2    # "newGwAddress":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1265
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "newDns1Address":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1267
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns1 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_6
    return v6

    .line 1271
    .end local v0    # "newDns1Address":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 1272
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1273
    .local v1, "newDns2Address":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1274
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns2 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_8
    return v6

    .line 1278
    .end local v1    # "newDns2Address":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    return v4
.end method

.method protected isSubmittable()Z
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v9, 0x7f1107bd

    const/16 v8, 0x8

    const v7, 0x7f1107d9

    const v6, 0x7f1107d7

    const/4 v5, 0x0

    .line 639
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f11074a

    if-ne v3, v4, :cond_2

    .line 640
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 641
    .local v2, "pos":I
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    .line 642
    if-eqz p2, :cond_1

    const/16 v3, 0x90

    .line 641
    :goto_0
    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 644
    if-ltz v2, :cond_0

    .line 645
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 682
    .end local v2    # "pos":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    .line 638
    return-void

    .line 643
    .restart local v2    # "pos":I
    :cond_1
    const/16 v3, 0x80

    goto :goto_0

    .line 647
    .end local v2    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107ba

    if-ne v3, v4, :cond_3

    .line 648
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAutoReconnectEnabled(Z)V

    goto :goto_1

    .line 651
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107bc

    if-ne v3, v4, :cond_5

    .line 652
    if-eqz p2, :cond_4

    .line 653
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    .line 655
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v3

    .line 656
    const-string/jumbo v4, "ON"

    .line 655
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 660
    :cond_5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 661
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 662
    .local v1, "ftCheckbox":Landroid/widget/CheckBox;
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 663
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-eqz v3, :cond_0

    .line 664
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 665
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 667
    .end local v1    # "ftCheckbox":Landroid/widget/CheckBox;
    :cond_6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 668
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 669
    .local v0, "cckmCheckbox":Landroid/widget/CheckBox;
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 670
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    if-eqz v3, :cond_0

    .line 671
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 672
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 674
    .end local v0    # "cckmCheckbox":Landroid/widget/CheckBox;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v3

    const v4, 0x7f1107d1

    if-ne v3, v4, :cond_0

    .line 675
    if-eqz p2, :cond_8

    .line 676
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v4, 0x7f1107d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    goto/16 :goto_1

    .line 679
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v4, 0x7f1107d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "id"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 846
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 848
    const/4 v0, 0x1

    return v0

    .line 851
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 798
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 799
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    .line 800
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    .line 803
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showKeyMgmtFields()V

    .line 816
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showWarningMessagesIfAppropriate()V

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    .line 820
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 823
    const-string/jumbo v0, "PEAP"

    .line 827
    .local v0, "spinnerValue":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AKA\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    if-nez v1, :cond_7

    .line 829
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    .line 797
    .end local v0    # "spinnerValue":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 805
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    .line 806
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    goto :goto_0

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_5

    .line 808
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showProxyFields()V

    .line 809
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_PRX_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto :goto_0

    .line 812
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showIpConfigFields()V

    .line 813
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_IP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 825
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "spinnerValue":Ljava/lang/String;
    goto :goto_1

    .line 831
    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    goto :goto_2

    .line 834
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 836
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    goto :goto_2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 1438
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1440
    const/4 v0, 0x1

    return v0

    .line 1443
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1431
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1462
    return-void
.end method

.method protected setInvisibleAutoReconnectView()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    return-void
.end method

.method protected setVisibleAutoReconnectView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_MENU_AUTOJOIN:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_AUTOCONNECT_HOTSPOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 306
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 307
    :cond_2
    return-void

    .line 311
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f1107ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 319
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v1, :cond_4

    .line 320
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 324
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected setupAdvancedOptionsView()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 294
    return-void
.end method

.method protected setupApInformation()V
    .locals 14

    .prologue
    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "group":Landroid/view/ViewGroup;
    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v10, :cond_6

    .line 347
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1104dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "group":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 352
    .local v3, "group":Landroid/view/ViewGroup;
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 354
    .local v5, "info":Landroid/net/wifi/WifiInfo;
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 356
    const/4 v6, 0x0

    .line 357
    .local v6, "linkSpeed":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    if-lez v10, :cond_0

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Mbps"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    .end local v6    # "linkSpeed":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getSignalString()Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "signalLevel":Ljava/lang/String;
    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    .line 362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b1279

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 368
    .end local v7    # "signalLevel":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v3

    .line 369
    .local v4, "group2":Landroid/view/ViewGroup;
    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-nez v10, :cond_2

    .line 370
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1104dc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "group2":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 372
    .restart local v4    # "group2":Landroid/view/ViewGroup;
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b1278

    invoke-virtual {p0, v4, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 374
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 376
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 377
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v10

    sget-object v11, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v10, v11, :cond_8

    .line 379
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v9

    .line 380
    .local v9, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v9, :cond_3

    iget-object v10, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v10, :cond_3

    .line 382
    iget-object v10, v9, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 381
    const v11, 0x7f0b127d

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 415
    .end local v9    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 417
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v11, 0x7f0b127f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 418
    iget-object v12, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 417
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 416
    const v11, 0x7f0b127e

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 421
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    .line 423
    .local v8, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 424
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v10, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v10, v10, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v10, :cond_5

    .line 425
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v10, :cond_5

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 426
    iget-boolean v10, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v10, :cond_f

    .line 427
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 344
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_5
    :goto_3
    return-void

    .line 349
    .end local v4    # "group2":Landroid/view/ViewGroup;
    .end local v5    # "info":Landroid/net/wifi/WifiInfo;
    .local v3, "group":Landroid/view/ViewGroup;
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v11, 0x7f1107bd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "group":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "group":Landroid/view/ViewGroup;
    goto/16 :goto_0

    .line 363
    .restart local v5    # "info":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "signalLevel":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_1

    .line 364
    const v10, 0x7f0b1279

    invoke-virtual {p0, v3, v10, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 385
    .end local v7    # "signalLevel":Ljava/lang/String;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "group2":Landroid/view/ViewGroup;
    :cond_8
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 386
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    .line 387
    .restart local v8    # "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v2, :cond_9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v10, :cond_9

    .line 388
    iget v10, v2, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v10, :cond_9

    .line 389
    iget v10, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b127d

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 392
    :cond_9
    sget-boolean v10, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v10, :cond_3

    .line 393
    iget v10, v2, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v10, :cond_a

    .line 394
    iget v10, v2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b0c3e

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 396
    :cond_a
    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v10, :cond_b

    .line 397
    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12be    # 1.8486E38f

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 399
    :cond_b
    iget v10, v2, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v10, :cond_c

    .line 400
    iget v10, v2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12bc

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 402
    :cond_c
    iget v10, v2, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v10, :cond_d

    .line 403
    iget v10, v2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b12bd

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 405
    :cond_d
    if-eqz v5, :cond_3

    .line 406
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "ap_mac":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b0c3f

    invoke-virtual {p0, v3, v11, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 428
    .end local v0    # "ap_mac":Ljava/lang/String;
    .end local v2    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_e
    const v10, 0x7f0b0c6d

    invoke-virtual {p0, v3, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_3

    .line 431
    :cond_f
    const v10, 0x7f0b0c6d

    invoke-direct {p0, v4, v10}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_3
.end method

.method protected setupConnectionWarningView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 334
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f110189

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 335
    .local v0, "infoMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 338
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f0b0c3c

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setupEapPhase()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0062

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0064

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 283
    return-void
.end method

.method protected setupIpAndProxySettings()V
    .locals 3

    .prologue
    const v2, 0x7f1107d1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0065

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0066

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 262
    return-void
.end method

.method protected setupPasswordView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f11074a

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1106f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b0cda

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v3}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b171f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b128e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 240
    :cond_1
    return-void
.end method

.method protected setupSecuritySpinner()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110748

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 225
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0040

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 219
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c003e

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    goto :goto_0
.end method

.method protected setupSsidView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110747

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110799

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f0b1277

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 208
    return-void
.end method

.method protected showEapFieldsByMethod(I)V
    .locals 0
    .param p1, "eapMethod"    # I

    .prologue
    .line 1035
    return-void
.end method

.method protected showIpConfigFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1166
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1168
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1165
    .end local v0    # "args":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1171
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1172
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1174
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1175
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1176
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f1107d9

    const v6, 0x7f1107d8

    const v5, 0x7f1107d7

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1338
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1339
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1352
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1353
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1355
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1336
    :cond_1
    :goto_1
    return-void

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1360
    :cond_4
    const-string/jumbo v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1362
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1361
    if-nez v0, :cond_5

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1361
    if-eqz v0, :cond_8

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1370
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1371
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 1375
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1376
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1378
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1385
    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1386
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1390
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 1392
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1393
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1394
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1366
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1107d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1400
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected showProxyFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1184
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1186
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    .end local v0    # "args":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1189
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1190
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1191
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1192
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1193
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1194
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showSecurityFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 986
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 988
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 989
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 990
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 995
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 997
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    .end local v0    # "args":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 992
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 999
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "WifiPolicy"

    const-string/jumbo v2, "Enterprise Wifi settings not editable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1001
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1003
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1004
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected showSoftKeyboard()V
    .locals 4

    .prologue
    .line 1296
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftKeyboard requestHideKeyboard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    if-eqz v1, :cond_1

    .line 1298
    return-void

    .line 1301
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1302
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1304
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard : ignored (Accessory Keyboard Mode) *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_2
    :goto_0
    return-void

    .line 1306
    :cond_3
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public showSoftKeyboardOnResume()V
    .locals 6

    .prologue
    .line 1313
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1314
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 1315
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 1316
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1318
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->startWithFocusOnTopEditText()V

    .line 1312
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1321
    .restart local v0    # "focusedView":Landroid/view/View;
    :cond_1
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/View;)V

    .line 1331
    const-wide/16 v4, 0xc8

    .line 1321
    invoke-virtual {v0, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showWarningMessagesIfAppropriate()V
    .locals 0

    .prologue
    .line 1199
    return-void
.end method

.method protected startWithFocusOnTopEditText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 787
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 788
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 789
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 790
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 791
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 792
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 786
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 9

    .prologue
    .line 726
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 727
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 729
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    .line 730
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 732
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " new:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 735
    .local v2, "focusedView":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 736
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 737
    .local v0, "editText":Landroid/widget/EditText;
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 738
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    .line 739
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 742
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 743
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - keyboard shown:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 735
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_4
    if-eqz v2, :cond_8

    instance-of v6, v2, Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 750
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "focusedView":Landroid/view/View;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 751
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    .line 768
    :cond_6
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 769
    const/4 v4, 0x0

    .line 725
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    return-void

    .line 754
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    :cond_7
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is visible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 757
    .restart local v2    # "focusedView":Landroid/view/View;
    :cond_8
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 759
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "editText$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 760
    .restart local v0    # "editText":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 761
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 14
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 902
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    return v11

    .line 904
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 905
    .local v8, "ipAddr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 906
    const v11, 0x7f0b12b8

    return v11

    .line 909
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v7

    .line 910
    .local v7, "inetAddr":Ljava/net/Inet4Address;
    if-nez v7, :cond_2

    .line 911
    const v11, 0x7f0b12b8

    return v11

    .line 915
    :cond_2
    :try_start_0
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_3

    .line 916
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    .line 917
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_3
    const/4 v10, -0x1

    .line 923
    .local v10, "networkPrefixLength":I
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 924
    .local v9, "networkPrefix":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 925
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_6

    .line 926
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 927
    const v13, 0x7f0b0159

    .line 926
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    :cond_4
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 935
    if-ltz v10, :cond_5

    const/16 v11, 0x20

    if-le v10, v11, :cond_7

    .line 936
    :cond_5
    const v11, 0x7f0b12bb

    return v11

    .line 919
    .end local v9    # "networkPrefix":Ljava/lang/String;
    .end local v10    # "networkPrefixLength":I
    :catch_0
    move-exception v3

    .line 920
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b12b8

    return v11

    .line 929
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "networkPrefix":Ljava/lang/String;
    .restart local v10    # "networkPrefixLength":I
    :cond_6
    const v11, 0x7f0b12bb

    return v11

    .line 938
    :cond_7
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v7, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 943
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 944
    .local v5, "gateway":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const v11, 0x7f0b12b9

    return v11

    .line 939
    .end local v5    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 940
    .local v4, "e":Ljava/lang/NumberFormatException;
    const v11, 0x7f0b12bb

    return v11

    .line 946
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "gateway":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .line 948
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 952
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    iput-object v6, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 954
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "dns1":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 958
    const v11, 0x7f0b12ba

    return v11

    .line 949
    .end local v0    # "dns1":Ljava/lang/String;
    .end local v1    # "dns2":Ljava/lang/String;
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :catch_2
    move-exception v3

    .line 950
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b12b9

    return v11

    .line 961
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "dns1":Ljava/lang/String;
    .restart local v1    # "dns2":Ljava/lang/String;
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :cond_9
    const/4 v2, 0x0

    .line 962
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 964
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 968
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 975
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 979
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_a
    const/4 v11, 0x0

    return v11

    .line 965
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    :catch_3
    move-exception v3

    .line 966
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b12ba

    return v11

    .line 970
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 976
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_4
    move-exception v3

    .line 977
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b12ba

    return v11
.end method

.class public Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
.super Landroid/preference/Preference;
.source "WifiSNSExcludedAPPreference.java"


# static fields
.field private static final STATE_SECURED:[I

.field private static count:I

.field private static wifi_signal_attributes:[I


# instance fields
.field public index:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public network:Ljava/lang/String;

.field public priority:I

.field public security:Ljava/lang/String;

.field public signalLevel:I

.field public ssid:Ljava/lang/String;

.field public timeoutIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    sput v2, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->count:I

    .line 69
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->STATE_SECURED:[I

    .line 70
    new-array v0, v3, [I

    const v1, 0x7f010007

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->wifi_signal_attributes:[I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->ssid:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->index:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->network:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->priority:I

    .line 54
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->security:Ljava/lang/String;

    .line 55
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->timeoutIndex:I

    .line 57
    iput v1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->signalLevel:I

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.class public Lcom/samsung/android/settings/nearby/NearbyEnabler;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearby/NearbyEnabler$1;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$2;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAllowUpload;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerStart;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;,
        Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;
    }
.end annotation


# static fields
.field private static isShowWifiCheckingPopup:Z

.field private static mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

.field private static mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private static mPreferenceChangeWorker:Landroid/os/Handler;


# instance fields
.field private enablerType:Ljava/lang/String;

.field private isAutoStart:Z

.field private isBound:Z

.field private isBroadcastRegistered:Z

.field private isResumeState:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

.field private final mNearbyDeviceName:Landroid/preference/PreferenceScreen;

.field private final mNearbyDownloadOption:Landroid/preference/ListPreference;

.field private final mNearbyDownloadTo:Landroid/preference/ListPreference;

.field private final mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

.field private mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3()Lcom/samsung/android/settings/nearby/IMediaServer;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nearby/NearbyEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    return p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/nearby/IMediaServer;)Lcom/samsung/android/settings/nearby/IMediaServer;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .param p1, "newValue"    # Ljava/util/HashSet;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getListString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->setDefaultValues()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/nearby/NearbyEnabler;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    .line 238
    sput-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 240
    sput-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 613
    sput-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/ListPreference;Landroid/preference/ListPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nearbySwitchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "deviceName"    # Landroid/preference/PreferenceScreen;
    .param p4, "sharedContents"    # Landroid/preference/MultiSelectListPreference;
    .param p5, "acceptList"    # Landroid/preference/MultiSelectListPreference;
    .param p6, "rejectList"    # Landroid/preference/MultiSelectListPreference;
    .param p7, "downloadTo"    # Landroid/preference/ListPreference;
    .param p8, "downloadFrom"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 158
    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 164
    const-string/jumbo v0, "TYPE_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 468
    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 615
    new-instance v0, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$1;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 865
    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 900
    new-instance v0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 225
    iput-object p3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 226
    iput-object p4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 227
    iput-object p5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 229
    iput-object p7, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    .line 230
    iput-object p8, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 232
    const-string/jumbo v0, "TYPE_NEARBY"

    iput-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 219
    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    move-object v4, p1

    .line 822
    .local v4, "modifiedName":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 823
    const-string/jumbo v5, "/"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "changedName":Ljava/lang/String;
    move-object p1, v0

    .line 825
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Remove all \'/\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    .end local v0    # "changedName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 833
    .local v3, "maxLength":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 831
    const/16 v6, 0x37

    .line 833
    if-lt v5, v6, :cond_1

    .line 834
    const/16 v5, 0x36

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 835
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "substring for MAX length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_1
    :try_start_0
    const-string/jumbo v1, "[Phone]"

    .line 843
    .local v1, "deviceType":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_2

    .line 844
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "checkDeviceName"

    const-string/jumbo v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string/jumbo v1, "[Tablet]"

    .line 848
    :cond_2
    if-eqz p1, :cond_3

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 862
    .end local v1    # "deviceType":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 851
    .restart local v1    # "deviceType":Ljava/lang/String;
    :cond_3
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 852
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 854
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0373

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 857
    .end local v1    # "deviceType":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 858
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getDownloadOption()Ljava/lang/String;
    .locals 5

    .prologue
    .line 741
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_allshare"

    .line 742
    const/4 v4, 0x4

    .line 741
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 744
    .local v0, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "allshare_download_from"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "flag":Ljava/lang/String;
    const/4 v1, 0x0

    .line 697
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 724
    :cond_0
    :goto_0
    return-object v1

    .line 700
    .local v1, "path":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 701
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 702
    const-string/jumbo v4, "storage"

    .line 701
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 703
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 709
    :cond_2
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "getDownloadPath"

    const-string/jumbo v5, "No External Volume: Change to Internal"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 711
    const-string/jumbo v4, "/Download"

    .line 710
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 713
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    const-string/jumbo v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 718
    .end local v2    # "storageManager":Landroid/os/storage/StorageManager;
    .local v1, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "getDownloadPath"

    .line 719
    const-string/jumbo v5, "HandleSetUploadPath has incorrect value - Init to Default"

    .line 718
    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/Download"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private getDownloadTo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 728
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_allshare"

    .line 729
    const/4 v4, 0x4

    .line 728
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 730
    .local v0, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "allshare_download_to"

    const-string/jumbo v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 736
    :cond_0
    return-object v1
.end method

.method private getListString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "newValue":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1267
    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1268
    :cond_0
    return-object v3

    .line 1267
    :cond_1
    instance-of v2, p1, Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 1270
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1272
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1274
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1276
    const-string/jumbo v2, "*--*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1278
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSharedContent()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 755
    const/4 v1, 0x0

    .line 758
    .local v1, "flag":I
    :try_start_0
    sget-object v5, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v5}, Lcom/samsung/android/settings/nearby/IMediaServer;->getSharedMediaType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 763
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "pref_allshare"

    .line 764
    const/4 v7, 0x4

    .line 763
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 766
    .local v3, "sharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "allshare_shared_contents"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 769
    .local v2, "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 770
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "getSharedContent"

    const-string/jumbo v7, "Init SharedContent Value"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 772
    .local v4, "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 773
    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    move-object v2, v4

    .line 778
    .end local v4    # "temp":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v5, :cond_1

    .line 779
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 782
    :cond_1
    if-eqz v2, :cond_2

    .line 784
    const-string/jumbo v5, "0"

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 785
    const v5, 0xff00

    or-int/2addr v1, v5

    .line 791
    :goto_1
    const-string/jumbo v5, "1"

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 792
    const/high16 v5, 0xff0000

    or-int/2addr v1, v5

    .line 798
    :goto_2
    const-string/jumbo v5, "2"

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 799
    or-int/lit16 v1, v1, 0xff

    .line 806
    :cond_2
    :goto_3
    return v1

    .line 759
    .end local v2    # "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "sharedPreference":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 787
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sharedContents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_3
    const v5, -0xff01

    .line 788
    and-int/2addr v1, v5

    goto :goto_1

    .line 794
    :cond_4
    const v5, -0xff0001

    .line 795
    and-int/2addr v1, v5

    goto :goto_2

    .line 802
    :cond_5
    and-int/lit16 v1, v1, -0x100

    goto :goto_3
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 569
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "initChangePreferenceHandler"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "nearby_settings"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerStart;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_shared_contents"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleShareContentType;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_device_name"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleServerName;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_download_from"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAllowUpload;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAllowUpload;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAllowUpload;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_download_to"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_accept_device"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string/jumbo v2, "allshare_reject_device"

    new-instance v3, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Lcom/samsung/android/settings/nearby/NearbyEnabler$HandleRejectDevice;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "initChangePreferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 5

    .prologue
    .line 246
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 247
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "initEnabler"

    const-string/jumbo v3, "create new HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Preference Change Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 250
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "initEnabler"

    const-string/jumbo v3, "start HandlerThread!!"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 254
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 255
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "initEnabler"

    const-string/jumbo v3, "create new Handler!!"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->initChangePreferenceHandler()V

    .line 242
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "InitEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception on Thread :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isServerStarted()Z
    .locals 2

    .prologue
    .line 955
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 956
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->isServerStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 961
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    .prologue
    .line 868
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "setBroadcastReceiver()"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    .line 872
    const-string/jumbo v4, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    .line 871
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    .line 875
    const-string/jumbo v4, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 874
    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 881
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "registerBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRestartServerPopup()V
    .locals 5

    .prologue
    .line 1059
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "requestRestartServerPopup"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1062
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b036e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1063
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b036d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1065
    new-instance v2, Lcom/samsung/android/settings/nearby/NearbyEnabler$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$10;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 1064
    const v3, 0x7f0b042b

    .line 1061
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1079
    new-instance v2, Lcom/samsung/android/settings/nearby/NearbyEnabler$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$11;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 1078
    const v3, 0x7f0b0423

    .line 1061
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1085
    new-instance v2, Lcom/samsung/android/settings/nearby/NearbyEnabler$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$12;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 1061
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "requestRestartServerPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiCheckingPopup()V
    .locals 11

    .prologue
    .line 990
    const-string/jumbo v7, "NearbyEnabler"

    const-string/jumbo v8, "requestWifiCheckingPopup"

    const-string/jumbo v9, ""

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 994
    const-string/jumbo v8, "layout_inflater"

    .line 993
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 995
    .local v4, "inflate":Landroid/view/LayoutInflater;
    const v7, 0x7f0400cd

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 997
    .local v0, "PopupView":Landroid/view/View;
    const v7, 0x7f110189

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 998
    .local v6, "message":Landroid/widget/TextView;
    const v7, 0x7f0b036f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    const v7, 0x7f1102b3

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1001
    .local v2, "checkbox":Landroid/widget/CheckBox;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1003
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1004
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b0c55

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1005
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1008
    new-instance v7, Lcom/samsung/android/settings/nearby/NearbyEnabler$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$7;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 1007
    const v8, 0x7f0b042c

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1017
    new-instance v7, Lcom/samsung/android/settings/nearby/NearbyEnabler$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$8;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 1016
    const v8, 0x7f0b0423

    invoke-virtual {v1, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1026
    new-instance v7, Lcom/samsung/android/settings/nearby/NearbyEnabler$9;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$9;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1048
    .local v5, "mConnectionCheckPopup":Landroid/app/AlertDialog;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1049
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    .end local v0    # "PopupView":Landroid/view/View;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "checkbox":Landroid/widget/CheckBox;
    .end local v4    # "inflate":Landroid/view/LayoutInflater;
    .end local v5    # "mConnectionCheckPopup":Landroid/app/AlertDialog;
    .end local v6    # "message":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v3

    .line 1052
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "NearbyEnabler"

    const-string/jumbo v8, "requestWifiCheckingPopup"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    .prologue
    .line 965
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "requestWifiSettingPopup"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 969
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0373

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 970
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0370

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 972
    new-instance v2, Lcom/samsung/android/settings/nearby/NearbyEnabler$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$5;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 971
    const v3, 0x7f0b042c

    .line 968
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 977
    new-instance v2, Lcom/samsung/android/settings/nearby/NearbyEnabler$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler$6;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V

    .line 968
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "requestWifiSettingPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCheckedState()V
    .locals 3

    .prologue
    .line 288
    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "setCheckedState"

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-nez v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method private setDefaultValues()V
    .locals 9

    .prologue
    .line 268
    const-string/jumbo v6, "NearbyEnabler"

    const-string/jumbo v7, "setDefaultValues"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "downloadPath":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDownloadOption()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "downloadOption":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "deviceName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->getSharedContent()I

    move-result v5

    .line 276
    .local v5, "flag":I
    :try_start_0
    sget-object v6, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v6, v5}, Lcom/samsung/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    .line 277
    sget-object v6, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v6, v0}, Lcom/samsung/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    sget-object v6, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v6, v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    sget-object v6, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v6, v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v4

    .line 283
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 280
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 281
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startDmsService()V
    .locals 6

    .prologue
    .line 596
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.nearby.MediaServer.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.nearby.mediaserver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v2, :cond_2

    .line 602
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-nez v2, :cond_1

    .line 603
    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 594
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 600
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NearbyEnabler"

    const-string/jumbo v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private switchPreference(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    .line 472
    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 473
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "switchPreference"

    const-string/jumbo v5, "Start new DMS Serivce"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 479
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 480
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isAutoStart:Z

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/samsung/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    if-eq v3, p1, :cond_2

    .line 483
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "switchPreference"

    const-string/jumbo v5, "Change State to:"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 487
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 488
    const-string/jumbo v4, "nearby_settings"

    .line 487
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 489
    .local v2, "handler":Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v2, :cond_0

    .line 490
    sget-object v3, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 500
    .end local v2    # "handler":Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e1":Landroid/os/RemoteException;
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "switchPreference"

    const-string/jumbo v5, "RemoteException: "

    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 502
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v1    # "e1":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "switchPreference"

    const-string/jumbo v5, "Change check state"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "switchPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception on run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 889
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 893
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAcceptEntry()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1283
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->getAcceptEntry()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1287
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1289
    return-object v3

    .line 1284
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1285
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1286
    return-object v3
.end method

.method public getAcceptEntryValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1295
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->getAcceptEntryValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1301
    return-object v3

    .line 1296
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1297
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1298
    return-object v3
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 810
    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "getDeviceName"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 813
    const-string/jumbo v1, "device_name"

    .line 812
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExernalSdPath()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 671
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 672
    const-string/jumbo v6, "storage"

    .line 671
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 673
    .local v1, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 675
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 676
    .local v2, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "subsystem":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 678
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 679
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 675
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v2    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v3    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .end local v4    # "subsystem":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "NearbyEnabler"

    const-string/jumbo v6, "getExernalSdPath"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v9
.end method

.method public getRejectList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1307
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->getRejectList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1311
    :catch_0
    move-exception v1

    .line 1312
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1313
    return-object v3

    .line 1308
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1309
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1310
    return-object v3
.end method

.method public getRejectListValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1319
    :try_start_0
    sget-object v2, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->getRejectListValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1323
    :catch_0
    move-exception v1

    .line 1324
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1325
    return-object v3

    .line 1320
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1321
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1322
    return-object v3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 511
    const-string/jumbo v4, "NearbyEnabler"

    const-string/jumbo v5, "onPreferenceChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V

    .line 543
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 548
    .local v1, "handler":Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v1, :cond_3

    .line 549
    :try_start_0
    sget-object v4, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/samsung/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    const/4 v4, 0x1

    return v4

    .line 529
    .end local v1    # "handler":Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    const-string/jumbo v4, "NearbyEnabler"

    const-string/jumbo v5, "onPreferenceChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mNearbyDownloadTo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 536
    .end local v3    # "summary":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 537
    const-string/jumbo v4, "NearbyEnabler"

    const-string/jumbo v5, "onPreferenceChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mNearbyDownloadOption: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .restart local v3    # "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 558
    .end local v3    # "summary":Ljava/lang/String;
    .restart local v1    # "handler":Landroid/preference/Preference$OnPreferenceChangeListener;
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NearbyEnabler"

    const-string/jumbo v5, "onPreferenceChange"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception run: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 427
    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "onSwitchChanged"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/Switch;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 428
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/nearby/DMSUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isShowWifiCheckingPopup:Z

    if-eqz v0, :cond_4

    .line 449
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->switchPreference(Z)V

    .line 425
    :cond_2
    :goto_0
    return-void

    .line 431
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 435
    return-void

    .line 444
    :cond_4
    if-eqz p2, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 376
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "pause"

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iput-boolean v6, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 381
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 382
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/samsung/android/settings/nearby/IMediaServer;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 411
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->unregisterBroadcastReceiver()V

    .line 416
    iget-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    if-eqz v1, :cond_5

    .line 417
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 419
    iput-boolean v6, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isBound:Z

    .line 375
    :cond_5
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 328
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "resume"

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 333
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 334
    sget-object v1, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/samsung/android/settings/nearby/IMediaServer;

    iget-object v2, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 370
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->registerBroadcastReceiver()V

    .line 372
    invoke-direct {p0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 327
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NearbyEnabler"

    const-string/jumbo v2, "resume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

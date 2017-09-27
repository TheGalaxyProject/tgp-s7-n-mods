.class public Lcom/samsung/android/settings/mirrorlink/MirrorLink;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "MirrorLink.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;,
        Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsBound:Z

.field private mListDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMassStorageActive:Z

.field mMenuMore:Landroid/view/MenuItem;

.field private mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

.field private mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

.field private mPkgMngr:Landroid/content/pm/PackageManager;

.field private mProvisionApp:[Ljava/lang/String;

.field private mServiceCon:Landroid/content/ServiceConnection;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetheringEnabled:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mUsbTetherEnabling:Z

.field private mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/mirrorlink/MirrorLink;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 722
    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$1;-><init>()V

    .line 721
    sput-object v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 117
    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTetherEnabling:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    .line 741
    new-instance v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$2;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 89
    return-void
.end method

.method private BindToMLService()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.MIRRORLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, "bindToML":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.mirrorlink"

    const-string/jumbo v3, "com.samsung.android.mirrorlink.service.TmsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 541
    const-string/jumbo v1, "MirrorLink"

    const-string/jumbo v2, "Unable to resolve MIRRORLINK_MANAGER_SERVICE service."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v5

    .line 545
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    if-nez v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 547
    iput-boolean v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    .line 549
    :cond_1
    return v4
.end method

.method private doUnbindFromService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink: doUnbindFromService"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    iget-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mIsBound:Z

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v0, :cond_1

    .line 294
    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 287
    :cond_1
    return-void
.end method

.method public static isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z
    .locals 3
    .param p0, "usbmanager"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 624
    .local v1, "usbSyncMode":Z
    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "config":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 626
    const-string/jumbo v2, "conn_gadget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    const/4 v1, 0x0

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 629
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setNcmTethering(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 672
    const-string/jumbo v6, "usb"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    .line 675
    .local v4, "um":Landroid/hardware/usb/UsbManager;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 676
    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 678
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 682
    :cond_0
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 684
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v6, "/sys/class/android_usb/android0/terminal_version"

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 685
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 686
    .local v3, "outStream":Ljava/io/PrintWriter;
    if-eqz p1, :cond_2

    .line 687
    const-string/jumbo v6, "1"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    :goto_0
    if-eqz v3, :cond_1

    .line 693
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->semSetNcmTethering(Z)I

    move-result v6

    if-eqz v6, :cond_3

    .line 699
    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b1468

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 700
    return-void

    .line 689
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/PrintWriter;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "0"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 694
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outStream":Ljava/io/PrintWriter;
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "MirrorLink FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 702
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "usb_tethering_enabled"

    iget-object v8, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    return-void
.end method

.method private startTethering()V
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 660
    :goto_0
    return-void

    .line 663
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    goto :goto_0

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMirrorLinkApplications()V
    .locals 20

    .prologue
    .line 392
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v12, "mirrorLinkAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v11, 0x0

    .line 396
    .local v11, "mPm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 397
    .local v7, "context":Landroid/content/Context;
    if-eqz v7, :cond_0

    .line 398
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 399
    .local v11, "mPm":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_1

    .line 400
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "updateMirrorLinkApplications() getPackageManager returns null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 404
    .local v11, "mPm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "updateMirrorLinkApplications() getActivity() returns null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 408
    .local v11, "mPm":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v5, 0x0

    .line 410
    .local v5, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getAllAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 417
    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    if-nez v5, :cond_4

    .line 418
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "AppList is null"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_3
    return-void

    .line 413
    .restart local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 414
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "Exception while receiving all Application List through AIDl"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v5    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 424
    new-instance v16, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    const-string/jumbo v17, "mirror_link_applications"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const v18, 0x7f0b08f9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const v18, 0x7f0b08fb

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    :goto_1
    const/4 v6, 0x0

    .line 434
    .local v6, "appListInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 435
    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No of apps: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_5

    .line 438
    new-instance v15, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 439
    .local v15, "pre":Landroid/preference/Preference;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 440
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 441
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    const v16, 0x7f0b08f7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    .end local v15    # "pre":Landroid/preference/Preference;
    :cond_5
    const/4 v10, 0x0

    .end local v6    # "appListInfo":Landroid/os/Bundle;
    .local v10, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 447
    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop: With tthe Index [i] as :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 449
    .local v14, "packName":Ljava/lang/String;
    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop : Package name for the index ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "] is :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 453
    .local v6, "appListInfo":Landroid/os/Bundle;
    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "In For Loop: Bundle Received for the package Name"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    if-nez v6, :cond_7

    .line 456
    return-void

    .line 429
    .end local v6    # "appListInfo":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v14    # "packName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_1

    .line 458
    .restart local v6    # "appListInfo":Landroid/os/Bundle;
    .restart local v10    # "i":I
    .restart local v14    # "packName":Ljava/lang/String;
    :cond_7
    :try_start_2
    new-instance v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;

    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;-><init>(Ljava/lang/String;)V

    .line 459
    .local v13, "mlapp":Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    const-string/jumbo v16, "EntitiesName"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mEntityName:Ljava/lang/String;

    .line 460
    const-string/jumbo v16, "AppStatus"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    .line 461
    const-string/jumbo v16, "VALID_DATE"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mValidDate:Ljava/lang/String;

    .line 462
    const-string/jumbo v16, "RESTRICTED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mRestricted:Ljava/lang/String;

    .line 463
    const-string/jumbo v16, "NONRESTRICTED"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mNonRestricted:Ljava/lang/String;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mListDevices:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v16, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    .line 470
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 471
    .local v4, "appIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIndex(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 473
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 474
    .local v3, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    invoke-virtual {v11, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setKey(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    iget-object v0, v13, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mStatus:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setValidCheck(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v16, v0

    new-instance v17, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$4;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMirrorLinkAppPreference:Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 446
    .end local v3    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "appListInfo":Landroid/os/Bundle;
    .end local v13    # "mlapp":Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
    :cond_8
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 518
    :catch_1
    move-exception v8

    .line 519
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v16, "MirrorLink"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "loadAppIcon : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 515
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v9

    .line 516
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string/jumbo v16, "MirrorLink"

    const-string/jumbo v17, "Exception while receiving the information of the Given PackagName through AIDl"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 391
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "packName":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 525
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 527
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 534
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 553
    const-string/jumbo v9, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 554
    .local v1, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbConnected:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    if-eqz v9, :cond_2

    :cond_0
    const/4 v6, 0x0

    .line 555
    .local v6, "usbAvailable":Z
    :goto_0
    const/4 v8, 0x0

    .line 556
    .local v8, "usbTethered":Z
    const/4 v9, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    move v10, v9

    :goto_1
    if-ge v10, v11, :cond_7

    aget-object v3, p2, v10

    .line 557
    .local v3, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_2
    if-ge v9, v13, :cond_6

    aget-object v2, v12, v9

    .line 558
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "ncm"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 559
    const/4 v8, 0x1

    .line 557
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 554
    .end local v2    # "regex":Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v6    # "usbAvailable":Z
    .end local v8    # "usbTethered":Z
    :cond_2
    const/4 v6, 0x1

    .restart local v6    # "usbAvailable":Z
    goto :goto_0

    .line 560
    .restart local v2    # "regex":Ljava/lang/String;
    .restart local v3    # "s":Ljava/lang/String;
    .restart local v8    # "usbTethered":Z
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "usb"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "rndis"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 561
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 562
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 563
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    .line 564
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v15, 0x7f0b0904

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 556
    .end local v2    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 568
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 569
    .local v7, "usbErrored":Z
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_4
    if-ge v10, v11, :cond_a

    aget-object v3, p3, v10

    .line 570
    .restart local v3    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v13, v12

    :goto_5
    if-ge v9, v13, :cond_9

    aget-object v2, v12, v9

    .line 571
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v7, 0x1

    .line 570
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 569
    .end local v2    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_4

    .line 577
    .end local v3    # "s":Ljava/lang/String;
    :cond_a
    const-string/jumbo v9, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 578
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_f

    .line 579
    const-string/jumbo v9, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 580
    :cond_b
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 581
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b0900

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 552
    :cond_c
    :goto_6
    return-void

    .line 586
    :cond_d
    const-string/jumbo v9, "usb"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbManager;

    invoke-static {v9}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->isUsbSideSyncModeEnabled(Landroid/hardware/usb/UsbManager;)Z

    move-result v4

    .line 588
    .local v4, "sidesyncDB":Z
    if-eqz v4, :cond_e

    .line 589
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 591
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b03ed

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 593
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b0900

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 595
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 598
    .end local v4    # "sidesyncDB":Z
    :cond_f
    if-eqz v6, :cond_10

    .line 600
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetheringEnabled:Z

    if-nez v9, :cond_c

    .line 601
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b03ed

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    .line 606
    :cond_10
    if-eqz v7, :cond_11

    .line 607
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b1468

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 617
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 618
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_6

    .line 608
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    if-eqz v9, :cond_12

    .line 609
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b1465

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7

    .line 611
    :cond_12
    const-string/jumbo v9, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string/jumbo v9, "TMK"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 612
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b03e9

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7

    .line 614
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    const v10, 0x7f0b1466

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setHasOptionsMenu(Z)V

    .line 643
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 641
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 647
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 648
    if-nez p1, :cond_0

    .line 649
    if-ne p2, v1, :cond_1

    .line 650
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->startTethering()V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 655
    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v2, 0x7f08009e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->addPreferencesFromResource(I)V

    .line 195
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    .line 198
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    .line 199
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mPkgMngr:Landroid/content/pm/PackageManager;

    .line 201
    const-string/jumbo v2, "ncm_usb_tether_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    .line 202
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 206
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 210
    .local v1, "usbAvailable":Z
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mProvisionApp:[Ljava/lang/String;

    .line 216
    new-instance v2, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$3;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;)V

    iput-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mServiceCon:Landroid/content/ServiceConnection;

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v2

    if-nez v2, :cond_3

    .line 233
    return-void

    .line 190
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 239
    const v0, 0x7f0b0903

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMenuMore:Landroid/view/MenuItem;

    .line 240
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 238
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink Settings: onDestroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 388
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 385
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 247
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SubSettings;

    .line 248
    .local v0, "subSettings":Lcom/android/settings/SubSettings;
    const-class v1, Lcom/samsung/android/settings/mirrorlink/MirrorLinkDeviceUID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0903

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 249
    const/4 v1, 0x1

    return v1

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 326
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->doUnbindFromService()V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MirrorLinkSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 707
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_1

    .line 708
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    .line 709
    iget-object v4, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 708
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 710
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 711
    .local v0, "isNcmOn":Z
    if-eqz v0, :cond_0

    .line 712
    iput v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChoice:I

    .line 714
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 715
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->setNcmTethering(Z)V

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "usb_tethering_enabled"

    iget-object v5, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 718
    .end local v0    # "isNcmOn":Z
    :cond_1
    return v2

    .restart local v0    # "isNcmOn":Z
    :cond_2
    move v1, v2

    .line 716
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 338
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-nez v0, :cond_0

    .line 340
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "MirrorLink : Binding to Tms"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->BindToMLService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_tethering_enabled"

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 366
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "MirrorLinkSetting"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 334
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 304
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mMassStorageActive:Z

    .line 305
    new-instance v3, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;

    invoke-direct {v3, p0, v5}, Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;-><init>(Lcom/samsung/android/settings/mirrorlink/MirrorLink;Lcom/samsung/android/settings/mirrorlink/MirrorLink$TetherChangeReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 309
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 317
    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->updateState()V

    .line 299
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 376
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "usb_tethering_enabled"

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLink;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 380
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;
    }
.end annotation


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field private mContentUriApkStagingFile:Ljava/io/File;

.field mInstallConfirm:Landroid/view/View;

.field mInstaller:Landroid/content/pm/PackageInstaller;

.field private mOk:Landroid/widget/Button;

.field private mOkCanInstall:Z

.field private mOriginatingURI:Landroid/net/Uri;

.field private mOriginatingUid:I

.field private mPackageURI:Landroid/net/Uri;

.field mPkgInfo:Landroid/content/pm/PackageInfo;

.field mPm:Landroid/content/pm/PackageManager;

.field private mReferrerURI:Landroid/net/Uri;

.field mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

.field private mSessionId:I

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;

.field private mStagingAsynTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/PackageInstallerActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mContentUriApkStagingFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/PackageInstallerActivity;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->processPackageUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/PackageInstallerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkIfAllowedAndInitiateInstall(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->launchSecuritySettings()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/packageinstaller/PackageInstallerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;-><init>()V

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    return-void
.end method

.method private checkIfAllowedAndInitiateInstall(Z)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isUnknownSourcesDisallowed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_install_unknown_sources"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isUnknownSourcesEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isUnknownSourcesEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0
.end method

.method private clearCachedApkIfNeededAndFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mContentUriApkStagingFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mContentUriApkStagingFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mContentUriApkStagingFile:Ljava/io/File;

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void
.end method

.method private getOriginatingUid(Landroid/content/Intent;)I
    .locals 12

    const/4 v8, 0x0

    const/4 v11, -0x1

    const-string/jumbo v9, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {p1, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSourceInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eq v7, v11, :cond_0

    iget-object v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_0

    return v7

    :cond_0
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    return v8

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v7, v11, :cond_3

    iget-object v9, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v9, v1

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v5, v1, v8

    :try_start_1
    iget-object v10, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    return v7

    :catch_0
    move-exception v4

    const-string/jumbo v8, "PackageInstaller"

    const-string/jumbo v9, "Could not determine the launching uid."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_1
    move-exception v3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private getSourceInfo()Landroid/content/pm/ApplicationInfo;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    :cond_0
    return-object v4
.end method

.method private initiateInstall()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v3, v1, v5

    if-eqz v3, :cond_0

    aget-object v2, v1, v5

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iput-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void

    :catch_0
    move-exception v0

    iput-object v6, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method private isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    return v4

    :catch_0
    move-exception v1

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isUnknownSourcesDisallowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUnknownSourcesEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchSecuritySettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private processPackageUri(Landroid/net/Uri;)Z
    .locals 14

    const/4 v7, 0x2

    const/4 v13, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "package"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_2

    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not available. Discontinuing installation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v5

    :cond_0
    const-string/jumbo v3, "file"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v12, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v2, "PackageInstaller"

    const-string/jumbo v3, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v5

    :cond_1
    const-string/jumbo v3, "content"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;

    invoke-direct {v3, p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;Lcom/android/packageinstaller/PackageInstallerActivity$StagingAsyncTask;)V

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mStagingAsynTask:Landroid/os/AsyncTask;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mStagingAsynTask:Landroid/os/AsyncTask;

    new-array v3, v13, [Landroid/net/Uri;

    aput-object p1, v3, v5

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v5

    :cond_2
    new-instance v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const v2, 0x7f110079

    invoke-static {p0, v0, v2}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    return v13

    :cond_3
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    new-instance v9, Landroid/content/pm/PackageUserState;

    invoke-direct {v9}, Landroid/content/pm/PackageUserState;-><init>()V

    const/16 v3, 0x1000

    move-object v8, v2

    invoke-static/range {v1 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v2, v12}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    return v5

    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    return-void
.end method

.method private startInstall()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.packageinstaller.applicationInfo"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-class v2, Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.intent.extra.ORIGINATING_URI"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.intent.extra.REFERRER"

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "android.intent.extra.ORIGINATING_UID"

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.RETURN_RESULT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    iget-boolean v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloaded app uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void
.end method

.method private startInstallConfirm()V
    .locals 14

    const v12, 0x7f110095

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0d0145

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    const v12, 0x7f110054

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x1020012

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TabHost;

    invoke-virtual {v10}, Landroid/widget/TabHost;->setup()V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TabHost;->setVisibility(I)V

    const v12, 0x7f110097

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/packageinstaller/TabsAdapter;

    invoke-direct {v1, p0, v10, v11}, Lcom/android/packageinstaller/TabsAdapter;-><init>(Landroid/app/Activity;Landroid/widget/TabHost;Landroid/support/v4/view/ViewPager;)V

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_6

    const/4 v9, 0x1

    :goto_0
    const/4 v6, 0x0

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    const/4 v4, 0x0

    new-instance v7, Landroid/widget/AppSecurityPermissions;

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v7, p0, v12}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    const v12, 0xffff

    invoke-virtual {v7, v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_7

    const v4, 0x7f0d0148

    :goto_1
    new-instance v12, Lcom/android/packageinstaller/CaffeinatedScrollView;

    invoke-direct {v12, p0}, Lcom/android/packageinstaller/CaffeinatedScrollView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/packageinstaller/CaffeinatedScrollView;->setFillViewport(Z)V

    const/4 v5, 0x0

    if-nez v9, :cond_0

    const/4 v12, 0x4

    invoke-virtual {v7, v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v12

    if-lez v12, :cond_8

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/packageinstaller/CaffeinatedScrollView;->addView(Landroid/view/View;)V

    :cond_0
    if-nez v9, :cond_1

    if-eqz v5, :cond_9

    :cond_1
    :goto_3
    const-string/jumbo v12, "new"

    invoke-virtual {v10, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    const v13, 0x7f0d0173

    invoke-virtual {p0, v13}, Lcom/android/packageinstaller/PackageInstallerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    iget-object v13, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    invoke-virtual {v1, v12, v13}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    :goto_4
    if-nez v9, :cond_3

    if-lez v0, :cond_3

    const/4 v6, 0x1

    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v12, 0x7f03006d

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-nez v12, :cond_2

    const v12, 0x7f110131

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/packageinstaller/CaffeinatedScrollView;

    iput-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    :cond_2
    const v12, 0x7f110132

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    const v13, 0xffff

    invoke-virtual {v7, v13}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string/jumbo v12, "all"

    invoke-virtual {v10, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    const v13, 0x7f0d0174

    invoke-virtual {p0, v13}, Lcom/android/packageinstaller/PackageInstallerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v12

    invoke-virtual {v1, v12, v8}, Lcom/android/packageinstaller/TabsAdapter;->addTab(Landroid/widget/TabHost$TabSpec;Landroid/view/View;)V

    :cond_3
    if-nez v6, :cond_4

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_b

    const v4, 0x7f0d014a

    :goto_5
    const v12, 0x7f110054

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/widget/TabHost;->setVisibility(I)V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    :cond_4
    if-eqz v4, :cond_5

    const v12, 0x7f110095

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-nez v12, :cond_d

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v13, 0x7f0d013f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    :goto_7
    return-void

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f0d0147

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v12, 0x7f030022

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v12, 0x7f0d0177

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    invoke-virtual {v12, v3}, Lcom/android/packageinstaller/CaffeinatedScrollView;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_a
    const v12, 0x7f110096

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    const v12, 0x7f110054

    invoke-virtual {p0, v12}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_b
    const v4, 0x7f0d0149

    goto/16 :goto_5

    :cond_c
    const v4, 0x7f0d0146

    goto :goto_6

    :cond_d
    iget-object v12, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    new-instance v13, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v13, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v12, v13}, Lcom/android/packageinstaller/CaffeinatedScrollView;->setFullScrollAction(Ljava/lang/Runnable;)V

    goto :goto_7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkIfAllowedAndInitiateInstall(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    :cond_0
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onBackPressed()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOkCanInstall:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstall()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mScrollView:Lcom/android/packageinstaller/CaffeinatedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/CaffeinatedScrollView;->pageScroll(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(I)V

    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    iget v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    :cond_5
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->clearCachedApkIfNeededAndFinish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->getOriginatingUid(Landroid/content/Intent;)I

    move-result v5

    iput v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const-string/jumbo v5, "android.content.pm.action.CONFIRM_PERMISSIONS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v5, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in funky state; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void

    :cond_1
    iput v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    iput-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    :goto_0
    if-nez v2, :cond_3

    const-string/jumbo v5, "PackageInstaller"

    const-string/jumbo v6, "Unspecified source"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    return-void

    :cond_2
    iput v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v5, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    const-string/jumbo v5, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x7

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    :cond_4
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    const v5, 0x7f110094

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f110099

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const v5, 0x7f110098

    invoke-virtual {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->processPackageUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkIfAllowedAndInitiateInstall(Z)V

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const v9, 0x7f0d0142

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0d0154

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v4, 0x0

    return-object v4

    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0152

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$2;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$3;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const v6, 0x7f0d0155

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0153

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$4;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0172

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$5;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_4
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0d015b

    invoke-virtual {p0, v5, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$6;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const v6, 0x7f0d0156

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$7;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_5
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0d0150

    invoke-virtual {p0, v5, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$8;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0198

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/packageinstaller/PackageInstallerActivity$9;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mStagingAsynTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mStagingAsynTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mStagingAsynTask:Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onPause()V

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->onResume()V

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method setPmResult(I)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

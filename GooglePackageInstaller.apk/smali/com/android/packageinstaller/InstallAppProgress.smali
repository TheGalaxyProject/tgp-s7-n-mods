.class public Lcom/android/packageinstaller/InstallAppProgress;
.super Landroid/app/Activity;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallAppProgress$1;,
        Lcom/android/packageinstaller/InstallAppProgress$2;
    }
.end annotation


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final TAG:Ljava/lang/String;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDoneButton:Landroid/widget/Button;

.field private mExplanationTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInstallHandler:Landroid/os/Handler;

.field private mInstallThread:Landroid/os/HandlerThread;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLaunchButton:Landroid/widget/Button;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOkPanel:Landroid/view/View;

.field private mPackageURI:Landroid/net/Uri;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatusTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/packageinstaller/InstallAppProgress;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/InstallAppProgress;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->getExplanationFromErrorCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallAppProgress;->clearCachedApkIfNeededAndFinish()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallAppProgress;->doPackageStage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/packageinstaller/InstallAppProgress;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialogInner(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "InstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->INSTALL_COMPLETE:I

    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$1;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/packageinstaller/InstallAppProgress$2;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/InstallAppProgress$2;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private clearCachedApkIfNeededAndFinish()V
    .locals 3

    const-string/jumbo v1, "file"

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->finish()V

    return-void
.end method

.method private doPackageStage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v16

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v19

    const/high16 v3, 0x10000

    new-array v9, v3, [B

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    const-string/jumbo v3, "PackageInstaller"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v3, -0x1

    if-eq v10, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v15, v9, v3, v10}, Ljava/io/OutputStream;->write([BII)V

    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    int-to-float v3, v10

    long-to-float v4, v6

    div-float v13, v3, v4

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    invoke-static {v14}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v11

    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/InstallAppProgress;->onPackageInstalled(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_4
    invoke-virtual {v2, v15}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v14}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.packageinstaller.ACTION_INSTALL_COMMIT"

    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-static {v2}, Lcom/android/packageinstaller/permission/utils/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private getExplanationFromErrorCode(I)I
    .locals 3

    const-string/jumbo v0, "InstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Installation error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const v0, 0x7f0d014c

    return v0

    :pswitch_2
    const v0, 0x7f0d014d

    return v0

    :pswitch_3
    const v0, 0x7f0d014e

    return v0

    :pswitch_4
    const v0, 0x7f0d014f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showDialogInner(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallAppProgress;->showDialog(I)V

    return-void
.end method


# virtual methods
.method getInstallFlags(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    return v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method initView()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x1

    const v10, 0x7f03006a

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->getInstallFlags(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v10, v5, 0x2

    if-eqz v10, :cond_0

    const-string/jumbo v10, "InstallAppProgress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Replacing package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v10, "package"

    iget-object v11, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v10, v0, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    const v10, 0x7f110079

    invoke-static {p0, v0, v10}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    const v10, 0x7f110127

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mStatusTextView:Landroid/widget/TextView;

    const v10, 0x7f11012a

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mExplanationTextView:Landroid/widget/TextView;

    const v10, 0x7f110126

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v13}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v10, 0x7f11012b

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    const v10, 0x7f11012c

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    const v10, 0x7f11012d

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mOkPanel:Landroid/view/View;

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v10, "package"

    iget-object v11, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :try_start_0
    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/InstallAppProgress;->onPackageInstalled(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v10, v9}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v14}, Lcom/android/packageinstaller/InstallAppProgress;->onPackageInstalled(I)V

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v6, v13}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.REFERRER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v6, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, v6, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.ORIGINATING_UID"

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v6, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    :try_start_1
    invoke-static {v4, v10}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v7

    iget-object v10, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    iget v10, v7, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    iget-object v10, v6, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v11, v10}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v10, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/packageinstaller/InstallAppProgress$5;

    invoke-direct {v11, p0, v8, v6}, Lcom/android/packageinstaller/InstallAppProgress$5;-><init>(Lcom/android/packageinstaller/InstallAppProgress;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInstaller$SessionParams;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v10, "InstallAppProgress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot calculate installed size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Try only apk size."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v10, "InstallAppProgress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot parse package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Assuming defaults."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "InstallAppProgress"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot calculate installed size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ". Try only apk size."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallAppProgress;->clearCachedApkIfNeededAndFinish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/InstallAppProgress;->clearCachedApkIfNeededAndFinish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mDoneButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "InstallAppProgress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finished installing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallAppProgress;->clearCachedApkIfNeededAndFinish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallAppProgress;->clearCachedApkIfNeededAndFinish()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InstallAppProgress"

    const-string/jumbo v2, "Could not start activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "InstallThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.android.packageinstaller.ACTION_INSTALL_COMMIT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/packageinstaller/InstallAppProgress;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v3, v1, v4, v5}, Lcom/android/packageinstaller/InstallAppProgress;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/packageinstaller/InstallAppProgress;->initView()V

    return-void

    :cond_1
    const-string/jumbo v3, "package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/packageinstaller/InstallAppProgress;->mLabel:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d015b

    invoke-virtual {p0, v2, v1}, Lcom/android/packageinstaller/InstallAppProgress;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d015a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/InstallAppProgress$3;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/InstallAppProgress$3;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    const v3, 0x7f0d0156

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/InstallAppProgress$4;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/InstallAppProgress$4;-><init>(Lcom/android/packageinstaller/InstallAppProgress;)V

    const v3, 0x7f0d0142

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/InstallAppProgress;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress;->mInstallThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method onPackageInstalled(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

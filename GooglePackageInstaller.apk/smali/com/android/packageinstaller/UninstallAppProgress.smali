.class public Lcom/android/packageinstaller/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallAppProgress$1;,
        Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mDeviceManagerButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewInitialized:Z

.field private mOkButton:Landroid/widget/Button;

.field private volatile mResultCode:I

.field private mUser:Landroid/os/UserHandle;

.field private mUsersButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/UninstallAppProgress;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/packageinstaller/UninstallAppProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUsersButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/packageinstaller/UninstallAppProgress;I)I
    .locals 0

    iput p1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/UninstallAppProgress;Landroid/os/UserManager;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "UninstallAppProgress"

    iput-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    new-instance v0, Lcom/android/packageinstaller/UninstallAppProgress$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/UninstallAppProgress$1;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p2, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public initView()V
    .locals 9

    const/16 v8, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-boolean v4, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mIsViewInitialized:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mIsViewInitialized:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010054

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget v6, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010452

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010451

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    iget-object v4, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    const v3, 0x7f0d0160

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->setTitle(I)V

    const v3, 0x7f03008b

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->setContentView(I)V

    const v3, 0x7f110079

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v3, v2}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    const v3, 0x7f11014b

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    const v3, 0x7f11014c

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUsersButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/packageinstaller/UninstallAppProgress$2;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallAppProgress$2;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUsersButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/packageinstaller/UninstallAppProgress$3;

    invoke-direct {v4, p0}, Lcom/android/packageinstaller/UninstallAppProgress$3;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f110099

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/UninstallAppProgress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const v3, 0x7f0d015f

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mOkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "UninstallAppProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished uninstalling pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iput-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v6, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    :try_start_0
    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    :goto_1
    return-void

    :cond_0
    iget v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/UninstallAppProgress;->setResultAndFinish(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    iget-boolean v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v6, :cond_2

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const-string/jumbo v6, "android.intent.extra.USER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    iput-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    if-nez v6, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    :cond_3
    new-instance v3, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v3, p0}, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/UninstallAppProgress;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v6

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mAllUsers:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_2
    iget-object v8, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v9, v10, v3, v6, v8}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Only admin user can request uninstall for all users"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    const-string/jumbo v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/packageinstaller/UninstallAppProgress;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " can\'t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "request uninstall for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/packageinstaller/UninstallAppProgress;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    move v6, v8

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method setResultAndFinish(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    return-void
.end method

.class public Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.super Landroid/app/Service;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;,
        Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static volatile lockStatic:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final START_INSTALL:I

.field private final START_UNINSTALL:I

.field private mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;


# direct methods
.method static synthetic -wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->installPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->uninstallPackage(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->START_INSTALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->START_UNINSTALL:I

    return-void
.end method

.method private checkPermissions(Landroid/content/pm/PackageParser$Package;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "II",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/16 v7, 0x16

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v6, v7, :cond_0

    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    return v4

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, p4, p5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getWearPermsNotGrantedOnPhone(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    return v5

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    return v4

    :cond_3
    if-le p2, v7, :cond_8

    const/4 v1, 0x1

    :goto_1
    if-le p3, v7, :cond_9

    const/4 v0, 0x1

    :goto_2
    if-eqz v1, :cond_4

    const-string/jumbo v4, "WearPkgInstallerService"

    const-string/jumbo v6, "MNC: Wear app\'s targetSdkVersion should be at least 23, if phone app is targeting at least 23, will continue."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-nez p2, :cond_a

    :cond_6
    :goto_3
    invoke-direct {p0, p1, p6, v3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->startPermsServiceForInstall(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/util/List;)V

    :cond_7
    return v5

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    if-nez p3, :cond_7

    goto :goto_3
.end method

.method private finishService(Landroid/os/PowerManager$WakeLock;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->stopSelf(I)V

    return-void
.end method

.method private getIconFileUri(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/net/Uri;
    .locals 10

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    instance-of v6, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    invoke-static {p0, p1}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v6, "WearPkgInstallerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not get icon file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    const-string/jumbo v6, "WearPkgInstallerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Drawable is not a BitmapDrawable for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageIconProvider;->getUriForPackage(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return-object v6

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string/jumbo v6, "WearPkgInstallerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not convert drawable to icon file for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    return-object v9

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    throw v6

    :catch_3
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    sget-object v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->lockStatic:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getWearPermsNotGrantedOnPhone(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string/jumbo v0, "WearPkgInstallerService"

    const-string/jumbo v1, "Permission URI is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "WearPkgInstallerService"

    const-string/jumbo v1, "Could not get the cursor for the permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v11, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "WearPkgInstallerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wearable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has a permission \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" that is not defined in the host application\'s manifest."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "WearPkgInstallerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wearable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has a permission \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" that is not granted in the host application."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    return-object v10
.end method

.method private installPackage(Landroid/os/Bundle;)V
    .locals 32

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getAssetUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPermUri(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->checkPerms(Landroid/os/Bundle;)Z

    move-result v18

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->skipIfSameVersion(Landroid/os/Bundle;)Z

    move-result v31

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionSdkVersion(Landroid/os/Bundle;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompanionDeviceVersion(Landroid/os/Bundle;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getCompressionAlg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v3, "WearPkgInstallerService"

    const/4 v10, 0x3

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Installing package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", assetUri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",permUri: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", startId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", checkPerms: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", skipIfSameVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", compressionAlg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", companionSdkVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", companionDeviceVersion: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    const/4 v9, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v3, 0x3000

    :try_start_0
    move-object/from16 v0, v30

    invoke-virtual {v0, v15, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v22

    if-eqz v22, :cond_1

    const/16 v27, 0x2

    :cond_1
    :goto_0
    and-int/lit8 v3, v27, 0x2

    if-eqz v3, :cond_2

    :try_start_1
    const-string/jumbo v3, "WearPkgInstallerService"

    const/4 v10, 0x3

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Replacing package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v10, "r"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-static {v0, v1, v15, v2}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getFileFromFd(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_5

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not create a temp file from FD for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v28, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_4
    return-void

    :catch_0
    move-exception v20

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-static {v9}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    if-nez v4, :cond_8

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not parse apk information for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v28, :cond_7

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_7
    return-void

    :cond_8
    :try_start_3
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wearable Package Name has to match what is provided for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v28, :cond_a

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_a
    return-void

    :cond_b
    :try_start_4
    iget-object v8, v4, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v22, :cond_15

    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v10, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ne v3, v10, :cond_12

    if-eqz v31, :cond_e

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Version number ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") of new app is equal to existing app for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; not installing due to versionCheck"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v28, :cond_d

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_d
    return-void

    :cond_e
    :try_start_5
    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Version number of new app ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") is equal to existing app for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_1
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_15

    const/16 v26, 0x0

    :goto_2
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_15

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v26

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_11

    const-string/jumbo v3, "WearPkgInstallerService"

    const/4 v10, 0x3

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v26

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is already granted for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v3, v3, v26

    invoke-interface {v8, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    :cond_12
    move-object/from16 v0, v22

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v10, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-le v3, v10, :cond_f

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Version number of new app ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") is lower than existing app ( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    iget v11, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v21

    :try_start_6
    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not find the file with URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-static {v3, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v28, :cond_14

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_14
    :goto_3
    return-void

    :cond_15
    if-eqz v18, :cond_16

    move-object/from16 v3, p0

    :try_start_7
    invoke-direct/range {v3 .. v9}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->checkPermissions(Landroid/content/pm/PackageParser$Package;IILandroid/net/Uri;Ljava/util/List;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_16
    const/16 v25, 0x1

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_17
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, v23

    iget v3, v0, Landroid/content/pm/FeatureInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Wearable does not have required feature: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    goto :goto_4

    :cond_18
    const-string/jumbo v3, "WearPkgInstallerService"

    const-string/jumbo v10, "Wearable does not have enough permissions."

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v28, :cond_1a

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_1a
    return-void

    :cond_1b
    if-nez v25, :cond_1e

    if-nez v28, :cond_1d

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_1d
    return-void

    :cond_1e
    :try_start_8
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    new-instance v10, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;)V

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v3, v10, v1, v15}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    const/16 v28, 0x1

    const-string/jumbo v3, "WearPkgInstallerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sent installation request for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v28, :cond_14

    if-eqz v9, :cond_1f

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    if-nez v28, :cond_21

    if-eqz v9, :cond_20

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->finishService(Landroid/os/PowerManager$WakeLock;I)V

    :cond_21
    throw v3
.end method

.method private startPermsServiceForInstall(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.google.android.wearable.app"

    const-string/jumbo v8, "com.google.android.clockwork.packagemanager.ShowPermsService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getIconFileUri(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v5, "WearPkgInstallerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MNC: Could not launch service since either label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", or icon Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is invalid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "com.google.android.clockwork.EXTRA_APP_LABEL"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v5, "com.google.android.clockwork.EXTRA_APP_ICON_URI"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.google.android.clockwork.EXTRA_PERMS_LIST"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "com.google.android.clockwork.EXTRA_HAS_LAUNCHER"

    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageUtil;->hasLauncherActivity(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "WearPkgInstallerService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WearPkgInstallerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MNC: Launching Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private startPermsServiceForUninstall(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.google.android.wearable.app"

    const-string/jumbo v4, "com.google.android.clockwork.packagemanager.ShowPermsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "WearPkgInstallerService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WearPkgInstallerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launching Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private uninstallPackage(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getStartId(Landroid/os/Bundle;)I

    move-result v3

    invoke-static {p1}, Lcom/android/packageinstaller/wear/WearPackageArgs;->getPackageName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    new-instance v4, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v3, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;ILcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->startPermsServiceForUninstall(Ljava/lang/String;)V

    const-string/jumbo v4, "WearPkgInstallerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sent delete request for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PackageInstallerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 v8, 0x2

    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "WearPkgInstallerService"

    const-string/jumbo v6, "Not running on wearable."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v5, "WearPkgInstallerService"

    const-string/jumbo v6, "Got null intent."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const-string/jumbo v5, "WearPkgInstallerService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WearPkgInstallerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got install/uninstall request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v5, "WearPkgInstallerService"

    const-string/jumbo v6, "No package URI in intent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    invoke-static {v4}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getSanitizedPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string/jumbo v5, "WearPkgInstallerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid package name in URI (expected package:<pkgName>): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    invoke-virtual {p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_6
    invoke-static {v0, p3}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setStartId(Landroid/os/Bundle;I)Landroid/os/Bundle;

    invoke-static {v0, v3}, Lcom/android/packageinstaller/wear/WearPackageArgs;->setPackageName(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    const-string/jumbo v5, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_0
    return v8

    :cond_8
    const-string/jumbo v5, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v5, v8}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->mServiceHandler:Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

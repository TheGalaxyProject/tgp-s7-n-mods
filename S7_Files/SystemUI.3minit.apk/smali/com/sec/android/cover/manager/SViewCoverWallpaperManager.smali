.class public Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;,
        Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;
    }
.end annotation


# static fields
.field private static final FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# instance fields
.field private final PRELOAD_WALLPAPER_ID:[I

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCurrentUserWallpaperFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->grantPermissionsToFileProvider()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->registerFileObserver()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->unregisterFileObserver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "com.sec.android.wallpapercropper2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.samsung.android.themestore"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 60
    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 118
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create SViewCoverWallpaperManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->grantPermissionsToFileProvider()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "sview_bg_wallpaper_uri"

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getFileProviderUriString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    .line 127
    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_drawable_list:I

    .line 126
    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    .line 129
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->registerFileObserver()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 117
    return-void
.end method

.method private getCurrentUserWallpaperFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v1

    .line 187
    .local v1, "sviewCoverWallpaperDir":Ljava/io/File;
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sview_bg_wallpaper_path"

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    .line 187
    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mkdirs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cover_wallpaper.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v2, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->loadDeafaultWallpaper(Ljava/io/File;)V

    .line 204
    :cond_1
    return-object v2

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IOException cannot create file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getFileProviderUriString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "content://com.android.systemui.cover.fileprovider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v1, "wallpaper_images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, "cover_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 114
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    return-object v0
.end method

.method private getUserWallpaperDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 307
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v0

    .line 308
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    .line 309
    .local v1, "wallpaperDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 310
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperDir":Ljava/io/File;
    const-string/jumbo v2, "/storage/emulated/0/Android/data/com.android.systemui/files/"

    const-string/jumbo v3, "wallpaper_images"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v1, "wallpaperDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mkdirs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    return-object v1

    .line 312
    .local v1, "wallpaperDir":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperDir":Ljava/io/File;
    const-string/jumbo v2, "/storage/emulated/0/Android/data/com.android.systemui/files/"

    const-string/jumbo v3, "guest_wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "wallpaperDir":Ljava/io/File;
    goto :goto_0
.end method

.method private getWallpaperFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 171
    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 172
    const-string/jumbo v4, "sview_bg_wallpaper_path"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    .line 171
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "oldWallpaperDir":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCurrentUserWallpaperFile()Ljava/io/File;

    move-result-object v2

    .line 177
    .local v2, "wallpaperFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 178
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "cover_wallpaper.jpg"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v1, "oldWallpaperFile":Ljava/io/File;
    invoke-direct {p0, v1, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->loadOldWallpaper(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method private getWallpaperIndexByColor()I
    .locals 7

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "colorId":Ljava/lang/String;
    const-string/jumbo v4, "wallpaper"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 281
    invoke-static {v4}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v3

    .line 285
    .local v3, "mService":Landroid/app/IWallpaperManager;
    :try_start_0
    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    .end local v0    # "colorId":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWallpaperIndexByColor colorId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v2, 0x1

    .line 292
    .local v2, "index":I
    const-string/jumbo v4, "zd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    const/4 v2, 0x5

    .line 303
    :cond_0
    :goto_1
    return v2

    .line 286
    .end local v2    # "index":I
    .restart local v0    # "colorId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException occurred !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v0    # "colorId":Ljava/lang/String;
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "index":I
    :cond_1
    const-string/jumbo v4, "zs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    const/4 v2, 0x7

    goto :goto_1

    .line 296
    :cond_2
    const-string/jumbo v4, "zb"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    const/4 v2, 0x3

    goto :goto_1

    .line 298
    :cond_3
    const-string/jumbo v4, "zi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    const/16 v2, 0x9

    goto :goto_1

    .line 300
    :cond_4
    const-string/jumbo v4, "zk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private grantPermissionsToFileProvider()V
    .locals 7

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getFileProviderUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .local v0, "fileUri":Landroid/net/Uri;
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 150
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v0, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadDeafaultWallpaper(Ljava/io/File;)V
    .locals 8
    .param p1, "wallpaperFile"    # Ljava/io/File;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 215
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndexByColor()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v6

    .line 214
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 216
    .local v4, "walllpaperBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 218
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    if-eqz v3, :cond_0

    .line 225
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 221
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "FileNotFoundException: Wallpaper File does not exists"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v2, :cond_0

    .line 225
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 226
    :catch_2
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 223
    :goto_2
    if-eqz v2, :cond_1

    .line 225
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 222
    :cond_1
    :goto_3
    throw v5

    .line 226
    :catch_3
    move-exception v1

    .line 227
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error writing Bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 222
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 220
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private loadOldWallpaper(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p1, "oldWallpaperFile"    # Ljava/io/File;
    .param p2, "currentWallpaperFile"    # Ljava/io/File;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWallpaperFile oldWallpaperFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 244
    .local v4, "oldWallpaper":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 247
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    if-eqz v3, :cond_0

    .line 254
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oldWallpaper":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 255
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oldWallpaper":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 250
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "FileNotFoundException: Wallpaper File does not exists"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    if-eqz v2, :cond_0

    .line 254
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 255
    :catch_2
    move-exception v1

    .line 256
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 252
    :goto_2
    if-eqz v2, :cond_1

    .line 254
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 251
    :cond_1
    :goto_3
    throw v5

    .line 255
    :catch_3
    move-exception v1

    .line 256
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error writing Bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 249
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private registerFileObserver()V
    .locals 2

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "wallpaperDirPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    .line 268
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->startWatching()V

    .line 264
    :cond_0
    return-void
.end method

.method private unregisterFileObserver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->stopWatching()V

    .line 275
    iput-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreloadWallpaperResId(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PRELOAD_WALLPAPER is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget v0, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    return v0

    .line 327
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    .line 328
    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid preload wallpaper index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v2, v2

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 135
    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWallpaperBitmap()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    .line 138
    .local v2, "wallpapertFile":Ljava/io/File;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "walllpaperBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .local v1, "walllpaperBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method

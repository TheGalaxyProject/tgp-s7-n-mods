.class public Lcom/sec/android/cover/manager/CoverDatabaseManager;
.super Ljava/lang/Object;
.source "CoverDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverDatabaseManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/cover/manager/CoverDatabaseManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHashIntValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHashStringValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;-><init>(Lcom/sec/android/cover/manager/CoverDatabaseManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 58
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create SViewCoverWallpaperManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->sInstance:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->sInstance:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->sInstance:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    return-object v0
.end method

.method private registerContentObserver(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new regist content observer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    .line 122
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    .line 118
    return-void
.end method


# virtual methods
.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "dbKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 65
    move v0, p2

    .line 67
    .local v0, "value":I
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 71
    const/4 v2, -0x2

    .line 70
    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->registerContentObserver(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecureInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "dbKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    const/4 v1, -0x2

    .line 126
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dbKey"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const/4 v2, -0x2

    .line 85
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->registerContentObserver(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "dbKey"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putInt dbKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    const/4 v1, -0x2

    .line 97
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->registerContentObserver(Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dbKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putString dbKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    const/4 v1, -0x2

    .line 109
    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 112
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->registerContentObserver(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

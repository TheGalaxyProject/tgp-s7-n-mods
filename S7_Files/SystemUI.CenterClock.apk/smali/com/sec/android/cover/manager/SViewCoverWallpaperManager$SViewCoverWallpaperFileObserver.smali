.class Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;
.super Landroid/os/FileObserver;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SViewCoverWallpaperFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .line 338
    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 337
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 343
    sparse-switch p1, :sswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 347
    :sswitch_0
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

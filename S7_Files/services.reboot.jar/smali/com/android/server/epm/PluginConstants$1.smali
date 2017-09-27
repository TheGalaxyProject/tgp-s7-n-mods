.class final Lcom/android/server/epm/PluginConstants$1;
.super Ljava/util/HashMap;
.source "PluginConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/PluginConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string/jumbo v0, "com.sec.android.app.voicenote"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v0, "com.sec.android.app.music"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v0, "com.samsung.android.video"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v0, "com.sec.android.app.vepreload"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v0, "com.sec.android.app.clipvideo"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v0, "com.samsung.android.scloud.backup"

    const-string/jumbo v1, "com.samsung.android.scloud"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v0, "com.sec.android.widgetapp.ap.hero.accuweather"

    const-string/jumbo v1, "com.sec.android.daemonapp"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v0, "com.samsung.android.qconnect"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/epm/PluginConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

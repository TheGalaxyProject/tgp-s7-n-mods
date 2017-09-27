.class final Lcom/android/settingslib/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/BatteryStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$shortString"    # Z
    .param p3, "val$callback"    # Lcom/android/settingslib/BatteryInfo$Callback;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settingslib/BatteryInfo$2;->val$shortString:Z

    iput-object p3, p0, Lcom/android/settingslib/BatteryInfo$2;->val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 171
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 172
    .local v0, "statsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/BatteryStats;)V
    .locals 10
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;

    .prologue
    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 179
    .local v4, "elapsedRealtimeUs":J
    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 180
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 181
    .local v2, "batteryBroadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 182
    iget-boolean v6, p0, Lcom/android/settingslib/BatteryInfo$2;->val$shortString:Z

    move-object v3, p1

    .line 181
    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    .line 183
    .local v0, "batteryInfo":Lcom/android/settingslib/BatteryInfo;
    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

    invoke-interface {v1, v0}, Lcom/android/settingslib/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V

    .line 177
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "batteryStats"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Landroid/os/BatteryStats;

    .end local p1    # "batteryStats":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/BatteryInfo$2;->onPostExecute(Landroid/os/BatteryStats;)V

    return-void
.end method

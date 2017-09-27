.class Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;
.super Landroid/database/ContentObserver;
.source "LowBatteryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/LowBatteryActivity;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 91
    .local v0, "mLowPowerMode":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/LowBatteryActivity$1;->this$0:Lcom/samsung/android/settings/powersaving/LowBatteryActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/powersaving/LowBatteryActivity;->-wrap2(Lcom/samsung/android/settings/powersaving/LowBatteryActivity;I)V

    .line 89
    return-void

    .line 90
    .end local v0    # "mLowPowerMode":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mLowPowerMode":Z
    goto :goto_0
.end method

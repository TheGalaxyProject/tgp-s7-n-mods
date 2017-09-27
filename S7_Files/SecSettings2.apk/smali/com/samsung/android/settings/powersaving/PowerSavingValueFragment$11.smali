.class Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingValueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->registerBatteryStatusReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 602
    const-string/jumbo v3, "level"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 603
    .local v0, "currentLevel":I
    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 604
    .local v1, "scale":I
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 607
    .local v2, "status":I
    if-ltz v0, :cond_0

    if-lez v1, :cond_0

    .line 608
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-set0(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;I)I

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment$11;->this$0:Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;->-wrap5(Lcom/samsung/android/settings/powersaving/PowerSavingValueFragment;)V

    .line 601
    return-void
.end method

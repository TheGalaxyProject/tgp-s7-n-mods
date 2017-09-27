.class Lcom/samsung/android/settings/TRoamingSettings$11;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/TRoamingSettings;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;

.field final synthetic val$rBackground:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/TRoamingSettings;
    .param p2, "val$rBackground"    # Z

    .prologue
    .line 827
    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$11;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/TRoamingSettings$11;->val$rBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 829
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$11;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get5(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/TRoamingSettings$11;->val$rBackground:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 830
    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$11;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get0(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    invoke-static {}, Lcom/samsung/android/settings/TRoamingSettings;->-get2()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 828
    return-void
.end method

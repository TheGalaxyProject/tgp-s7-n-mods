.class Lcom/android/settings/SimPersoLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SimPersoLockSettings;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings$2;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings$2;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    .line 128
    :cond_0
    return-void
.end method

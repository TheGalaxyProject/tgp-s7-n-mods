.class Lcom/android/packageinstaller/InstallAppProgress$2;
.super Landroid/content/BroadcastReceiver;
.source "InstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/InstallAppProgress;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$2;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string/jumbo v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    .line 163
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "statusCode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    const-string/jumbo v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$2;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/InstallAppProgress;->onPackageInstalled(I)V

    goto :goto_0
.end method

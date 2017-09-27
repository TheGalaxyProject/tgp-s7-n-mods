.class public Lcom/samsung/android/service/SecurityManager/SecurityManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityManagerReceiver.java"


# instance fields
.field private mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.samsung.android.service.SecurityManager.UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-direct {v1, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityManagerReceiver;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    .line 18
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityManagerReceiver;->mSecurityJob:Lcom/samsung/android/service/SecurityManager/SecurityJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->updateNotification()V

    .line 13
    :cond_0
    return-void
.end method

.class Lcom/samsung/android/settings/ResetSettingsConfirm$1;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ResetSettingsConfirm;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v3}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-get0(Lcom/samsung/android/settings/ResetSettingsConfirm;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iput-object v4, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-set0(Lcom/samsung/android/settings/ResetSettingsConfirm;Z)Z

    .line 135
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v3}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-get1(Lcom/samsung/android/settings/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "finalContext":Landroid/content/Context;
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 137
    .local v2, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm$1;Landroid/content/Context;)V

    .line 145
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 122
    .end local v0    # "finalContext":Landroid/content/Context;
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "timer":Ljava/util/Timer;
    :cond_2
    return-void
.end method

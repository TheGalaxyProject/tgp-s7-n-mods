.class Lcom/samsung/android/settings/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SettingsApplication;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/app/executor/data/State;)V
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/app/executor/data/State;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "SettingsHome"

    .line 95
    .local v1, "nlgString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    .line 96
    .local v2, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    const-string/jumbo v5, "SettingsHome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v5}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/settings/Settings;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "i":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v5, v0}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    new-instance v3, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v5}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 104
    .end local v3    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v5}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 106
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2
    return-void
.end method

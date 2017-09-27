.class Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;
.super Ljava/lang/Object;
.source "ZenModeVisualInterruptionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 67
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-get0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    .line 68
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0x107

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 70
    sget-boolean v1, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange suppressWhenScreenOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v2, v0, v4}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-wrap0(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;ZI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;->-wrap1(Lcom/android/settings/notification/ZenModeVisualInterruptionSettings;I)V

    .line 72
    return v4
.end method

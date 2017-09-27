.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0b19db

    const v6, 0x7f0b19dc

    const/4 v9, 0x0

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "MultiWindowSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "accessibility_enabled"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    .line 104
    .local v3, "voiceAssistanceCheck":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 105
    if-eqz v3, :cond_3

    .line 106
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 107
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 108
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 116
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 117
    if-eqz v3, :cond_6

    .line 118
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 119
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 120
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 99
    .end local v3    # "voiceAssistanceCheck":Z
    :cond_1
    :goto_2
    return-void

    .line 103
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "voiceAssistanceCheck":Z
    goto :goto_0

    .line 110
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 111
    const-string/jumbo v7, "db_popup_view_shortcut"

    const/4 v8, 0x1

    .line 110
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    .line 112
    .local v1, "popupGestureCheck":Z
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v7

    if-eqz v1, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 110
    .end local v1    # "popupGestureCheck":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "popupGestureCheck":Z
    goto :goto_3

    :cond_5
    move v4, v6

    .line 113
    goto :goto_4

    .line 122
    .end local v1    # "popupGestureCheck":Z
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 123
    const-string/jumbo v7, "db_split_screen_view_shortcut"

    .line 122
    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    .line 124
    .local v2, "splitScreenCheck":Z
    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 125
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->-get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    .line 122
    .end local v2    # "splitScreenCheck":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "splitScreenCheck":Z
    goto :goto_5

    :cond_8
    move v5, v6

    .line 125
    goto :goto_6
.end method

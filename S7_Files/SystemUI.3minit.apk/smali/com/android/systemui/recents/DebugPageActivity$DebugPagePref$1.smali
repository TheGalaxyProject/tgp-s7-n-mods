.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;
.super Ljava/lang/Object;
.source "DebugPageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 108
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 110
    .local v1, "scale":F
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pref_key_window_animation_scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const/4 v2, 0x0

    .line 127
    .local v2, "which":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    iget-object v3, v3, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 128
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-static {v3, v2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->-wrap2(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v3, 0x1

    return v3

    .line 108
    .end local v1    # "scale":F
    .end local v2    # "which":I
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "scale":F
    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v4, "pref_key_transition_animation_scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 115
    const/4 v2, 0x1

    .line 116
    .restart local v2    # "which":I
    goto :goto_1

    .line 110
    .end local v2    # "which":I
    :cond_2
    const-string/jumbo v4, "pref_key_animator_duration_scale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    const/4 v2, 0x2

    .line 119
    .restart local v2    # "which":I
    goto :goto_1

    .line 121
    .end local v2    # "which":I
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$1;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown pref key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 123
    return v6

    .line 130
    .restart local v2    # "which":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RecentsActivity.DebugPage"

    const-string/jumbo v4, "Fail to set animation scale."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return v6
.end method

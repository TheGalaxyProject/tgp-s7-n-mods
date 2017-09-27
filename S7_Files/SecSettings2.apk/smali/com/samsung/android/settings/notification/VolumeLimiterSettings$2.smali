.class Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

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

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 95
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    const v3, 0x7f10011e

    .line 101
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 102
    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 103
    return v4

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    .line 99
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

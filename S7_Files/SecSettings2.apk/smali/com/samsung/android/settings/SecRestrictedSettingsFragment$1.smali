.class Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SecRestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-get0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-set1(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-set0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z

    .line 88
    :cond_0
    return-void
.end method

.class Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "DualSoundRingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DualSoundRingtoneSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DualSoundRingtoneSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/DualSoundRingtoneSettings$3;->this$0:Lcom/samsung/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/DualSoundRingtoneSettings;->finish()V

    .line 214
    return-void
.end method

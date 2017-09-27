.class Lcom/samsung/android/settings/WirelessSettings$9;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/WirelessSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/WirelessSettings;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$9;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeLockStatus(Z)V
    .locals 2
    .param p1, "isSimLocked"    # Z

    .prologue
    .line 977
    if-nez p1, :cond_1

    .line 978
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$9;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v1, "network_unlock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$9;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->-get1(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$9;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v1, "network_unlock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$9;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v1, "network_unlock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

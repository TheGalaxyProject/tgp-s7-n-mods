.class Lcom/samsung/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/PrivacySettings;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 471
    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    .line 472
    return v3

    .line 474
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 475
    .local v1, "nextValue":Z
    const/4 v2, 0x0

    .line 476
    .local v2, "result":Z
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 478
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacySettings;->-get3(Lcom/samsung/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    const/4 v2, 0x1

    .line 483
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 485
    :cond_1
    return v2

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacySettings$2;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacySettings;->-get1(Lcom/samsung/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

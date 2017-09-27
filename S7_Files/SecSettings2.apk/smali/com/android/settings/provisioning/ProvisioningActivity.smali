.class public Lcom/android/settings/provisioning/ProvisioningActivity;
.super Landroid/app/Activity;
.source "ProvisioningActivity.java"


# instance fields
.field private mProvisionApp:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/provisioning/ProvisioningActivity;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/provisioning/ProvisioningActivity;->finish()V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "tetheringProvisionApp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/provisioning/ProvisioningActivity;->setResult(I)V

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/provisioning/ProvisioningActivity;->finish()V

    .line 31
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/settings/provisioning/ProvisioningActivity;->mProvisionApp:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v2, "TETHER_TYPE"

    invoke-virtual {p0}, Lcom/android/settings/provisioning/ProvisioningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "TETHER_TYPE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/provisioning/ProvisioningActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

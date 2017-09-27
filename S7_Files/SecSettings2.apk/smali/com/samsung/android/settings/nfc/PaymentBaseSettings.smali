.class public Lcom/samsung/android/settings/nfc/PaymentBaseSettings;
.super Landroid/app/Fragment;
.source "PaymentBaseSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x1020002

    .line 35
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v5, "category"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    :goto_0
    new-instance v3, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {v3}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;-><init>()V

    .line 42
    .local v3, "newFragment":Lcom/samsung/android/settings/nfc/TapAndPaySettings;
    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->setStartCategory(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 44
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v5, 0x1020002

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    .end local v3    # "newFragment":Lcom/samsung/android/settings/nfc/TapAndPaySettings;
    :goto_1
    return-void

    .line 40
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const/4 v4, 0x0

    .local v4, "value":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentBaseSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/nfc/TapAndPaySettings;

    invoke-direct {v6}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;-><init>()V

    invoke-virtual {v5, v7, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

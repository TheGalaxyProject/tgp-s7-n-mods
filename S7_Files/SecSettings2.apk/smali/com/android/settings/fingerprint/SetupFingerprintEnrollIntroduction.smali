.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 50
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 7

    .prologue
    .line 62
    const v5, 0x7f11036e

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;

    .line 63
    .local v2, "layout":Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    .line 64
    .local v0, "adapter":Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    const v5, 0x7f1101a9

    invoke-virtual {v0, v5}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v4

    check-cast v4, Lcom/android/setupwizardlib/items/Item;

    .line 66
    .local v4, "nextItem":Lcom/android/setupwizardlib/items/Item;
    const v5, 0x7f0b1157

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Lcom/android/setupwizardlib/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const v5, 0x7f1101a8

    invoke-virtual {v0, v5}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/Item;

    .line 70
    .local v1, "cancelItem":Lcom/android/setupwizardlib/items/Item;
    const v5, 0x7f0b1156

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 69
    invoke-virtual {v1, v5}, Lcom/android/setupwizardlib/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 75
    .local v3, "nextButton":Landroid/widget/Button;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 78
    const v6, 0x7f0a004b

    .line 77
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    .line 60
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 83
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 84
    if-nez p3, :cond_0

    .line 85
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 87
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v1, ":settings:password_quality"

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 88
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 54
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:frp_supported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    invoke-static {v1}, Lcom/android/settings/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 99
    .local v0, "dialog":Lcom/android/settings/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 96
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->onBackPressed()V

    .line 103
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.class public Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "SecAccessibilitySettingsForSetupWizardActivity.java"


# instance fields
.field private mSendExtraWindowStateChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 55
    const v3, 0x7f11010f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setMainContentId(I)V

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v3, 0x7f11049f

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 60
    .local v1, "parentLayout":Landroid/widget/FrameLayout;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 61
    const v4, 0x7f04001c

    .line 60
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setIsDrawerPresent(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 68
    const v3, 0x7f11061e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 69
    .local v2, "parentView":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 71
    new-instance v3, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$1;-><init>(Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 80
    const v3, 0x7f110110

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    .line 81
    .local v0, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    new-instance v3, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity$2;-><init>(Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->onBackPressed()V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 125
    const/16 v1, 0x20

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->mSendExtraWindowStateChanged:Z

    .line 108
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const-string/jumbo v0, "activity_title"

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilitySettingsForSetupWizardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SharedAccessibilityFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;
    }
.end annotation


# instance fields
.field private importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private isPreferenceOpen:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

.field private sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    .line 130
    new-instance v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method private buildShareViewDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    const-string/jumbo v0, "shared_accessibility_share"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->getClickLister()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b025d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b025e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    goto :goto_0
.end method

.method private buildStateDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "shared_accessibility_export_import"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->clearItems()V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b025f

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0261

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0260

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    const v1, 0x7f0b0262

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->addItem(ILjava/lang/Object;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setCallback(Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string/jumbo v1, "SharedAccessibilityFragment"

    const-string/jumbo v2, "SharedAccessibilityFragment Loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->addPreferencesFromResource(I)V

    .line 39
    const-string/jumbo v1, "shared_accessibility_menus"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->sharedAccessibilityMenus:Landroid/preference/PreferenceScreen;

    .line 40
    const-string/jumbo v1, "shared_accessibility_export_import"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->importexportAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "shared_accessibility_share"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->setEnabled(Z)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildShareViewDropDown()V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->buildStateDropDown()V

    .line 35
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 109
    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    if-eqz v1, :cond_0

    .line 110
    return v2

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->shareAccessibility:Lcom/samsung/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Item"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    new-instance v1, Landroid/content/ComponentName;

    .line 116
    const-string/jumbo v2, "com.android.settings"

    .line 117
    const-string/jumbo v3, "com.samsung.android.settings.accessibility.sharedaccessibility.ShareAccessibilityShareVia"

    .line 115
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->startActivity(Landroid/content/Intent;)V

    .line 119
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    .line 120
    return v4

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->isPreferenceOpen:Z

    .line 151
    return-void
.end method

.class Lcom/android/settings/DreamSettings$DreamInfoPreference;
.super Landroid/preference/Preference;
.source "DreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/android/settings/DreamSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/DreamSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    .line 342
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 343
    iput-object p3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 344
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    .line 351
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 354
    const v5, 0x1020019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 355
    .local v0, "radioButton":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v5, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 356
    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/DreamSettings$DreamInfoPreference$1;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    new-instance v5, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference$2;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v5, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v5, v5, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 372
    .local v3, "showSettings":Z
    :goto_0
    const v5, 0x7f110143

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 373
    .local v2, "settingsDivider":Landroid/view/View;
    if-eqz v3, :cond_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 376
    .local v1, "settingsButton":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 378
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 379
    iget-object v4, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 380
    new-instance v4, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;

    invoke-direct {v4, p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference$3;-><init>(Lcom/android/settings/DreamSettings$DreamInfoPreference;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void

    .line 371
    .end local v1    # "settingsButton":Landroid/widget/ImageView;
    .end local v2    # "settingsDivider":Landroid/view/View;
    .end local v3    # "showSettings":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "showSettings":Z
    goto :goto_0

    .line 377
    .restart local v1    # "settingsButton":Landroid/widget/ImageView;
    .restart local v2    # "settingsDivider":Landroid/view/View;
    :cond_3
    const v4, 0x3ecccccd    # 0.4f

    goto :goto_1
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v0}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 388
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 397
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v2, :cond_0

    .line 398
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-virtual {v2}, Lcom/android/settings/DreamSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DreamSettings$DreamInfoPreference;

    .line 402
    .local v1, "preference":Lcom/android/settings/DreamSettings$DreamInfoPreference;
    iget-object v2, v1, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 403
    invoke-virtual {v1}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v1    # "preference":Lcom/android/settings/DreamSettings$DreamInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 406
    iget-object v2, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->this$0:Lcom/android/settings/DreamSettings;

    invoke-static {v2}, Lcom/android/settings/DreamSettings;->-get3(Lcom/android/settings/DreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v3, v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/DreamSettings$DreamInfoPreference;->notifyChanged()V

    .line 393
    return-void
.end method

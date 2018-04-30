.class public final Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;
.super Landroid/preference/PreferenceFragment;
.source "ReviewPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReviewPermissionsFragment"
.end annotation


# instance fields
.field private mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mHasConfirmedRevoke:Z

.field private mNewPermissionsCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private bindUi()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v11, 0x7f11007a

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->isPackageUpdated()Z

    move-result v11

    if-eqz v11, :cond_1

    const v7, 0x7f0d019b

    :goto_0
    new-instance v8, Landroid/text/SpannableString;

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-virtual {p0, v7, v11}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x1010435

    invoke-virtual {v11, v12, v10, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v11, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v12, v3, v2

    invoke-virtual {v8, v11, v3, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v11, 0x7f110138

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f11013a

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f110098

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const v7, 0x7f0d019a

    goto :goto_0
.end method

.method private confirmPermissionsReview()V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v7, v3, Landroid/preference/TwoStatePreference;

    if-eqz v7, :cond_0

    move-object v6, v3

    check-cast v6, Landroid/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v7, v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v0

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    :goto_2
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->resetReviewRequired()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    goto :goto_2

    :cond_3
    return-void
.end method

.method private executeCallback(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.RESULT_NEEDED"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v4, 0x2000000

    const/high16 v5, 0x2000000

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallback;

    if-eqz v7, :cond_3

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v7, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_3
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private isPackageUpdated()Z
    .locals 5

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private loadPreferences()V
    .locals 13

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :goto_0
    const/4 v2, 0x0

    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->isPackageUpdated()Z

    move-result v6

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "android"

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    :goto_2
    instance-of v10, v1, Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_4

    move-object v8, v1

    check-cast v8, Landroid/preference/SwitchPreference;

    :goto_3
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const v10, 0x7f0d018f

    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v6, :cond_6

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    new-instance v8, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconPkg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconResId()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1010429

    invoke-static {v10, v5, v11}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_7

    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    const v11, 0x7f0d019e

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_8
    if-nez v2, :cond_9

    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d019f

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public static newInstance(Landroid/content/pm/PackageInfo;)Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.extra.PACKAGE_INFO"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setRetainInstance(Z)V

    return-object v1
.end method

.method private showWarnRevokeDialog(Ljava/lang/String;)V
    .locals 3

    const v1, 0x7f0d0185

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActionConfirmed(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mHasConfirmedRevoke:Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->confirmPermissionsReview()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->executeCallback(Z)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->executeCallback(Z)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "com.android.packageinstaller.permission.ui.extra.PACKAGE_INFO"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    new-instance v5, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;)V

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :cond_4
    if-nez v8, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mHasConfirmedRevoke:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, p1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->showWarnRevokeDialog(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->refresh()V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->loadPreferences()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->bindUi()V

    return-void
.end method

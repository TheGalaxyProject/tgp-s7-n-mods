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

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private bindUi()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 243
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 244
    return-void

    .line 248
    :cond_0
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 248
    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 250
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    const v11, 0x7f11007a

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 251
    .local v6, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "appLabel":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->isPackageUpdated()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 256
    const v7, 0x7f0d019b

    .line 258
    .local v7, "labelTemplateResId":I
    :goto_0
    new-instance v8, Landroid/text/SpannableString;

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v1, v11, v13

    invoke-virtual {p0, v7, v11}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 260
    .local v8, "message":Landroid/text/SpannableString;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v8}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 264
    .local v3, "appLabelStart":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 266
    .local v2, "appLabelLength":I
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 267
    .local v10, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x1010435

    invoke-virtual {v11, v12, v10, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 268
    iget v11, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    .line 270
    .local v4, "color":I
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 271
    add-int v12, v3, v2

    .line 270
    invoke-virtual {v8, v11, v3, v12, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 273
    const v11, 0x7f110138

    .line 272
    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 274
    .local v9, "permissionsMessageView":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f11013a

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    .line 278
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f110098

    invoke-virtual {v11, v12}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    .line 281
    iget-object v11, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v11, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-void

    .line 257
    .end local v2    # "appLabelLength":I
    .end local v3    # "appLabelStart":I
    .end local v4    # "color":I
    .end local v7    # "labelTemplateResId":I
    .end local v8    # "message":Landroid/text/SpannableString;
    .end local v9    # "permissionsMessageView":Landroid/widget/TextView;
    .end local v10    # "typedValue":Landroid/util/TypedValue;
    :cond_1
    const v7, 0x7f0d019a

    .restart local v7    # "labelTemplateResId":I
    goto :goto_0
.end method

.method private confirmPermissionsReview()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 221
    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v7, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    .line 224
    .local v5, "preferenceGroup":Landroid/preference/PreferenceGroup;
    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 225
    .local v4, "preferenceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 226
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 227
    .local v3, "preference":Landroid/preference/Preference;
    instance-of v7, v3, Landroid/preference/TwoStatePreference;

    if-eqz v7, :cond_0

    move-object v6, v3

    .line 228
    check-cast v6, Landroid/preference/TwoStatePreference;

    .line 229
    .local v6, "twoStatePreference":Landroid/preference/TwoStatePreference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "groupName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v7, v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v0

    .line 231
    .local v0, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 232
    invoke-virtual {v0, v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    .line 236
    :goto_2
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->resetReviewRequired()V

    .line 225
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v6    # "twoStatePreference":Landroid/preference/TwoStatePreference;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    .end local v2    # "i":I
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceCount":I
    .end local v5    # "preferenceGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    goto :goto_0

    .line 234
    .restart local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .restart local v1    # "groupName":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "preference":Landroid/preference/Preference;
    .restart local v4    # "preferenceCount":I
    .restart local v5    # "preferenceGroup":Landroid/preference/PreferenceGroup;
    .restart local v6    # "twoStatePreference":Landroid/preference/TwoStatePreference;
    :cond_2
    invoke-virtual {v0, v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    goto :goto_2

    .line 220
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v6    # "twoStatePreference":Landroid/preference/TwoStatePreference;
    :cond_3
    return-void
.end method

.method private executeCallback(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 381
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    if-eqz p1, :cond_2

    .line 385
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 386
    .local v1, "intent":Landroid/content/IntentSender;
    if-eqz v1, :cond_2

    .line 388
    const/4 v4, 0x0

    .line 389
    .local v4, "flagMask":I
    const/4 v5, 0x0

    .line 390
    .local v5, "flagValues":I
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 391
    const-string/jumbo v3, "android.intent.extra.RESULT_NEEDED"

    const/4 v6, 0x0

    .line 390
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    const/high16 v4, 0x2000000

    .line 393
    const/high16 v5, 0x2000000

    .line 395
    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 396
    const/4 v6, 0x0

    .line 395
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_0
    return-void

    .line 403
    .end local v1    # "intent":Landroid/content/IntentSender;
    .end local v4    # "flagMask":I
    .end local v5    # "flagValues":I
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 404
    const-string/jumbo v3, "android.intent.extra.REMOTE_CALLBACK"

    .line 403
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/RemoteCallback;

    .line 405
    .local v7, "callback":Landroid/os/RemoteCallback;
    if-eqz v7, :cond_3

    .line 406
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v9, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v9, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    invoke-virtual {v7, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 379
    .end local v9    # "result":Landroid/os/Bundle;
    :cond_3
    return-void

    .line 397
    .end local v7    # "callback":Landroid/os/RemoteCallback;
    .restart local v1    # "intent":Landroid/content/IntentSender;
    .restart local v4    # "flagMask":I
    .restart local v5    # "flagValues":I
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method private isPackageUpdated()Z
    .locals 5

    .prologue
    .line 368
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v4}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/AppPermissionGroup;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 370
    .local v1, "groupCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 371
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 372
    .local v0, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    const/4 v4, 0x1

    return v4

    .line 370
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private loadPreferences()V
    .locals 13

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 286
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 291
    .local v9, "screen":Landroid/preference/PreferenceScreen;
    if-nez v9, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 293
    invoke-virtual {p0, v9}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 298
    :goto_0
    const/4 v2, 0x0

    .line 299
    .local v2, "currentPermissionsCategory":Landroid/preference/PreferenceGroup;
    iget-object v7, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    .line 300
    .local v7, "oldNewPermissionsCategory":Landroid/preference/PreferenceGroup;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    .line 302
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->isPackageUpdated()Z

    move-result v6

    .line 304
    .local v6, "isPackageUpdated":Z
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "currentPermissionsCategory":Landroid/preference/PreferenceGroup;
    .local v4, "group$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 305
    .local v3, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v10}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 306
    const-string/jumbo v10, "android"

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 313
    if-eqz v7, :cond_3

    .line 314
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 315
    .local v1, "cachedPreference":Landroid/preference/Preference;
    :goto_2
    instance-of v10, v1, Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_4

    move-object v8, v1

    .line 316
    check-cast v8, Landroid/preference/SwitchPreference;

    .line 332
    .local v8, "preference":Landroid/preference/SwitchPreference;
    :goto_3
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 335
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 336
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 338
    const v10, 0x7f0d018f

    .line 337
    invoke-virtual {p0, v10}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 343
    :goto_4
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 344
    if-nez v6, :cond_6

    .line 345
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 295
    .end local v1    # "cachedPreference":Landroid/preference/Preference;
    .end local v3    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v4    # "group$iterator":Ljava/util/Iterator;
    .end local v6    # "isPackageUpdated":Z
    .end local v7    # "oldNewPermissionsCategory":Landroid/preference/PreferenceGroup;
    .end local v8    # "preference":Landroid/preference/SwitchPreference;
    :cond_2
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 314
    .restart local v3    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .restart local v4    # "group$iterator":Ljava/util/Iterator;
    .restart local v6    # "isPackageUpdated":Z
    .restart local v7    # "oldNewPermissionsCategory":Landroid/preference/PreferenceGroup;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 318
    .restart local v1    # "cachedPreference":Landroid/preference/Preference;
    :cond_4
    new-instance v8, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v8    # "preference":Landroid/preference/SwitchPreference;
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 322
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconPkg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getIconResId()I

    move-result v12

    .line 321
    invoke-static {v10, v11, v12}, Lcom/android/packageinstaller/permission/utils/Utils;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 323
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 324
    const v11, 0x1010429

    .line 323
    invoke-static {v10, v5, v11}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 325
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v3}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDescription()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 329
    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 340
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_4

    .line 347
    :cond_6
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_7

    .line 348
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    .line 349
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    const v11, 0x7f0d019e

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 350
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 351
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_7
    iget-object v10, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mNewPermissionsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 356
    :cond_8
    if-nez v2, :cond_9

    .line 357
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 358
    .local v2, "currentPermissionsCategory":Landroid/preference/PreferenceGroup;
    const v10, 0x7f0d019f

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 359
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 360
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 362
    .end local v2    # "currentPermissionsCategory":Landroid/preference/PreferenceGroup;
    :cond_9
    invoke-virtual {v2, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 284
    .end local v1    # "cachedPreference":Landroid/preference/Preference;
    .end local v3    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v8    # "preference":Landroid/preference/SwitchPreference;
    :cond_a
    return-void
.end method

.method public static newInstance(Landroid/content/pm/PackageInfo;)Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.extra.PACKAGE_INFO"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    new-instance v1, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;-><init>()V

    .line 113
    .local v1, "instance":Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;
    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->setRetainInstance(Z)V

    .line 115
    return-object v1
.end method

.method private showWarnRevokeDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 216
    const v1, 0x7f0d0185

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1, p1}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;->newInstance(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;

    move-result-object v0

    .line 217
    .local v0, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onActionConfirmed(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 207
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v2, v0, Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 208
    check-cast v1, Landroid/preference/SwitchPreference;

    .line 209
    .local v1, "switchPreference":Landroid/preference/SwitchPreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mHasConfirmedRevoke:Z

    .line 205
    .end local v1    # "switchPreference":Landroid/preference/SwitchPreference;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mContinueButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->confirmPermissionsReview()V

    .line 180
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->executeCallback(Z)V

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 182
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->executeCallback(Z)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 123
    .local v1, "activity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "com.android.packageinstaller.permission.ui.extra.PACKAGE_INFO"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 128
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 130
    return-void

    .line 133
    :cond_1
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 134
    new-instance v5, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;)V

    .line 133
    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 141
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 143
    return-void

    .line 146
    :cond_2
    const/4 v8, 0x0

    .line 147
    .local v8, "reviewRequired":Z
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "group$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 148
    .local v6, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-virtual {v6}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const/4 v8, 0x1

    .line 154
    .end local v6    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_4
    if-nez v8, :cond_5

    .line 155
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_5
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 190
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mHasConfirmedRevoke:Z

    if-eqz v1, :cond_0

    .line 191
    return v2

    .line 193
    :cond_0
    instance-of v1, p1, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 194
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 195
    .local v0, "switchPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->showWarnRevokeDialog(Ljava/lang/String;)V

    .line 201
    .end local v0    # "switchPreference":Landroid/preference/SwitchPreference;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 198
    .restart local v0    # "switchPreference":Landroid/preference/SwitchPreference;
    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->mAppPermissions:Lcom/android/packageinstaller/permission/model/AppPermissions;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->refresh()V

    .line 169
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->loadPreferences()V

    .line 166
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/ReviewPermissionsActivity$ReviewPermissionsFragment;->bindUi()V

    .line 160
    return-void
.end method

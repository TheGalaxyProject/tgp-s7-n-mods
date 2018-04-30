.class public Lcom/android/packageinstaller/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    .locals 9

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 v4, 0x0

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v7, :cond_0

    :try_start_0
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    const/4 v3, 0x0

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_2

    :try_start_1
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    new-instance v7, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    invoke-direct {v7, v4, v3}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v7

    :cond_4
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1

    const v0, 0x7f11007a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f11007b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p2, v2, v0}, Lcom/android/packageinstaller/PackageUtil;->initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f11007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f11007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

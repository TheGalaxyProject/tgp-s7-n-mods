.class public Lcom/samsung/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private currentThemePath:Ljava/lang/String;

.field private downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 279
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 73
    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 76
    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 82
    new-instance v6, Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    .line 85
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 88
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 91
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 94
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 109
    iput-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 149
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    .line 150
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    .line 153
    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    .line 154
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 156
    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 157
    iput-boolean v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 158
    iput v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 281
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 283
    const-string/jumbo v6, "layout_inflater"

    .line 282
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b05d8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0540

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    .line 290
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 292
    const/4 v3, 0x0

    .line 294
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v3    # "fontPackageName":Ljava/lang/String;
    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 295
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 297
    .local v3, "fontPackageName":Ljava/lang/String;
    const-string/jumbo v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 299
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 300
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 301
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 302
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 294
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v3    # "fontPackageName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v4    # "i":I
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 318
    const-string/jumbo v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    .end local v2    # "f":Ljava/io/File;
    :goto_2
    return-void

    .line 308
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :try_start_2
    const-string/jumbo v6, "/system/fonts/DroidSans.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 322
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static destroyInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    .line 272
    sput-object v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 270
    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 15
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "fontPackageName"    # Ljava/lang/String;

    .prologue
    .line 664
    const-string/jumbo v12, ".xml"

    const-string/jumbo v13, ".ttf"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 665
    .local v8, "fontName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 667
    .local v3, "chinaFontName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 668
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 671
    .end local v3    # "chinaFontName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v12, "shaonv"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "kaiti"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v12, "miao"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 673
    :cond_1
    move-object v2, v3

    .line 674
    .local v2, "chainaPreviewFont":Ljava/lang/String;
    const-string/jumbo v12, ".ttf"

    const-string/jumbo v13, "_prev.ttf"

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 675
    const/4 v4, 0x0

    .line 677
    .local v4, "chinaTypeface":Landroid/graphics/Typeface;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "/system/fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 701
    .local v4, "chinaTypeface":Landroid/graphics/Typeface;
    return-object v4

    .line 678
    .local v4, "chinaTypeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v6

    .line 680
    .local v6, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_1
    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 681
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 682
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 683
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 684
    .local v11, "res":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    :try_start_2
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 693
    .local v10, "is":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 698
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v12, v13}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    .line 685
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v7

    .line 687
    .local v7, "ex":Ljava/lang/Exception;
    const/4 v12, 0x0

    return-object v12

    .line 694
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v9

    .line 695
    .local v9, "ie":Ljava/io/IOException;
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    .line 706
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "chainaPreviewFont":Ljava/lang/String;
    .end local v4    # "chinaTypeface":Landroid/graphics/Typeface;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v9    # "ie":Ljava/io/IOException;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v12, 0x0

    :try_start_3
    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 707
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 708
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 709
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 710
    .restart local v11    # "res":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 718
    :try_start_4
    iget-object v12, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 719
    .restart local v10    # "is":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 724
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v12, v13}, Lcom/samsung/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12

    .line 711
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v6

    .line 713
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    return-object v12

    .line 720
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v5

    .line 721
    .local v5, "e":Ljava/io/IOException;
    move-object/from16 v0, p2

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    return-object v12
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 19
    .param p1, "sFont"    # Ljava/lang/String;
    .param p2, "sPackageName"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v3, 0x0

    .line 578
    .local v3, "cr":Landroid/content/ContentResolver;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 584
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "content://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/fonts/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 585
    .local v16, "uriFont":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 588
    .local v11, "isFont":Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    .line 594
    .local v11, "isFont":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 597
    .local v10, "fTemp":Ljava/io/File;
    :try_start_2
    const-string/jumbo v17, "font"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v10

    .line 608
    .local v10, "fTemp":Ljava/io/File;
    const/4 v8, 0x0

    .line 609
    .local v8, "fOut":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 612
    .local v12, "os":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .local v9, "fOut":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 614
    .local v13, "os":Ljava/io/BufferedOutputStream;
    const/16 v17, 0x400

    :try_start_5
    move/from16 v0, v17

    new-array v2, v0, [B

    .line 615
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    .local v2, "b":[B
    const/4 v14, 0x0

    .line 617
    .local v14, "read":I
    :goto_0
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_3

    .line 618
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v14}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_16
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 623
    .end local v2    # "b":[B
    .end local v14    # "read":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .local v12, "os":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 624
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    :goto_1
    const/16 v17, 0x0

    .line 628
    if-eqz v12, :cond_0

    .line 630
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 634
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    .line 636
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 640
    :cond_1
    :goto_3
    if-eqz v11, :cond_2

    .line 642
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 624
    :cond_2
    :goto_4
    return-object v17

    .line 579
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "fTemp":Ljava/io/File;
    .end local v11    # "isFont":Ljava/io/InputStream;
    .end local v16    # "uriFont":Landroid/net/Uri;
    .local v3, "cr":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 580
    .local v6, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    return-object v17

    .line 589
    .end local v6    # "e":Ljava/lang/Exception;
    .local v3, "cr":Landroid/content/ContentResolver;
    .local v11, "isFont":Ljava/io/InputStream;
    .restart local v16    # "uriFont":Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 590
    .restart local v6    # "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    return-object v17

    .line 598
    .end local v6    # "e":Ljava/lang/Exception;
    .local v10, "fTemp":Ljava/io/File;
    .local v11, "isFont":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 600
    .local v5, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 604
    :goto_5
    const/16 v17, 0x0

    return-object v17

    .line 601
    :catch_4
    move-exception v7

    .local v7, "e1":Ljava/lang/Exception;
    goto :goto_5

    .line 621
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "e1":Ljava/lang/Exception;
    .restart local v2    # "b":[B
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v10, "fTemp":Ljava/io/File;
    .restart local v13    # "os":Ljava/io/BufferedOutputStream;
    .restart local v14    # "read":I
    :cond_3
    :try_start_a
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V

    .line 622
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 628
    if-eqz v13, :cond_4

    .line 630
    :try_start_b
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 634
    :cond_4
    :goto_6
    if-eqz v9, :cond_5

    .line 636
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 640
    :cond_5
    :goto_7
    if-eqz v11, :cond_6

    .line 642
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 649
    :cond_6
    :goto_8
    :try_start_e
    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v15

    .line 650
    .local v15, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_12

    .line 651
    return-object v15

    .line 631
    .end local v15    # "tf":Landroid/graphics/Typeface;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 637
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 643
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 625
    .end local v2    # "b":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .end local v14    # "read":I
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    .local v12, "os":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v5

    .line 626
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_9
    const/16 v17, 0x0

    .line 628
    if-eqz v12, :cond_7

    .line 630
    :try_start_f
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 634
    :cond_7
    :goto_a
    if-eqz v8, :cond_8

    .line 636
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 640
    :cond_8
    :goto_b
    if-eqz v11, :cond_9

    .line 642
    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 626
    :cond_9
    :goto_c
    return-object v17

    .line 631
    :catch_9
    move-exception v5

    goto :goto_a

    .line 637
    :catch_a
    move-exception v5

    goto :goto_b

    .line 643
    :catch_b
    move-exception v5

    goto :goto_c

    .line 631
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_c
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 637
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 643
    .end local v5    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 627
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v12    # "os":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v17

    .line 628
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    :goto_d
    if-eqz v12, :cond_a

    .line 630
    :try_start_12
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 634
    :cond_a
    :goto_e
    if-eqz v8, :cond_b

    .line 636
    :try_start_13
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 640
    :cond_b
    :goto_f
    if-eqz v11, :cond_c

    .line 642
    :try_start_14
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 627
    :cond_c
    :goto_10
    throw v17

    .line 631
    :catch_f
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_e

    .line 637
    .end local v5    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 643
    .end local v5    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 652
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "b":[B
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/BufferedOutputStream;
    .restart local v14    # "read":I
    :catch_12
    move-exception v6

    .line 653
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 654
    const/16 v17, 0x0

    return-object v17

    .line 627
    .end local v2    # "b":[B
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .end local v14    # "read":I
    .restart local v12    # "os":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    goto :goto_d

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .local v12, "os":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 623
    .local v8, "fOut":Ljava/io/FileOutputStream;
    .local v12, "os":Ljava/io/BufferedOutputStream;
    :catch_13
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 625
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .end local v12    # "os":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v13    # "os":Ljava/io/BufferedOutputStream;
    :catch_16
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "os":Ljava/io/BufferedOutputStream;
    .local v12, "os":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_9
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 165
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 175
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 176
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iput-object p0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    .line 177
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0

    .line 169
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v1, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b05c5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 457
    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    monitor-enter v2

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    monitor-exit v2

    .line 459
    return-void

    .line 461
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 463
    .local v0, "fontTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 464
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v2

    .line 456
    return-void

    .line 457
    .end local v0    # "fontTypeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeFontIndex()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return v0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const v4, 0x7f0b05ad

    const v3, 0x7f0b05ac

    const v2, 0x7f0b05ab

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 360
    .local v0, "tmpString":Ljava/lang/String;
    const-string/jumbo v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 409
    .restart local v0    # "tmpString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :cond_1
    const-string/jumbo v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_2
    const-string/jumbo v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 367
    :cond_3
    const-string/jumbo v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_4
    const-string/jumbo v1, "Chococooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 370
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 372
    :cond_5
    const-string/jumbo v1, "Cooljazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 374
    :cond_6
    const-string/jumbo v1, "Samsungsans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "SamsungSans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 375
    :cond_7
    const-string/jumbo v0, "Samsung Sans"

    goto/16 :goto_0

    .line 376
    :cond_8
    const-string/jumbo v1, "Applemint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 377
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 378
    const v2, 0x7f0b05ae

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 379
    :cond_9
    const-string/jumbo v1, "Tinkerbell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 381
    const v2, 0x7f0b05af

    .line 380
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 382
    :cond_a
    const-string/jumbo v1, "Shaonv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 383
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 384
    const v2, 0x7f0b05b3

    .line 383
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 385
    :cond_b
    const-string/jumbo v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 387
    const v2, 0x7f0b05b4

    .line 386
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 388
    :cond_c
    const-string/jumbo v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 389
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    const v2, 0x7f0b05b5

    .line 389
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 391
    :cond_d
    const-string/jumbo v1, "UDRGothic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 392
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 393
    const v2, 0x7f0b05b0

    .line 392
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 394
    :cond_e
    const-string/jumbo v1, "UDMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 395
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 396
    const v2, 0x7f0b05b1

    .line 395
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 397
    :cond_f
    const-string/jumbo v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 398
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 399
    const v2, 0x7f0b05b2

    .line 398
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 400
    :cond_10
    const-string/jumbo v1, "Current theme\'s default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 402
    const v2, 0x7f0b0540

    .line 401
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 403
    :cond_11
    const-string/jumbo v1, "Foundation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 404
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 405
    const v2, 0x7f0b05b6

    .line 404
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 406
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getFontTypeface(I)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 548
    const/4 v3, 0x0

    .line 549
    .local v3, "newTypeface":Landroid/graphics/Typeface;
    const/4 v2, 0x0

    .line 550
    .local v2, "fontfile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 552
    .local v1, "fontPackageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 554
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "fontfile":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "fontPackageName":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 559
    .end local v1    # "fontPackageName":Ljava/lang/String;
    .end local v2    # "fontfile":Ljava/lang/String;
    .end local v3    # "newTypeface":Landroid/graphics/Typeface;
    :cond_0
    if-nez v3, :cond_1

    .line 561
    :try_start_0
    const-string/jumbo v4, "/system/fonts/DroidSans.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 567
    :cond_1
    :goto_0
    return-object v3

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 350
    int-to-long v0, p1

    return-wide v0
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x1020014

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 418
    const/4 v2, 0x0

    .line 427
    .local v2, "v2":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0402f1

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 432
    :goto_0
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 433
    .local v1, "v":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "tempString":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400db

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 437
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "v2":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 438
    .local v2, "v2":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {v2, v7, v6, v7, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 443
    .end local v2    # "v2":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 446
    if-eqz v2, :cond_2

    .line 447
    return-object v2

    .line 430
    .end local v0    # "tempString":Ljava/lang/String;
    .end local v1    # "v":Landroid/widget/TextView;
    .local v2, "v2":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04015f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 450
    .end local v2    # "v2":Landroid/widget/TextView;
    .restart local v0    # "tempString":Ljava/lang/String;
    .restart local v1    # "v":Landroid/widget/TextView;
    :cond_2
    return-object v1
.end method

.method public isCurrentThemeFontInstalled()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return v0
.end method

.method public isCurrentThemeFontSelected()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return v0
.end method

.method public loadTypefaces()V
    .locals 12

    .prologue
    const v11, 0x14000020

    .line 475
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b05be

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 476
    .local v8, "uri":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 477
    .local v6, "samsungAppsintent":Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 482
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 483
    const v10, 0x7f0b05bd

    .line 482
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "uri":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 484
    .restart local v8    # "uri":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v4, "marketIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "android.intent.action.VIEW"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 486
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 491
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_1

    .line 492
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 500
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 501
    .local v2, "fontfile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 502
    .local v1, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 503
    .local v5, "newTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 504
    const/4 v3, 0x1

    .line 506
    .end local v1    # "fontPackageName":Ljava/lang/String;
    .end local v2    # "fontfile":Ljava/lang/String;
    .end local v5    # "newTypeface":Landroid/graphics/Typeface;
    .local v3, "i":I
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 507
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "fontfile":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "fontPackageName":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 512
    .local v5, "newTypeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_2

    .line 514
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 515
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 516
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 494
    .end local v1    # "fontPackageName":Ljava/lang/String;
    .end local v2    # "fontfile":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "newTypeface":Landroid/graphics/Typeface;
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    sget-object v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v10, v10, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 495
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 496
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .restart local v1    # "fontPackageName":Ljava/lang/String;
    .restart local v2    # "fontfile":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "newTypeface":Landroid/graphics/Typeface;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 524
    .end local v1    # "fontPackageName":Ljava/lang/String;
    .end local v2    # "fontfile":Ljava/lang/String;
    .end local v5    # "newTypeface":Landroid/graphics/Typeface;
    :cond_3
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_6

    .line 526
    :try_start_0
    const-string/jumbo v9, "FontListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadTypefaces currentThemePath : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v7, 0x0

    .line 528
    .local v7, "themeFontTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 529
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 532
    .end local v7    # "themeFontTypeface":Landroid/graphics/Typeface;
    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v9, :cond_7

    .line 533
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_5
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_6
    return-void

    .line 535
    :cond_7
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_5

    .line 536
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setInitDownloadFontAndThemeFont()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 181
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_5

    .line 182
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 185
    const-string/jumbo v8, ""

    .line 187
    .local v8, "sysprop":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/data/app_fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/sans.loc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 190
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 193
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v0    # "br":Ljava/io/BufferedReader;
    move-result-object v8

    .line 196
    if-eqz v8, :cond_0

    .line 197
    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 202
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    if-eqz v6, :cond_1

    .line 211
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 218
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string/jumbo v9, "Theme"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 219
    iput-boolean v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 224
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 227
    :cond_3
    iput-boolean v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 230
    :goto_3
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v12, :cond_9

    .line 231
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 235
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    .line 243
    :cond_4
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v12, :cond_5

    .line 244
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "sysprop":Ljava/lang/String;
    :cond_5
    return-void

    .line 213
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "sysprop":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 205
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 206
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_4
    const-string/jumbo v8, "default"

    .line 207
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    if-eqz v5, :cond_2

    .line 211
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 213
    :catch_2
    move-exception v3

    goto :goto_1

    .line 203
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 204
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_6
    const-string/jumbo v8, "default"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 210
    if-eqz v5, :cond_2

    .line 211
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 213
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 208
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 210
    :goto_7
    if-eqz v5, :cond_6

    .line 211
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 208
    :cond_6
    :goto_8
    throw v9

    .line 213
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 221
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    iput-boolean v11, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto :goto_2

    .line 225
    :cond_8
    iput-boolean v13, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_3

    .line 238
    :cond_9
    iget-boolean v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_4

    .line 239
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v9, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 208
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 203
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 205
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v0, "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public setmIsFontPreviewActivity(Z)V
    .locals 0
    .param p1, "mIsFontPreviewActivity"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    .line 327
    return-void
.end method

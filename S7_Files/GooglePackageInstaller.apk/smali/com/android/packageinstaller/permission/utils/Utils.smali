.class public final Lcom/android/packageinstaller/permission/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LAUNCHER_INTENT:Landroid/content/Intent;

.field public static final MODERN_PERMISSION_GROUPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "android.permission-group.CALENDAR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "android.permission-group.CAMERA"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "android.permission-group.CONTACTS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "android.permission-group.LOCATION"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "android.permission-group.SENSORS"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "android.permission-group.SMS"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "android.permission-group.PHONE"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "android.permission-group.MICROPHONE"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "android.permission-group.STORAGE"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lcom/android/packageinstaller/permission/utils/Utils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/permission/utils/Utils;->LAUNCHER_INTENT:Landroid/content/Intent;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTint(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iconResId"    # I
    .param p2, "attr"    # I

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/packageinstaller/permission/utils/Utils;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "attr"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 111
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v1, "typedValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 114
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 115
    return-object p1
.end method

.method public static getAllInstalledApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 125
    .local v2, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/android/packageinstaller/permission/utils/Utils;->LAUNCHER_INTENT:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 124
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 126
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v2
.end method

.method public static isModernPermissionGroup(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v3, Lcom/android/packageinstaller/permission/utils/Utils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 74
    .local v0, "modernGroup":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    const/4 v1, 0x1

    return v1

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "modernGroup":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isSystem(Landroid/content/pm/ApplicationInfo;Landroid/util/ArraySet;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSystem(Lcom/android/packageinstaller/permission/model/AppPermissions;Landroid/util/ArraySet;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/packageinstaller/permission/model/AppPermissions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/packageinstaller/permission/model/AppPermissions;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Landroid/content/pm/ApplicationInfo;Landroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method public static isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z
    .locals 1
    .param p0, "app"    # Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Landroid/content/pm/ApplicationInfo;Landroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method public static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "Couldn\'t get resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-object v3
.end method

.method public static shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z
    .locals 4
    .param p0, "group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isSystemFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v1, p1}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    .local v0, "isPlatformPermission":Z
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/packageinstaller/permission/utils/Utils;->isModernPermissionGroup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 86
    .end local v0    # "isPlatformPermission":Z
    :cond_2
    return v3

    .line 93
    .restart local v0    # "isPlatformPermission":Z
    :cond_3
    return v3
.end method

.method public static shouldShowPermission(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)Z
    .locals 2
    .param p0, "app"    # Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->isSystemFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPermissionGroup()Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/utils/LocationUtils;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

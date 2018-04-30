.class public Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
.super Ljava/lang/Object;
.source "PermissionApps.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/model/PermissionApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionApp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInfo:Landroid/content/pm/ApplicationInfo;

.field private final mLabel:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public areRuntimePermissionsGranted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v0

    return v0
.end method

.method public compareTo(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)I
    .locals 3

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->compareTo(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;)I

    move-result v0

    return v0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroup()Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getApp()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getUserId()I

    move-result v0

    return v0
.end method

.method public grantRuntimePermissions()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->grantRuntimePermissions(Z)Z

    return-void
.end method

.method public hasGrantedByDefaultPermissions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasGrantedByDefaultPermission()Z

    move-result v0

    return v0
.end method

.method public hasRuntimePermissions()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->hasRuntimePermission()Z

    move-result v0

    return v0
.end method

.method public isPolicyFixed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isPolicyFixed()Z

    move-result v0

    return v0
.end method

.method public isReviewRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isReviewRequired()Z

    move-result v0

    return v0
.end method

.method public isSystemFixed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->isSystemFixed()Z

    move-result v0

    return v0
.end method

.method public revokeRuntimePermissions()V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->mAppPermissionGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    return-void
.end method

.class public final Lcom/android/packageinstaller/permission/model/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# instance fields
.field private final mAppOp:Ljava/lang/String;

.field private mAppOpAllowed:Z

.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/packageinstaller/permission/model/Permission;->mGranted:Z

    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOp:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOpAllowed:Z

    iput p5, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    return-void
.end method


# virtual methods
.method public getAppOp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOp:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAppOp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOp:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppOpAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOpAllowed:Z

    return v0
.end method

.method public isGranted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mGranted:Z

    return v0
.end method

.method public isGrantedByDefault()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPolicyFixed()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isReviewRequired()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSystemFixed()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserFixed()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserSet()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public resetReviewRequired()V
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    return-void
.end method

.method public setAppOpAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mAppOpAllowed:Z

    return-void
.end method

.method public setGranted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mGranted:Z

    return-void
.end method

.method public setPolicyFixed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    goto :goto_0
.end method

.method public setRevokeOnUpgrade(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    goto :goto_0
.end method

.method public setUserFixed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    goto :goto_0
.end method

.method public setUserSet(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    goto :goto_0
.end method

.method public shouldRevokeOnUpgrade()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/packageinstaller/permission/model/Permission;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.class public final Lcom/android/packageinstaller/permission/model/PermissionGroup;
.super Ljava/lang/Object;
.source "PermissionGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDeclaringPackage:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "declaringPackage"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mLabel:Ljava/lang/CharSequence;

    .line 32
    iput-object p4, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/packageinstaller/permission/model/PermissionGroup;)I
    .locals 2
    .param p1, "another"    # Lcom/android/packageinstaller/permission/model/PermissionGroup;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->compareTo(Lcom/android/packageinstaller/permission/model/PermissionGroup;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    if-ne p0, p1, :cond_0

    .line 59
    return v4

    .line 62
    :cond_0
    if-nez p1, :cond_1

    .line 63
    return v3

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 67
    return v3

    :cond_2
    move-object v0, p1

    .line 70
    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    .line 72
    .local v0, "other":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 73
    iget-object v1, v0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 74
    return v3

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 77
    return v3

    .line 80
    :cond_4
    return v4
.end method

.method public getDeclaringPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mDeclaringPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

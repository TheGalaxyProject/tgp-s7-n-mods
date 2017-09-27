.class public final Lcom/android/packageinstaller/permission/model/PermissionGroups;
.super Ljava/lang/Object;
.source "PermissionGroups.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;,
        Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;

.field private final mContext:Landroid/content/Context;

.field private final mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderManager:Landroid/app/LoaderManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loaderManager"    # Landroid/app/LoaderManager;
    .param p3, "callback"    # Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mLoaderManager:Landroid/app/LoaderManager;

    .line 55
    iput-object p3, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mCallback:Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;

    .line 52
    return-void
.end method


# virtual methods
.method public getGroup(Ljava/lang/String;)Lcom/android/packageinstaller/permission/model/PermissionGroup;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/model/PermissionGroup;

    .line 91
    .local v0, "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    return-object v0

    .line 95
    .end local v0    # "group":Lcom/android/packageinstaller/permission/model/PermissionGroup;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "groups"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p2, Ljava/util/List;

    .end local p2    # "groups":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/permission/model/PermissionGroups;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionGroup;>;>;"
    .local p2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionGroup;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mCallback:Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;

    invoke-interface {v0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;->onPermissionGroupsChanged()V

    .line 65
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionGroup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionGroup;>;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mCallback:Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;

    invoke-interface {v0}, Lcom/android/packageinstaller/permission/model/PermissionGroups$PermissionsGroupsChangeCallback;->onPermissionGroupsChanged()V

    .line 75
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 82
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionGroups;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 80
    return-void
.end method

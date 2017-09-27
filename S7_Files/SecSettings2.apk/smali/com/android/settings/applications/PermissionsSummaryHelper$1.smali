.class final Lcom/android/settings/applications/PermissionsSummaryHelper$1;
.super Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0
    .param p1, "val$callback"    # Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 40
    .local v6, "permissionCount":I
    const/4 v2, 0x0

    .line 41
    .local v2, "grantedStandardCount":I
    const/4 v1, 0x0

    .line 42
    .local v1, "grantedAdditionalCount":I
    const/4 v7, 0x0

    .line 43
    .local v7, "requestedCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, "grantedStandardLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 46
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;

    .line 47
    .local v5, "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    add-int/lit8 v7, v7, 0x1

    .line 48
    invoke-virtual {v5}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    invoke-virtual {v5}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    invoke-virtual {v5}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 45
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v5    # "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 59
    .local v0, "collator":Ljava/text/Collator;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/text/Collator;->setStrength(I)V

    .line 60
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    iget-object v8, p0, Lcom/android/settings/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-virtual {v8, v2, v7, v1, v3}, Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    .line 37
    return-void
.end method

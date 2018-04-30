.class Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;
.super Ljava/lang/Object;
.source "ManagePermissionsFragment.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->updatePermissionsUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

.field final synthetic val$finalPref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->val$finalPref:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 7

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    invoke-virtual {v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    invoke-static {v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->-get1(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getGrantedCount(Landroid/util/ArraySet;)I

    move-result v0

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    invoke-static {v2}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->-get1(Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getTotalCount(Landroid/util/ArraySet;)I

    move-result v1

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->val$finalPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f0d0187

    invoke-virtual {v3, v5, v4}, Lcom/android/packageinstaller/permission/ui/handheld/ManagePermissionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

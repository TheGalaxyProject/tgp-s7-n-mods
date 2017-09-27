.class Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;
.super Ljava/lang/Object;
.source "PermissionAppsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

.field final synthetic val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

.field final synthetic val$grantedByDefault:Z

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;Landroid/preference/Preference;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;
    .param p2, "val$preference"    # Landroid/preference/Preference;
    .param p3, "val$app"    # Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .param p4, "val$grantedByDefault"    # Z

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$grantedByDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$app:Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->revokeRuntimePermissions()V

    .line 347
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->val$grantedByDefault:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;->-set0(Lcom/android/packageinstaller/permission/ui/handheld/PermissionAppsFragment;Z)Z

    .line 344
    :cond_0
    return-void
.end method

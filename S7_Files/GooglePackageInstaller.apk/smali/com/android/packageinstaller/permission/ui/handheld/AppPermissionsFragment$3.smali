.class Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;
.super Ljava/lang/Object;
.source "AppPermissionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

.field final synthetic val$grantedByDefault:Z

.field final synthetic val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;Landroid/preference/Preference;Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;
    .param p2, "val$preference"    # Landroid/preference/Preference;
    .param p3, "val$group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .param p4, "val$grantedByDefault"    # Z

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    iput-boolean p4, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$grantedByDefault:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$group:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->revokeRuntimePermissions(Z)Z

    .line 295
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->val$grantedByDefault:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$3;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->-set0(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;Z)Z

    .line 292
    :cond_0
    return-void
.end method

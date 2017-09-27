.class Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$2;
.super Ljava/lang/Object;
.source "AppPermissionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->loadPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 242
    new-instance v0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;-><init>()V

    .line 243
    .local v0, "frag":Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->-wrap0(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/Fragment;

    .line 244
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$AdditionalPermissionsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 245
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/ui/television/AppPermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 246
    const v2, 0x1020002

    .line 245
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 247
    const/4 v2, 0x0

    .line 245
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 249
    const/4 v1, 0x1

    return v1
.end method

.class Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;
.super Ljava/lang/Object;
.source "AppPermissionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/ui/handheld/AppPermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    return-void
.end method

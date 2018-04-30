.class Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;
.super Ljava/lang/Object;
.source "PermissionsFrameFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->setViewShown(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$1;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

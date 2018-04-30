.class public Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;
.super Landroid/app/Activity;
.source "OverlayTouchActivity.java"


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private setOverlayAllowed(Z)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->mToken:Landroid/os/IBinder;

    const/16 v5, 0x18

    invoke-virtual {v0, v5, v1, v4}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    if-eqz p1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->setOverlayAllowed(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/OverlayTouchActivity;->setOverlayAllowed(Z)V

    return-void
.end method

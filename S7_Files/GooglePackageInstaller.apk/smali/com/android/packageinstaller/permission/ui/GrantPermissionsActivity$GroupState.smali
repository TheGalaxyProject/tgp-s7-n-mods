.class final Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;
.super Ljava/lang/Object;
.source "GrantPermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupState"
.end annotation


# instance fields
.field final mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

.field mState:I


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mState:I

    .line 407
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 406
    return-void
.end method

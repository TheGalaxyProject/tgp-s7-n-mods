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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mState:I

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$GroupState;->mGroup:Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    return-void
.end method

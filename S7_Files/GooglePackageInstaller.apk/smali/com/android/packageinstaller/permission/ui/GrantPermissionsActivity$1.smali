.class Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$1;
.super Ljava/lang/Object;
.source "GrantPermissionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity$1;->this$0:Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;->-wrap0(Lcom/android/packageinstaller/permission/ui/GrantPermissionsActivity;)V

    .line 127
    return-void
.end method

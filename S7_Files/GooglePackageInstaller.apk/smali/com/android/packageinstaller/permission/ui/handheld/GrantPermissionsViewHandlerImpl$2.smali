.class Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;
.super Ljava/lang/Object;
.source "GrantPermissionsViewHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->animateToPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;->this$0:Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;

    new-instance v1, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2$1;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;)V

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->-wrap1(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

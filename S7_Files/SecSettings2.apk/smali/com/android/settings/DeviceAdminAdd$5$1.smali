.class Lcom/android/settings/DeviceAdminAdd$5$1;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAdd$5;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd$5;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/DeviceAdminAdd$5;
    .param p2, "val$userId"    # I

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$5$1;->this$1:Lcom/android/settings/DeviceAdminAdd$5;

    iput p2, p0, Lcom/android/settings/DeviceAdminAdd$5$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5$1;->this$1:Lcom/android/settings/DeviceAdminAdd$5;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 402
    .local v0, "um":Landroid/os/UserManager;
    iget v1, p0, Lcom/android/settings/DeviceAdminAdd$5$1;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 403
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$5$1;->this$1:Lcom/android/settings/DeviceAdminAdd$5;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd$5;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 400
    return-void
.end method

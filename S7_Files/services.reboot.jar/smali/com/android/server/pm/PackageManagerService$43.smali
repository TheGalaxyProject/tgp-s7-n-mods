.class Lcom/android/server/pm/PackageManagerService$43;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updatePermissionStatesAndFlagsInternal(Ljava/lang/String;Ljava/util/List;IIIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$appId:I

.field final synthetic val$appOp:I

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;IIILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$userId"    # I
    .param p3, "val$appId"    # I
    .param p4, "val$appOp"    # I
    .param p5, "val$pkgName"    # Ljava/lang/String;

    .prologue
    .line 32877
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$43;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$43;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$43;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 32880
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$userId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appId:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 32881
    .local v2, "appUid":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$43;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 32882
    const-class v5, Landroid/app/AppOpsManager;

    .line 32881
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 32883
    .local v1, "appOps":Landroid/app/AppOpsManager;
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appOp:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 32884
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appOp:I

    .line 32885
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$43;->val$pkgName:Ljava/lang/String;

    .line 32884
    invoke-virtual {v1, v4, v2, v5}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 32888
    .local v0, "appOpAllowed":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 32889
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appOp:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 32891
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$43;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$43;->val$appId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$43;->val$userId:I

    const-string/jumbo v6, "Permission related app op changed"

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 32879
    :cond_1
    return-void
.end method

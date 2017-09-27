.class Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;
.super Landroid/os/AsyncTask;
.source "PermissionApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/model/PermissionApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionAppsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/permission/model/PermissionApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/model/PermissionApps;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/permission/model/PermissionApps;Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/model/PermissionApps;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;-><init>(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 384
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->-wrap0(Lcom/android/packageinstaller/permission/model/PermissionApps;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 389
    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->-set0(Lcom/android/packageinstaller/permission/model/PermissionApps;Z)Z

    .line 391
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {v0, p1}, Lcom/android/packageinstaller/permission/model/PermissionApps;->-wrap1(Lcom/android/packageinstaller/permission/model/PermissionApps;Ljava/util/List;)V

    .line 392
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->-get0(Lcom/android/packageinstaller/permission/model/PermissionApps;)Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-static {v0}, Lcom/android/packageinstaller/permission/model/PermissionApps;->-get0(Lcom/android/packageinstaller/permission/model/PermissionApps;)Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionAppsLoader;->this$0:Lcom/android/packageinstaller/permission/model/PermissionApps;

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;->onPermissionsLoaded(Lcom/android/packageinstaller/permission/model/PermissionApps;)V

    .line 389
    :cond_0
    return-void
.end method

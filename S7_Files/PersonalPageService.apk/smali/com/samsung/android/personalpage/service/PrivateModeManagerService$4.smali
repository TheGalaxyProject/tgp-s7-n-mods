.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;
.super Ljava/lang/Object;
.source "PrivateModeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

.field final synthetic val$status:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
    .param p2, "val$status"    # Z

    .prologue
    .line 615
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->val$status:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 619
    const-string/jumbo v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NormalModePopup: onCancel, mIsMountedPrivateStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get0()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->val$status:Z

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v1, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 624
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 625
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    const-string/jumbo v2, "pref_pp_normal_on_disclaimer_noti"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPreferences(Ljava/lang/String;Z)V

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v2}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap7(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V

    .line 618
    return-void

    .line 628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

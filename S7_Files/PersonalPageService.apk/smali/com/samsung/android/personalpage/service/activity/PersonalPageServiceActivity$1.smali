.class Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;
.super Ljava/lang/Object;
.source "PersonalPageServiceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 79
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService connected"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    check-cast p2, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;->getService()Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    iget-object v0, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPersonalPageServiceActivity(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "ServiceConnected after paused"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    .line 78
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 73
    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService disconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    .line 72
    return-void
.end method

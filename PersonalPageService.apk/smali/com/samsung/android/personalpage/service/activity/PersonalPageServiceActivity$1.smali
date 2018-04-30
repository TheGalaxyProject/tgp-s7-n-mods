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

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService connected"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    check-cast p2, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/personalpage/service/PersonalPageService$LocalBinder;->getService()Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    iget-object v0, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPersonalPageServiceActivity(Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "ServiceConnected after paused"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "PersonalPageServiceActivity"

    const-string/jumbo v1, "PersonalPageService disconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity$1;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/personalpage/service/activity/PersonalPageServiceActivity;->mPersonalPageService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-void
.end method

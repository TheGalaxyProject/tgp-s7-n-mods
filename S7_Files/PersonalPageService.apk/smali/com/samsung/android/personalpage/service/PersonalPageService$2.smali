.class Lcom/samsung/android/personalpage/service/PersonalPageService$2;
.super Ljava/lang/Object;
.source "PersonalPageService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;->showMigrationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/personalpage/service/PersonalPageService;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.PRIVATE_MODE_FINGER_BACKUP_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$2;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-get1(Lcom/samsung/android/personalpage/service/PersonalPageService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

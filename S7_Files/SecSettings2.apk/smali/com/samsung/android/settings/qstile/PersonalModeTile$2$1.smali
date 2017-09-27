.class Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;
.super Ljava/lang/Object;
.source "PersonalModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/PersonalModeTile$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/PersonalModeTile$2;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/qstile/PersonalModeTile$2;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;->this$1:Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

    iput-object p2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;->this$1:Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

    iget-object v1, v1, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;->this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-static {v1}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->-get1(Lcom/samsung/android/settings/qstile/PersonalModeTile;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 181
    .local v0, "statusBar":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;->this$1:Lcom/samsung/android/settings/qstile/PersonalModeTile$2;

    iget-object v1, v1, Lcom/samsung/android/settings/qstile/PersonalModeTile$2;->this$0:Lcom/samsung/android/settings/qstile/PersonalModeTile;

    invoke-static {v1}, Lcom/samsung/android/settings/qstile/PersonalModeTile;->-get1(Lcom/samsung/android/settings/qstile/PersonalModeTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/qstile/PersonalModeTile$2$1;->val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 179
    return-void
.end method

.class Lcom/amnix/supportme/supportme_activity_main_amnix$3;
.super Ljava/lang/Object;
.source "supportme_activity_main_amnix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amnix/supportme/supportme_activity_main_amnix;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amnix/supportme/supportme_activity_main_amnix;


# direct methods
.method constructor <init>(Lcom/amnix/supportme/supportme_activity_main_amnix;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amnix/supportme/supportme_activity_main_amnix;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amnix/supportme/supportme_activity_main_amnix$3;->this$0:Lcom/amnix/supportme/supportme_activity_main_amnix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/amnix/supportme/supportme_activity_main_amnix$3;->this$0:Lcom/amnix/supportme/supportme_activity_main_amnix;

    invoke-virtual {v0}, Lcom/amnix/supportme/supportme_activity_main_amnix;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Coming Soon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    return-void
.end method

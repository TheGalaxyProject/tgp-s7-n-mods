.class Landroid/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get4(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get5(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get5(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get7(Landroid/support/v7/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v2}, Landroid/support/v7/app/AlertController;->-get6(Landroid/support/v7/app/AlertController;)Landroid/support/v7/app/AppCompatDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get0(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get1(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get1(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get2(Landroid/support/v7/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get3(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$1;->this$0:Landroid/support/v7/app/AlertController;

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->-get3(Landroid/support/v7/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

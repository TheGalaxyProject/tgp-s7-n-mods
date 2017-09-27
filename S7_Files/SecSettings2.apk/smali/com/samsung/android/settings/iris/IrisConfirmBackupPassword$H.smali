.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;
.super Landroid/os/Handler;
.source "IrisConfirmBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    return-void

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iput-boolean v1, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mIsBPConfirmed:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-set0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;I)I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x291c
        :pswitch_0
    .end packed-switch
.end method

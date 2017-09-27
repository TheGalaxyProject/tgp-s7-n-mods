.class Lcom/android/server/policy/ImmersiveModeConfirmation$3;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .locals 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-boolean v0, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->-get1(Lcom/android/server/policy/ImmersiveModeConfirmation;)Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    .line 149
    :cond_0
    return-void

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iput-boolean v2, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation$3;->this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mGearVrDocked:Z

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

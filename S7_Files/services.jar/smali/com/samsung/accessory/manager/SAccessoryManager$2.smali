.class Lcom/samsung/accessory/manager/SAccessoryManager$2;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 117
    .local v0, "authEvent":I
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get0(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 115
    return-void

    .line 119
    :pswitch_0
    const/16 v0, 0xa

    .line 120
    goto :goto_0

    .line 122
    :pswitch_1
    const/16 v0, 0xb

    .line 123
    goto :goto_0

    .line 125
    :pswitch_2
    const/16 v0, 0xc

    .line 126
    goto :goto_0

    .line 128
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

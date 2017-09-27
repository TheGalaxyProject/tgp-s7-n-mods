.class Lcom/samsung/android/settings/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/MasterClearModemReset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/MasterClearModemReset;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    :pswitch_0
    const-string/jumbo v0, "MasterClearModemReset"

    const-string/jumbo v1, "Something weird happened"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 65
    :pswitch_1
    const-string/jumbo v0, "MasterClearModemReset"

    const-string/jumbo v1, "Modem reset is done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/MasterClearModemReset;

    invoke-static {v0}, Lcom/samsung/android/settings/MasterClearModemReset;->-wrap0(Lcom/samsung/android/settings/MasterClearModemReset;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const-string/jumbo v0, "MasterClearModemReset"

    const-string/jumbo v1, "modem CP2 reset done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/MasterClearModemReset;

    invoke-static {v0}, Lcom/samsung/android/settings/MasterClearModemReset;->-wrap0(Lcom/samsung/android/settings/MasterClearModemReset;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

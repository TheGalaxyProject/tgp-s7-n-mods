.class final Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;
.super Landroid/os/Handler;
.source "CoverDisabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverDisabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverDisablerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverDisabler;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/CoverDisabler;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/cover/CoverDisabler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/cover/CoverDisabler;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/CoverDisabler$CoverDisablerHandler;->this$0:Lcom/android/server/cover/CoverDisabler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/cover/CoverDisabler;->-wrap1(Lcom/android/server/cover/CoverDisabler;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

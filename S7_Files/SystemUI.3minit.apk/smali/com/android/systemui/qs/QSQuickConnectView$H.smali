.class final Lcom/android/systemui/qs/QSQuickConnectView$H;
.super Landroid/os/Handler;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSQuickConnectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSQuickConnectView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSQuickConnectView;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView$H;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSQuickConnectView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSQuickConnectView$H;-><init>(Lcom/android/systemui/qs/QSQuickConnectView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$H;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/QSQuickConnectView$State;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSQuickConnectView;->-wrap0(Lcom/android/systemui/qs/QSQuickConnectView;Lcom/android/systemui/qs/QSQuickConnectView$State;)V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

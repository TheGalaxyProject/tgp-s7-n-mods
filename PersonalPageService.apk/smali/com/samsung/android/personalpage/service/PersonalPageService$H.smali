.class Lcom/samsung/android/personalpage/service/PersonalPageService$H;
.super Landroid/os/Handler;
.source "PersonalPageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PersonalPageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final EVT_CHECK_USER_ID:I = 0x404

.field private static final EVT_LOCALE_CHANGED:I = 0x402

.field private static final EVT_PRIVATE_KEEP_ON:I = 0x407

.field private static final EVT_PRIVATE_MODE_OFF:I = 0x405

.field private static final EVT_PRIVATE_MODE_ON:I = 0x406

.field private static final EVT_SERVICE_STOP:I = 0x400

.field private static final EVT_USER_SWITCHED:I = 0x403

.field private static final EVT_VERIFY_USER:I = 0x401


# instance fields
.field private final mMsgCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/PersonalPageService;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_VERIFY_USER"

    const/16 v2, 0x401

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_LOCALE_CHANGED"

    const/16 v2, 0x402

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_USER_SWITCHED"

    const/16 v2, 0x403

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_CHECK_USER_ID"

    const/16 v2, 0x404

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_PRIVATE_MODE_OFF"

    const/16 v2, 0x405

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_PRIVATE_MODE_ON"

    const/16 v2, 0x406

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_SERVICE_STOP"

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_PRIVATE_KEEP_ON"

    const/16 v2, 0x407

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "PersonalPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleVerifyUser(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap4(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap5(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap2(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap3(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap0(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->stopSelf()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PersonalPageService$H;->this$0:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->-wrap1(Lcom/samsung/android/personalpage/service/PersonalPageService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

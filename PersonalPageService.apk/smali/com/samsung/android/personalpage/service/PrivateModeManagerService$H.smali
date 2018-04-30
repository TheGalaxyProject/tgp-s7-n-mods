.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;
.super Landroid/os/Handler;
.source "PrivateModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_CHECK_CLIENTS:I = 0x200

.field private static final MSG_MOUNT_PRIVATE_STORAGE:I = 0x201

.field private static final MSG_SHOW_DIALOG:I = 0x204

.field private static final MSG_SHOW_TOAST:I = 0x205

.field private static final MSG_UNMOUNT_PRIVATE_STORAGE:I = 0x202

.field private static final MSG_VERIFY_USER:I = 0x203


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

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_CHECK_CLIENTS"

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_MOUNT_PRIVATE_STORAGE"

    const/16 v2, 0x201

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_UNMOUNT_PRIVATE_STORAGE"

    const/16 v2, 0x202

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_VERIFY_USER"

    const/16 v2, 0x203

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_SHOW_DIALOG"

    const/16 v2, 0x204

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "MSG_SHOW_TOAST"

    const/16 v2, 0x205

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap0(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap3(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap2(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string/jumbo v1, "pref_pp_normal_on_disclaimer_noti"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap6(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap5(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap7(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap4(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-get1(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v0

    const-string/jumbo v1, "pref_pp_normal_off_disclaimer_noti"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0, v3}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap6(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->-wrap4(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f060021

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->showToastMessage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

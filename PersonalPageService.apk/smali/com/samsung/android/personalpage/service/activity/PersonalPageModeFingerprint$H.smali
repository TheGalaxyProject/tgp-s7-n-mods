.class Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;
.super Landroid/os/Handler;
.source "PersonalPageModeFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final EVT_FINGERPRINT_EVENT:I = 0x400

.field private static final EVT_IDENTIFY:I = 0x401


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

.field final synthetic this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;


# direct methods
.method public constructor <init>(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_FINGERPRINT_EVENT"

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    const-string/jumbo v1, "EVT_IDENTIFY"

    const/16 v2, 0x401

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private codeToString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->mMsgCodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "PersonalPageModeFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-static {v1, v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->-wrap0(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint$H;->this$0:Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;->-wrap1(Lcom/samsung/android/personalpage/service/activity/PersonalPageModeFingerprint;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

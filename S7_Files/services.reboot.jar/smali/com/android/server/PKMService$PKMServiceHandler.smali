.class Lcom/android/server/PKMService$PKMServiceHandler;
.super Landroid/os/Handler;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PKMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PKMServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PKMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PKMService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PKMService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/PKMService$PKMServiceHandler;->this$0:Lcom/android/server/PKMService;

    .line 316
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 320
    return-void
.end method

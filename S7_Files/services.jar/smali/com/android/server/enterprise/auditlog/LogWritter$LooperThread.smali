.class Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;
.super Ljava/lang/Thread;
.source "LogWritter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/LogWritter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field public mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/LogWritter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/auditlog/LogWritter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public removeCallbacks()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 144
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->this$0:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;-><init>(Lcom/android/server/enterprise/auditlog/LogWritter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 145
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 142
    return-void
.end method

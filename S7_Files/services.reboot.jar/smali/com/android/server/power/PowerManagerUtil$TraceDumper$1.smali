.class Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerUtil$TraceDumper;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$1:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v0, "PowerManagerUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Excessive delay : dumping trace after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$1:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->-get0(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 354
    :cond_0
    return-void
.end method

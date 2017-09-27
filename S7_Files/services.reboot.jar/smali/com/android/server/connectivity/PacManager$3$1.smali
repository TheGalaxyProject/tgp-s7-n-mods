.class Lcom/android/server/connectivity/PacManager$3$1;
.super Ljava/lang/Object;
.source "PacManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacManager$3;->setProxyPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PacManager$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PacManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/PacManager$3;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/connectivity/PacManager$3$1;->this$1:Lcom/android/server/connectivity/PacManager$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacManager$3;->this$0:Lcom/android/server/connectivity/PacManager;

    invoke-static {v0}, Lcom/android/server/connectivity/PacManager;->-wrap4(Lcom/android/server/connectivity/PacManager;)V

    .line 401
    return-void
.end method

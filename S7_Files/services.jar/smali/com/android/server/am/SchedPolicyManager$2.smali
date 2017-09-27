.class Lcom/android/server/am/SchedPolicyManager$2;
.super Landroid/database/ContentObserver;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SchedPolicyManager;->registerDefaultInputMethodChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/SchedPolicyManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$2;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager$2;->this$0:Lcom/android/server/am/SchedPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager$2;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/SchedPolicyManager;->-wrap1(Lcom/android/server/am/SchedPolicyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/SchedPolicyManager;->-set0(Lcom/android/server/am/SchedPolicyManager;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager$2;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/SchedPolicyManager;->-wrap3(Lcom/android/server/am/SchedPolicyManager;)V

    .line 115
    return-void
.end method

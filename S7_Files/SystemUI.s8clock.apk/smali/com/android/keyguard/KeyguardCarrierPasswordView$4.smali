.class Lcom/android/keyguard/KeyguardCarrierPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-set1(Lcom/android/keyguard/KeyguardCarrierPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-wrap0(Lcom/android/keyguard/KeyguardCarrierPasswordView;ZIZ)V

    .line 199
    return-void
.end method

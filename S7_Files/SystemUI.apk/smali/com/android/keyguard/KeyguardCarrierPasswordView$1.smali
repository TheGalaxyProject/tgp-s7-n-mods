.class Lcom/android/keyguard/KeyguardCarrierPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;
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
    .line 223
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get2(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get0(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->-get2(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 225
    :cond_0
    return-void
.end method

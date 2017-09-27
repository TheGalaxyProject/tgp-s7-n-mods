.class Lcom/android/keyguard/KeyguardFMMView$3;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardFMMView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFMMView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFMMView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardFMMView;
    .param p2, "val$userId"    # I

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    iput p2, p0, Lcom/android/keyguard/KeyguardFMMView$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    const/4 v2, 0x1

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView$3;->this$0:Lcom/android/keyguard/KeyguardFMMView;

    iget v1, p0, Lcom/android/keyguard/KeyguardFMMView$3;->val$userId:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    .line 214
    return-void
.end method

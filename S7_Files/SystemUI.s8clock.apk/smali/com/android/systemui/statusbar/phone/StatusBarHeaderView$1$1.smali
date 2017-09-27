.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$1;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->onToggleStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;
    .param p2, "val$state"    # Z

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$1;->val$state:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;Z)V

    .line 744
    return-void
.end method

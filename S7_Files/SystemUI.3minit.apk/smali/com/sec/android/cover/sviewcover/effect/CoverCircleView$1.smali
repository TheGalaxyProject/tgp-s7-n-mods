.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    .line 184
    :cond_0
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get7(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set15(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 173
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set6(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 169
    :cond_0
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcuts()V

    .line 179
    return-void
.end method

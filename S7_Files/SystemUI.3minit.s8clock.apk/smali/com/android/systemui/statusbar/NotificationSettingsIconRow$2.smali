.class Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationSettingsIconRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->fadeInSettings(ZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-get0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setAlpha(F)V

    .line 213
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-set0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-get0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-set1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z

    .line 219
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;->this$0:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->-set0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z

    .line 208
    return-void
.end method

.class Lcom/android/systemui/statusbar/phone/SettingsButton$2;
.super Ljava/lang/Object;
.source "SettingsButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SettingsButton;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SettingsButton;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$2;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 124
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$2;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setAlpha(F)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$2;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setTranslationX(F)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$2;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->-wrap0(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 113
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 109
    return-void
.end method

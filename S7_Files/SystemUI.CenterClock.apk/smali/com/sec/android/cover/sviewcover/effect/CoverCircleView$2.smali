.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method private static synthetic -getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->values()[Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CAMERA:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CUSTOM:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->NONE:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->-com-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 712
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 714
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 715
    const/4 v1, 0x0

    .line 716
    .local v1, "startIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->-getcom-sec-android-cover-sviewcover-effect-CoverCircleView$WidgetTypeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v3, v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 727
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnimationEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v4, v4, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v1    # "startIntent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_1

    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 711
    :cond_0
    return-void

    .line 718
    .restart local v1    # "startIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get18(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .local v1, "startIntent":Landroid/content/Intent;
    goto :goto_0

    .line 721
    .local v1, "startIntent":Landroid/content/Intent;
    :pswitch_1
    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "startIntent":Landroid/content/Intent;
    goto :goto_0

    .line 724
    .local v1, "startIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get22(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/keyguard/util/ShortcutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v3, v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, "startIntent":Landroid/content/Intent;
    goto :goto_0

    .line 733
    .end local v1    # "startIntent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Activity intent null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 739
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onAnimationEnd() cover open !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 716
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

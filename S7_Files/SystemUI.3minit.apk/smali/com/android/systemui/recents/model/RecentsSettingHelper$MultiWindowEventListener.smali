.class Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;
.super Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiWindowEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/model/RecentsSettingHelper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiWindowAppTransitionFinished()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onMultiWindowDockedMinimizedChanged(ZZLandroid/content/ComponentName;I)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "dockHasActivity"    # Z
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "focusedStackRect"    # Landroid/graphics/Rect;
    .param p2, "focusedTaskRect"    # Landroid/graphics/Rect;
    .param p3, "stackId"    # I
    .param p4, "taskId"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 178
    return-void
.end method

.method public onMultiWindowScreenFreezeAnimationFinished()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onMultiWindowSettingChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$MultiWindowEventListener;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set3(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    .line 184
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 182
    return-void
.end method

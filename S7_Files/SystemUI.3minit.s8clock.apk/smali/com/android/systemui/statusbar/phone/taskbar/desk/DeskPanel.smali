.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;
.super Ljava/lang/Object;
.source "DeskPanel.java"


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView$Listener;

    .prologue
    .line 61
    return-void
.end method

.method public getDeskPanelView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelView;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 40
    return-void
.end method

.method public toggleDeskQuickSettingView(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 49
    return-void
.end method

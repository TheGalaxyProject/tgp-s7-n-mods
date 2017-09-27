.class public Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;
.super Ljava/lang/Object;
.source "TaskBar.java"


# virtual methods
.method public addTaskBar(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 30
    return-void
.end method

.method public clearTaskBar()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public getDeskContextMenuType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method public getDeskKeyguardStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskNotificationIconsArea()Landroid/view/View;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskQuickSettingViewToggleButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskStatusBarContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeskStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public showDeskContextMenu(IFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "rawX"    # F
    .param p3, "rawY"    # F

    .prologue
    .line 82
    return-void
.end method

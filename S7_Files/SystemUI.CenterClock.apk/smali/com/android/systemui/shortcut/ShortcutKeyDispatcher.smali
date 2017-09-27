.class public Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;
.super Lcom/android/systemui/SystemUI;
.source "ShortcutKeyDispatcher.java"

# interfaces
.implements Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;


# instance fields
.field protected final ALT_MASK:J

.field protected final CTRL_MASK:J

.field protected final META_MASK:J

.field protected final SC_DOCK_LEFT:J

.field protected final SC_DOCK_RIGHT:J

.field protected final SHIFT_MASK:J

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    .line 58
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 59
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mActivityManager:Landroid/app/IActivityManager;

    .line 61
    const-wide/high16 v0, 0x1000000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->META_MASK:J

    .line 62
    const-wide v0, 0x200000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->ALT_MASK:J

    .line 63
    const-wide v0, 0x100000000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->CTRL_MASK:J

    .line 64
    const-wide v0, 0x100000000L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SHIFT_MASK:J

    .line 66
    const-wide v0, 0x1000000000047L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_LEFT:J

    .line 67
    const-wide v0, 0x1000000000048L

    iput-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->SC_DOCK_RIGHT:J

    .line 52
    return-void
.end method

.method private handleDockKey(J)V
    .locals 15
    .param p1, "shortcutCode"    # J

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v9

    .line 99
    .local v9, "dockSide":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_1

    .line 101
    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    .line 102
    .local v0, "recents":Lcom/android/systemui/recents/Recents;
    const-wide v4, 0x1000000000047L

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "dockMode":I
    :goto_0
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 106
    const/16 v4, 0x160

    const/4 v5, 0x1

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/Recents;->dockTopTask(IILandroid/graphics/Rect;IZ)Z

    .line 96
    .end local v0    # "recents":Lcom/android/systemui/recents/Recents;
    .end local v2    # "dockMode":I
    .end local v9    # "dockSide":I
    :goto_1
    return-void

    .line 104
    .restart local v0    # "recents":Lcom/android/systemui/recents/Recents;
    .restart local v9    # "dockSide":I
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "dockMode":I
    goto :goto_0

    .line 109
    .end local v0    # "recents":Lcom/android/systemui/recents/Recents;
    .end local v2    # "dockMode":I
    :cond_1
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v8

    .line 110
    .local v8, "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v12

    .line 111
    .local v12, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v8}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v7

    .line 113
    .local v7, "dividerPosition":I
    invoke-virtual {v12, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v6

    .line 114
    .local v6, "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const-wide v4, 0x1000000000047L

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    const/4 v11, -0x1

    .line 115
    .local v11, "increment":I
    :goto_2
    invoke-virtual {v12, v6, v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;->cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v13

    .line 117
    .local v13, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 118
    iget v1, v13, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 119
    const/4 v5, 0x1

    .line 118
    invoke-virtual {v8, v1, v3, v4, v5}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 121
    .end local v6    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v7    # "dividerPosition":I
    .end local v8    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .end local v9    # "dockSide":I
    .end local v11    # "increment":I
    .end local v12    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v13    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :catch_0
    move-exception v10

    .line 122
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ShortcutKeyDispatcher"

    const-string/jumbo v3, "handleDockKey() failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v6    # "currentTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v7    # "dividerPosition":I
    .restart local v8    # "dividerView":Lcom/android/systemui/stackdivider/DividerView;
    .restart local v9    # "dockSide":I
    .restart local v12    # "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    :cond_2
    const/4 v11, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onShortcutKeyPressed(J)V
    .locals 5
    .param p1, "shortcutCode"    # J

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 84
    .local v0, "orientation":I
    const-wide v2, 0x1000000000047L

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide v2, 0x1000000000048L

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 85
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->handleDockKey(J)V

    .line 82
    :cond_1
    return-void
.end method

.method public registerShortcutKey(J)V
    .locals 3
    .param p1, "shortcutCode"    # J

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->mShortcutKeyServiceProxy:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IWindowManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 92
    const-wide v0, 0x1000000000047L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 93
    const-wide v0, 0x1000000000048L

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher;->registerShortcutKey(J)V

    .line 91
    return-void
.end method

.class public Lcom/android/systemui/recents/tv/RecentsTvImpl;
.super Lcom/android/systemui/recents/RecentsImpl;
.source "RecentsTvImpl.java"


# static fields
.field private static final mPipManager:Lcom/android/systemui/tv/pip/PipManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/tv/RecentsTvImpl;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 144
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    .line 145
    .local v1, "statusBar":Lcom/android/systemui/statusbar/tv/TvStatusBar;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->updateRecentsVisibility(Z)V

    .line 142
    :cond_0
    return-void
.end method

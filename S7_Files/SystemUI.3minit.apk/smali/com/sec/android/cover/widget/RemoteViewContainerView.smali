.class public Lcom/sec/android/cover/widget/RemoteViewContainerView;
.super Landroid/widget/FrameLayout;
.source "RemoteViewContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/RemoteViewContainerView$1;,
        Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;,
        Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutomaticUpdate:Z

.field protected mRemoteView:Landroid/view/View;

.field protected mRemoteViewType:Ljava/lang/String;

.field protected mUpdateListener:Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -wrap0(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View;)V
    .locals 0
    .param p1, "clickedView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->onChildViewClicked(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    .line 26
    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    .line 26
    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    .line 26
    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 68
    return-void
.end method

.method private getOnClikListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 206
    :try_start_0
    const-string/jumbo v4, "android.view.View"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 207
    const-string/jumbo v5, "mListenerInfo"

    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 208
    .local v3, "listenerInfoField":Ljava/lang/reflect/Field;
    const-string/jumbo v4, "android.view.View$ListenerInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 209
    const-string/jumbo v5, "mOnClickListener"

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 210
    .local v0, "clickListenerField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    return-object v7

    .line 214
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, "listenerInfo":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 217
    return-object v7

    .line 220
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 221
    .end local v0    # "clickListenerField":Ljava/lang/reflect/Field;
    .end local v2    # "listenerInfo":Ljava/lang/Object;
    .end local v3    # "listenerInfoField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getOnClickListener : Could not access onClickListener! / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v7
.end method

.method private hookOnClickListenerOfChildView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getOnClikListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v4

    .line 188
    .local v4, "orgClickListener":Landroid/view/View$OnClickListener;
    if-eqz v4, :cond_0

    .line 189
    new-instance v3, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View$OnClickListener;)V

    .line 190
    .local v3, "newClickListener":Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .end local v3    # "newClickListener":Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;
    :cond_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 194
    check-cast v5, Landroid/view/ViewGroup;

    .line 195
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 196
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hookOnClickListenerOfChildView(Landroid/view/View;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method private onChildViewClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "clickedView"    # Landroid/view/View;

    .prologue
    .line 179
    sget-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onChildViewClicked : Child view clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 178
    return-void
.end method


# virtual methods
.method public getRemoteViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteViewType"    # Ljava/lang/String;
    .param p2, "automaticUpdate"    # Z

    .prologue
    .line 73
    sget-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init : Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " autoUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    .line 72
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 80
    sget-object v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 79
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 95
    return-void
.end method

.method public removeRemoteView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeView(Landroid/view/View;)V

    .line 142
    iput-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    .line 138
    :cond_0
    return-void
.end method

.method public updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    const/4 v6, -0x1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    iget-object v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 103
    .local v2, "remoteViewType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, "newRemoteView":Landroid/view/View;
    sget-object v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteView : Type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Visibility="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    iget-boolean v5, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 111
    iget-object v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_3

    .line 112
    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v3, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .end local v1    # "newRemoteView":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 122
    const-string/jumbo v3, "volume"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v3, :cond_1

    .line 123
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 125
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hookOnClickListenerOfChildView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0, v1, v6, v6}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->addView(Landroid/view/View;II)V

    .line 132
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    .line 100
    .end local v2    # "remoteViewType":Ljava/lang/String;
    :goto_2
    return-void

    .line 115
    .restart local v1    # "newRemoteView":Landroid/view/View;
    .restart local v2    # "remoteViewType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error inflating RemoteViews"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v3, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "info.mRemoteViews is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 134
    .end local v1    # "newRemoteView":Landroid/view/View;
    .end local v2    # "remoteViewType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    goto :goto_2
.end method

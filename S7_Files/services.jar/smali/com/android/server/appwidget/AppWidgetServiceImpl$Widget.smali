.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Widget"
.end annotation


# instance fields
.field appWidgetId:I

.field host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

.field includeBlackList:Z

.field lastUpdateTime:J

.field maskedViews:Landroid/widget/RemoteViews;

.field needToCheckBlackList:Z

.field options:Landroid/os/Bundle;

.field provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field remoteExceptionErr:Ljava/lang/String;

.field restoredId:I

.field tooLargeExceptionErr:Ljava/lang/String;

.field views:Landroid/widget/RemoteViews;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4642
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    .line 4643
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    .line 4644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    .line 4645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    .line 4633
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>()V

    return-void
.end method

.method private clearMaskedViewsLocked()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4661
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 4662
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4664
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    .line 4665
    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    .line 4666
    const/4 v0, 0x1

    return v0

    .line 4668
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v0, 0x0

    .line 4653
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    .line 4655
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->remoteExceptionErr:Ljava/lang/String;

    .line 4656
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    .line 4657
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getEffectiveViewsLocked()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4673
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->tooLargeExceptionErr:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4675
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    :cond_0
    return-object v0

    .line 4677
    :cond_1
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->maskedViews:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public semIsIncludeBlackList()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4681
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    if-eqz v3, :cond_3

    .line 4682
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4683
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 4684
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 4685
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get3()[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, v1

    .line 4686
    .local v0, "blackListPackage":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4687
    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    .line 4688
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    .line 4689
    const-string/jumbo v3, "AppWidgetServiceImpl"

    const-string/jumbo v4, "semIsIncludeBlackList, included in blackList so all patches will ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    .line 4684
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4693
    .end local v0    # "blackListPackage":Ljava/lang/String;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->needToCheckBlackList:Z

    .line 4694
    iput-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    .line 4695
    const-string/jumbo v3, "AppWidgetServiceImpl"

    const-string/jumbo v4, "semIsIncludeBlackList, excluded in blackList so return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    .line 4698
    .end local v1    # "i":I
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3

    .line 4701
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->includeBlackList:Z

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 4649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppWidgetId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

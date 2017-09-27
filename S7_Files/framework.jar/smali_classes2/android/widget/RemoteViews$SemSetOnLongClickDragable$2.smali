.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetOnLongClickDragable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    .prologue
    .line 4562
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 4565
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4598
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 4567
    :pswitch_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 4570
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4571
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragEnterNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    .line 4572
    const/high16 v3, 0x10000000

    .line 4573
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 4570
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4574
    :catch_0
    move-exception v6

    .line 4575
    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "RemoteViews"

    .line 4576
    const-string/jumbo v1, "Cannot send pending intent: "

    .line 4575
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4581
    .end local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v0, v0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 4584
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4585
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$2;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragExitNotiIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    .line 4586
    const/high16 v3, 0x10000000

    .line 4587
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    .line 4584
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4588
    :catch_1
    move-exception v6

    .line 4589
    .restart local v6    # "e":Landroid/content/IntentSender$SendIntentException;
    const-string/jumbo v0, "RemoteViews"

    .line 4590
    const-string/jumbo v1, "Cannot send pending intent: "

    .line 4589
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4565
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

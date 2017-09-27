.class Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

.field final synthetic val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
    .param p2, "val$newPreview"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->val$newPreview:Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;->this$0:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->-set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 300
    return-void
.end method

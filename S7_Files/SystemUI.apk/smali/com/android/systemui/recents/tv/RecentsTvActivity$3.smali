.class Lcom/android/systemui/recents/tv/RecentsTvActivity$3;
.super Ljava/lang/Object;
.source "RecentsTvActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/tv/RecentsTvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/RecentsTvActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/RecentsTvActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 150
    if-eqz p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/recents/tv/RecentsTvActivity$3;->this$0:Lcom/android/systemui/recents/tv/RecentsTvActivity;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/RecentsTvActivity;->requestPipControlsFocus()V

    .line 149
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/recents/RecentsImpl$1;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$1;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$1;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl$1;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    const/4 v3, 0x1

    .line 210
    const/4 v6, -0x1

    move v4, v2

    move v5, v2

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 205
    return-void
.end method

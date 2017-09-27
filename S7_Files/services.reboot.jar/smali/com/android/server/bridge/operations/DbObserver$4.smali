.class Lcom/android/server/bridge/operations/DbObserver$4;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/bridge/operations/DbObserver;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver$4;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/bridge/operations/DbObserver$4;->onChange(ZLandroid/net/Uri;)V

    .line 141
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver$4;->this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->-wrap6(Lcom/android/server/bridge/operations/DbObserver;)V

    .line 150
    return-void
.end method

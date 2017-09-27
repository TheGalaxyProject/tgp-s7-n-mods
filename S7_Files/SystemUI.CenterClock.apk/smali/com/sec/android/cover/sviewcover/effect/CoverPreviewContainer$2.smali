.class Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$2;
.super Ljava/lang/Object;
.source "CoverPreviewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->inflatePreViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$4;
.super Ljava/lang/Object;
.source "QSMultiSIMPreferredSlotView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$4;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView$4;->this$0:Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;->-wrap1(Lcom/android/systemui/qs/QSMultiSIMPreferredSlotView;)V

    .line 207
    return-void
.end method

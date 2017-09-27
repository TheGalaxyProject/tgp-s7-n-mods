.class Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$2;
.super Ljava/lang/Object;
.source "NavBarTuner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->bindAdd(Lcom/android/systemui/tuner/NavBarTuner$Holder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$2;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter$2;->this$1:Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;->-wrap1(Lcom/android/systemui/tuner/NavBarTuner$NavBarAdapter;Landroid/content/Context;)V

    .line 411
    return-void
.end method

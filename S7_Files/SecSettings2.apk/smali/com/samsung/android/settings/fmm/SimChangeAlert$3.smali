.class Lcom/samsung/android/settings/fmm/SimChangeAlert$3;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-get3(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-wrap1(Lcom/samsung/android/settings/fmm/SimChangeAlert;Z)V

    .line 246
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-get3(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$3;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-wrap1(Lcom/samsung/android/settings/fmm/SimChangeAlert;Z)V

    .line 239
    :cond_0
    return-void
.end method

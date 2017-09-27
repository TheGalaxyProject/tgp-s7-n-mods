.class Lcom/samsung/android/settings/display/DisplayScalingActivity$4;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/DisplayScalingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/DisplayScalingActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "isChanged":Z
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get5(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get11(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 449
    :goto_0
    if-eqz v1, :cond_0

    .line 450
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get7(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    .line 452
    .local v2, "isCheckedCondensed":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 453
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get12(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get3(Lcom/samsung/android/settings/display/DisplayScalingActivity;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V

    .line 454
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "condensed"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v2    # "isCheckedCondensed":Z
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->finish()V

    .line 464
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-set2(I)I

    .line 465
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getMetricsCategory()I

    move-result v4

    invoke-static {}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get2()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 441
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 446
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get7(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 450
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isCheckedCondensed":Z
    goto :goto_1

    .line 456
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get12(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get4(Lcom/samsung/android/settings/display/DisplayScalingActivity;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V

    .line 457
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$4;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "condensed"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

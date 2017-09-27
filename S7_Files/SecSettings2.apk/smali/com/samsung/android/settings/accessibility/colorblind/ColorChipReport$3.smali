.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;
.super Landroid/database/ContentObserver;
.source "ColorChipReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-wrap0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 222
    const-string/jumbo v3, "greyscale_mode"

    .line 221
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 223
    .local v0, "greyscaleEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    .line 220
    :cond_1
    return-void

    .end local v0    # "greyscaleEnabled":Z
    :cond_2
    move v0, v1

    .line 221
    goto :goto_0
.end method

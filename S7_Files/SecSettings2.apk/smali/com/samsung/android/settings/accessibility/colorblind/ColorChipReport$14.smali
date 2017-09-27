.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 444
    const-string/jumbo v2, "greyscale_mode"

    .line 443
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 446
    const-string/jumbo v2, "high_contrast"

    .line 445
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 447
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    const-string/jumbo v2, "accessibility"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-wrap1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 448
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->setColorWeaknessMode(Landroid/content/Context;Z)V

    .line 449
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 450
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-wrap2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    .line 442
    return-void
.end method

.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsMobility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "access_control_use"

    .line 214
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 216
    .local v0, "isEnabled":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->-wrap4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Z)V

    .line 212
    :cond_1
    return-void
.end method

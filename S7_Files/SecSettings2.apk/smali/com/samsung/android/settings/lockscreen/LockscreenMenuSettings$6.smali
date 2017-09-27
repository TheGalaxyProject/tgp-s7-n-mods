.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->makeAccessiblityDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

.field final synthetic val$accessibility:I

.field final synthetic val$menu:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
    .param p2, "val$accessibility"    # I
    .param p3, "val$menu"    # I

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$accessibility:I

    iput p3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$menu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1751
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$accessibility:I

    if-nez v0, :cond_1

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1753
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$menu:I

    packed-switch v0, :pswitch_data_0

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1755
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1758
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$accessibility:I

    if-ne v0, v3, :cond_2

    .line 1759
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1760
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$menu:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1762
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1765
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$accessibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1767
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1768
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->val$menu:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1770
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1753
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b03fb
        :pswitch_0
    .end packed-switch

    .line 1760
    :pswitch_data_1
    .packed-switch 0x7f0b03fb
        :pswitch_1
    .end packed-switch

    .line 1768
    :pswitch_data_2
    .packed-switch 0x7f0b03fb
        :pswitch_2
    .end packed-switch
.end method

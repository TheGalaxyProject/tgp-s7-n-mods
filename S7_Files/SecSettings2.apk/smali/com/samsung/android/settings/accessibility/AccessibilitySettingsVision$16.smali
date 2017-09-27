.class Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$16;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$16;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 413
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 414
    packed-switch p2, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return v4

    .line 418
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$16;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision$16;->this$0:Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsVision;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 420
    const-string/jumbo v2, "AccessibilitySettings_Vision"

    const-string/jumbo v3, "dispatchKeyEvent item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_1
    instance-of v2, v0, Landroid/preference/SemSwitchPreferenceScreen;

    if-nez v2, :cond_2

    .line 424
    return v4

    :cond_2
    move-object v1, v0

    .line 426
    check-cast v1, Landroid/preference/SemSwitchPreferenceScreen;

    .line 427
    .local v1, "preference":Landroid/preference/SemSwitchPreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/SemSwitchPreferenceScreen;->performClick()V

    .line 428
    return v5

    .line 414
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

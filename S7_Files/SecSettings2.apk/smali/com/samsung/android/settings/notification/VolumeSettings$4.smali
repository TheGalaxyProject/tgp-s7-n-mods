.class Lcom/samsung/android/settings/notification/VolumeSettings$4;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeSettings;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 241
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 265
    return v5

    .line 240
    .end local v0    # "isdown":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isdown":Z
    goto :goto_0

    .line 247
    :sswitch_0
    return v6

    .line 252
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeSettings$4;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/notification/VolumeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "item":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 254
    const-string/jumbo v3, "VolumeSettings"

    const-string/jumbo v4, "dispatchKeyEvent item is null"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v6

    .line 256
    :cond_1
    instance-of v3, v1, Landroid/preference/SeekBarPreference;

    if-nez v3, :cond_2

    .line 257
    return v5

    :cond_2
    move-object v2, v1

    .line 259
    check-cast v2, Landroid/preference/SeekBarPreference;

    .line 260
    .local v2, "preference":Landroid/preference/SeekBarPreference;
    invoke-virtual {v2, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 261
    return v6

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x45 -> :sswitch_1
        0x51 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

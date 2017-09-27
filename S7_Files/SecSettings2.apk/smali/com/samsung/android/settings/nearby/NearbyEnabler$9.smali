.class Lcom/samsung/android/settings/nearby/NearbyEnabler$9;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestWifiCheckingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1030
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1031
    sparse-switch p2, :sswitch_data_0

    .line 1043
    :cond_0
    return v1

    .line 1034
    :sswitch_0
    invoke-static {v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-set1(Z)Z

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap4(Lcom/samsung/android/settings/nearby/NearbyEnabler;Z)V

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1037
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1038
    return v2

    .line 1031
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

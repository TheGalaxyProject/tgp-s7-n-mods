.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VibrationIntensitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$1;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string/jumbo v0, "VibrationIntensity"

    const-string/jumbo v1, "mAoBleChangeReceiver called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p2, :cond_0

    .line 79
    return-void

    .line 76
    :cond_0
    return-void
.end method

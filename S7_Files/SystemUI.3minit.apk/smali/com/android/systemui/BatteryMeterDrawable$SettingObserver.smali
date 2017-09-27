.class final Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterDrawable;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    .line 809
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 808
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 814
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V

    .line 813
    return-void
.end method

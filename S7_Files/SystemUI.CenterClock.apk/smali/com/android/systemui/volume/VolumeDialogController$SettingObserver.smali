.class final Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final SERVICE_URI:Landroid/net/Uri;

.field private final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    .line 1016
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1009
    const-string/jumbo v0, "volume_controller_service_component"

    .line 1008
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    .line 1011
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1010
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 1013
    const-string/jumbo v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1012
    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    .line 1015
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1019
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1032
    const/4 v0, 0x0

    .line 1033
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->SERVICE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1034
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1035
    const-string/jumbo v4, "volume_controller_service_component"

    .line 1034
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, "setting":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1037
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1038
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get5(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v3

    if-ne v1, v3, :cond_1

    return-void

    .line 1036
    :cond_0
    const/4 v1, 0x0

    .local v1, "enabled":Z
    goto :goto_0

    .line 1039
    .end local v1    # "enabled":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1040
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumeDialogController;->register()V

    .line 1042
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-set1(Lcom/android/systemui/volume/VolumeDialogController;Z)Z

    .line 1044
    .end local v2    # "setting":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1045
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap7(Lcom/android/systemui/volume/VolumeDialogController;)Z

    move-result v0

    .line 1047
    .end local v0    # "changed":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 1048
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogController;->-get10(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1031
    :cond_5
    return-void
.end method

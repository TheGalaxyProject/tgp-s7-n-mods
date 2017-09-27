.class public Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;,
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;,
        Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;
    }
.end annotation


# static fields
.field private static final selectionArgs:[Ljava/lang/String;


# instance fields
.field private isAirplaneModeAllowed:I

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCheck:Landroid/widget/CheckBox;

.field private mCheckECM:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnDisplay:Z

.field private mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "false"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    .line 91
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$1;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$3;-><init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 128
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setupSwitchBar()V

    .line 125
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 291
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    if-eqz v5, :cond_4

    .line 295
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 296
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 298
    .local v0, "airplaneModeEnabled":Z
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 299
    const-string/jumbo v7, "isAirplaneModeAllowed"

    sget-object v8, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    .line 298
    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 301
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 302
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 304
    .local v0, "airplaneModeEnabled":Z
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_1

    .line 307
    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_5

    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_5

    .line 308
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 309
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 318
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_2

    .line 319
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 320
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v4, :cond_3

    .line 324
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 325
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 290
    .end local v0    # "airplaneModeEnabled":Z
    :cond_3
    :goto_1
    return-void

    .line 292
    .end local v2    # "serviceState":Landroid/telephony/ServiceState;
    :cond_4
    const-string/jumbo v3, "AirplaneModeSwitchEnabler"

    const-string/jumbo v4, "onAirplaneModeChanged : Cannot update checked status because current Fragment is not a Airplane mode settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 311
    .restart local v0    # "airplaneModeEnabled":Z
    .restart local v2    # "serviceState":Landroid/telephony/ServiceState;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 312
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 328
    .local v0, "airplaneModeEnabled":Z
    :cond_6
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    const/4 v0, 0x1

    .line 329
    :goto_2
    const-string/jumbo v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string/jumbo v5, "AirplaneModeSwitchEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_a

    move v1, v3

    .line 333
    .local v1, "expectAirplaneModeOn":Z
    :goto_3
    if-ne v0, v1, :cond_3

    .line 334
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v5, :cond_7

    .line 337
    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v9, :cond_b

    iget v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v5, v3, :cond_b

    .line 338
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 339
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 347
    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    .line 348
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 349
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 352
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v4, :cond_3

    .line 353
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 354
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 328
    .end local v1    # "expectAirplaneModeOn":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    move v1, v4

    .line 331
    goto :goto_3

    .line 341
    .restart local v1    # "expectAirplaneModeOn":Z
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 342
    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_4
.end method

.method private setAirplaneModeOn(Z)V
    .locals 7
    .param p1, "enabling"    # Z

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 236
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    if-eqz p1, :cond_9

    .line 238
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    .line 258
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    .line 257
    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_5

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_6

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 273
    :cond_6
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 275
    if-eqz p1, :cond_7

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 279
    iget-object v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 278
    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 233
    return-void

    .line 240
    :cond_9
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    move v1, v2

    .line 258
    goto :goto_1
.end method


# virtual methods
.method public changeAirplaneMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const/16 v1, 0xb1

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 643
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V

    .line 640
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 463
    return-void

    .line 466
    :cond_0
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    iget-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    .line 465
    if-eqz v1, :cond_1

    .line 461
    :goto_0
    return-void

    .line 469
    :cond_1
    move v0, p2

    .line 470
    .local v0, "value":Z
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 473
    :cond_2
    if-nez p2, :cond_3

    .line 520
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 7
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 528
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 529
    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0b036b

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 535
    return-void

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 540
    const-string/jumbo v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    .line 539
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 543
    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v1, v6, :cond_3

    .line 544
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 546
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 548
    :cond_2
    return-void

    .line 553
    :cond_3
    const-string/jumbo v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    iget-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheckECM:Z

    .line 552
    if-eqz v1, :cond_4

    .line 527
    :goto_0
    return-void

    .line 556
    :cond_4
    move v0, p2

    .line 557
    .local v0, "value":Z
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 558
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0

    .line 560
    :cond_5
    if-nez p2, :cond_6

    .line 599
    :cond_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->changeAirplaneMode(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    :cond_4
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "AirplaneModeSwitchEnabler"

    const-string/jumbo v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 163
    iput-boolean v5, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mIsOnDisplay:Z

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 168
    const-string/jumbo v3, "isAirplaneModeAllowed"

    sget-object v4, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->selectionArgs:[Ljava/lang/String;

    .line 167
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    .line 172
    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeAllowed:I

    if-eq v1, v5, :cond_5

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/ToggleImageView;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->updateToggleState(Z)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mToggleImageView:Lcom/samsung/android/settings/ToggleImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mOnToggleListener:Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ToggleImageView;->setOnToggleListener(Lcom/samsung/android/settings/ToggleImageView$OnToggleListener;)V

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_4
    return-void

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0
.end method

.method public setupSwitchBar()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 154
    return-void
.end method

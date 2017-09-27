.class public Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;
.super Lcom/android/settings/InstrumentedActivity;
.source "AGPSFunctionSwitchList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mRadioButton1:Landroid/widget/RadioButton;

.field mRadioButton2:Landroid/widget/RadioButton;

.field mRadioButton3:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x40

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    const-string/jumbo v0, "AGPSFunctionSwitch"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->finish()V

    .line 106
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const-string/jumbo v0, "AGPSFunctionSwitch"

    const-string/jumbo v1, "agps_on_for_home_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "AGPSFunctionSwitch"

    const-string/jumbo v1, "agps_on_for_all_network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 121
    :pswitch_2
    const-string/jumbo v0, "AGPSFunctionSwitch"

    const-string/jumbo v1, "agps_off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->finish()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f110130
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 50
    .local v0, "agps_function_switch_mode":I
    const-string/jumbo v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate : Settings AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v1, 0x7f110130

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    .line 54
    const v1, 0x7f110131

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    .line 55
    const v1, 0x7f110132

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "agps_function_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "agps_function_switch_mode":I
    const-string/jumbo v1, "AGPSFunctionSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume : Settings. AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v1, 0x7f110130

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    .line 87
    const v1, 0x7f110131

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    .line 88
    const v1, 0x7f110132

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    .line 90
    packed-switch v0, :pswitch_data_0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/location/AGPSFunctionSwitchList;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

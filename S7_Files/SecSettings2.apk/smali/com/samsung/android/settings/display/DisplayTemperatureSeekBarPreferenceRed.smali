.class public Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "DisplayTemperatureSeekBarPreferenceRed.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFocusable:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f040201

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setLayoutResource(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    .line 29
    const v0, 0x7f040201

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setLayoutResource(I)V

    .line 26
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 61
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0d0132

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    .line 42
    const v3, 0x7f11052b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 43
    .local v1, "seekBar":Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v1, v3, :cond_0

    return-void

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 47
    const/high16 v3, -0x10000

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 48
    .local v2, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 51
    const-string/jumbo v4, "sec_display_temperature_red"

    const/4 v5, 0x0

    .line 50
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, 0xb

    .line 53
    .local v0, "progress":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 54
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 40
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    .line 66
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    .line 73
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mIsFocusable:Z

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    .line 81
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    .line 80
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 33
    :cond_0
    return-void
.end method

.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BlueLightFilterSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static BLUE_LIGHT_FILTER_OPACITY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFocusable:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 28
    const v5, 0x7f0401ff

    const v6, 0x7f110562

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mContext:Landroid/content/Context;

    .line 23
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    .line 42
    const v2, 0x7f110562

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 43
    .local v1, "seekBar":Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_0

    return-void

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_opacity"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 46
    .local v0, "progress":I
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 47
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 48
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 49
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 50
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 51
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_opacity"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFocused"    # Z

    .prologue
    .line 77
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    .line 78
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->BLUE_LIGHT_FILTER_OPACITY:I

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->BLUE_LIGHT_FILTER_OPACITY:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    .line 65
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    return-void
.end method

.method public setOpacityLevel(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 33
    :cond_0
    return-void
.end method

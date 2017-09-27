.class public Landroid/support/v17/leanback/widget/SpeechOrbView;
.super Landroid/support/v17/leanback/widget/SearchOrbView;
.source "SpeechOrbView.java"


# instance fields
.field private mCurrentLevel:I

.field private mListening:Z

.field private final mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 18
    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Landroid/support/v17/leanback/R$fraction;->lb_search_bar_speech_orb_max_level_zoom:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    .line 32
    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    .line 35
    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v2, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 36
    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_pulsed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 37
    sget v4, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_icon:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 35
    invoke-direct {v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 38
    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v2, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 39
    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 38
    invoke-direct {v1, v2, v3, v5}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 42
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 28
    return-void
.end method


# virtual methods
.method getLayoutResourceId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_speech_orb:I

    return v0
.end method

.method public setSoundLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 79
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    if-nez v1, :cond_0

    return-void

    .line 83
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    if-le p1, v1, :cond_1

    .line 84
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 89
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getFocusedZoom()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v0, v2, v1

    .line 91
    .local v0, "zoom":F
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 78
    return-void

    .line 86
    .end local v0    # "zoom":F
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    goto :goto_0
.end method

.method public showListening()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 55
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    .line 58
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SpeechOrbView;->enableOrbColorAnimation(Z)V

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 60
    iput v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 61
    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 53
    return-void
.end method

.method public showNotListening()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 69
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    .line 67
    return-void
.end method

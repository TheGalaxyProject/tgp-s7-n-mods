.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
.super Lcom/android/keyguard/KeyguardTextView;
.source "KeyguardOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 117
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 7
    .param p1, "showCMAS"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 241
    if-eqz p1, :cond_1

    .line 242
    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "cmasAlertIcon":Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "filter":Landroid/graphics/PorterDuffColorFilter;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .end local v1    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v1, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 246
    .local v1, "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    .end local v1    # "filter":Landroid/graphics/PorterDuffColorFilter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 251
    .local v2, "iconSize":I
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getKeyguardFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 252
    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_drawable_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    .line 240
    .end local v0    # "cmasAlertIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconSize":I
    :goto_1
    return-void

    .line 248
    .restart local v0    # "cmasAlertIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 256
    .end local v0    # "cmasAlertIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 257
    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    goto :goto_1
.end method

.method private updateCMASText(I)Z
    .locals 5
    .param p1, "hasCMAS"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    .line 217
    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    move v1, v2

    .line 219
    .local v1, "needToShowCMAS":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 220
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    if-eqz v2, :cond_4

    .line 221
    sget v0, Lcom/android/keyguard/R$string;->keyguard_presidential_cmas_text:I

    .line 222
    .local v0, "cmas_res_id":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-nez v2, :cond_0

    .line 224
    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    .line 225
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    .line 227
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    .line 234
    .end local v0    # "cmas_res_id":I
    :cond_1
    :goto_3
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    return v2

    .end local v1    # "needToShowCMAS":Z
    :cond_2
    move v2, v4

    .line 217
    goto :goto_0

    :cond_3
    move v1, v3

    .line 216
    goto :goto_1

    .line 221
    .restart local v1    # "needToShowCMAS":Z
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->keyguard_cmas_text:I

    .restart local v0    # "cmas_res_id":I
    goto :goto_2

    .line 229
    .end local v0    # "cmas_res_id":I
    :cond_5
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v2, :cond_1

    .line 230
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    .line 231
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    goto :goto_3
.end method

.method private updateOwnerInfo(I)V
    .locals 7
    .param p1, "hasCMAS"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 168
    const-string/jumbo v2, "KeyguardOwnerInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 172
    :cond_0
    const-string/jumbo v2, "KeyguardOwnerInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show CMAS on owner info space ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 171
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateCMASText(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    .line 180
    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    .line 181
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x0

    .line 187
    .local v0, "ownerInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 199
    .end local v0    # "ownerInfo":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 200
    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    .line 167
    :goto_1
    return-void

    .line 192
    .restart local v0    # "ownerInfo":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 193
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "ownerInfo":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "ownerInfo":Ljava/lang/String;
    .end local v1    # "user":I
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    .line 205
    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onAttachedToWindow()V

    .line 129
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onDetachedFromWindowInternal()V

    .line 135
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 133
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onFinishInflate()V

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    .line 121
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    .line 155
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateFontSizeInKeyguardBoundary()V

    .line 146
    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 1
    .param p1, "hasCMAS"    # Z

    .prologue
    .line 152
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    .line 151
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

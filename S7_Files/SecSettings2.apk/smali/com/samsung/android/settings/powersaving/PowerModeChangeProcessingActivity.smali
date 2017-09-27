.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
.super Landroid/app/Activity;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private disablePSM:Z

.field private mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

.field private mBatteryLevel:I

.field private mButtonType:I

.field private mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mCircleTextContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeDelta:I

.field private mDescContainer:Landroid/view/View;

.field private mDoCheckingAnimation:Z

.field private mExtendedTimeTv:Landroid/widget/TextView;

.field private mInitBatteryTime:I

.field mListView:Landroid/widget/ListView;

.field private mProcessingDescTv:Landroid/widget/TextView;

.field private mReceivedBatteryTime:I

.field private mRemainTimeInCircleTv:Landroid/widget/TextView;

.field private mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

.field private mTotalItemsTime:I

.field private mTotalTimeDelta:I

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/circle/CircleContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->showExtendedTime()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V
    .locals 0
    .param p1, "delta"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startCircleTextAnimation(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startFinishAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->updateEstimatedTimeView(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    .line 64
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    .line 65
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    .line 66
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    .line 67
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    .line 84
    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    .line 90
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method private buildDataFromIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7f0a01f7

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    const-string/jumbo v1, "key_current_battery"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    .line 202
    const-string/jumbo v1, "key_init_battery_time"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    .line 203
    const-string/jumbo v1, "key_extended_battery_time_delta"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    .line 204
    const-string/jumbo v1, "key_button_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    .line 205
    const-string/jumbo v1, "key_next_psm_mode"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "psmMode":I
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    .line 208
    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v2, 0x7f0b0a56

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->buildAllItems(Landroid/content/Intent;)V

    .line 220
    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-eqz v1, :cond_4

    .line 221
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    .line 226
    :goto_2
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    if-lez v1, :cond_5

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setEstimatedTimeTextSize()V

    .line 228
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->updateEstimatedTimeView(I)V

    .line 229
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setTextColorByLevel(ILandroid/widget/TextView;)V

    .line 238
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getColorStateByLevel(I)I

    move-result v4

    invoke-virtual {v1, v2, v4, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 240
    sget-object v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received::battLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", init battTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string/jumbo v3, ", time delta : "

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    const-string/jumbo v3, ", buttonType : "

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    iget v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mButtonType:I

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    :cond_1
    move v1, v3

    .line 207
    goto/16 :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v5, 0x7f0b0a55

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    if-lez v1, :cond_3

    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    .line 215
    invoke-static {p0, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 214
    const v4, 0x7f0b0a59

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move v1, v4

    .line 213
    goto :goto_4

    .line 223
    :cond_4
    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mReceivedBatteryTime:I

    iput v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mInitBatteryTime:I

    goto/16 :goto_2

    .line 231
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    const v2, 0x7f0b01cd

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0518

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 232
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3
.end method

.method private getColorStateByLevel(I)I
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 182
    const/16 v1, 0x32

    if-ge p1, v1, :cond_0

    .line 183
    const/4 v0, 0x3

    .line 188
    .local v0, "state":I
    :goto_0
    return v0

    .line 184
    .end local v0    # "state":I
    :cond_0
    const/16 v1, 0x46

    if-ge p1, v1, :cond_1

    .line 185
    const/4 v0, 0x2

    .restart local v0    # "state":I
    goto :goto_0

    .line 187
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "state":I
    goto :goto_0
.end method

.method private setEstimatedTimeTextSize()V
    .locals 5

    .prologue
    .line 245
    new-instance v0, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 245
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;-><init>(Landroid/widget/TextView;I)V

    .line 248
    .local v0, "watcher":Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;
    const/16 v1, 0xd1b

    .line 249
    const v2, 0x7f0a01f9

    .line 250
    const v3, 0x7f0a01fa

    .line 251
    const/4 v4, -0x1

    .line 248
    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/AutoResizeSingleLineTextWatcher;->setMaxTextSize(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method

.method private setTextColorByLevel(ILandroid/widget/TextView;)V
    .locals 4
    .param p1, "score"    # I
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    .line 193
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getColorStateByLevel(I)I

    move-result v3

    .line 192
    invoke-static {v2, v1, v3}, Lcom/samsung/android/visualeffect/circle/StateColorManager;->getColor(Landroid/content/Context;Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;I)I

    move-result v0

    .line 194
    .local v0, "color":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    :cond_0
    return-void
.end method

.method private showExtendedTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startCircleTextAnimation(I)V
    .locals 4
    .param p1, "delta"    # I

    .prologue
    const/4 v3, 0x0

    .line 259
    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 260
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    aput v2, v1, v3

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCurrentTimeDelta:I

    add-int/2addr v2, p1

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 261
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 258
    return-void
.end method

.method private startFinishAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 279
    const v4, 0x7f0a00cc

    invoke-static {p0, v4}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getFloatFromDimension(Landroid/content/Context;I)F

    move-result v0

    .line 280
    .local v0, "bounceUpTo":F
    new-instance v1, Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-direct {v1, v4, v6, v0, v6}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;-><init>(Landroid/view/View;FFF)V

    .line 281
    .local v1, "circleBounce":Lcom/samsung/android/visualeffect/circle/BounceAnimation;
    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->setBounceListener(Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;)V

    .line 315
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 316
    .local v2, "fadeout":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 317
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 318
    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 320
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 321
    .local v3, "fadeoutWithListener":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceUpDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 322
    new-instance v4, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v4}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 323
    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 324
    new-instance v4, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 342
    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->startAnimation()V

    .line 343
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 347
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 278
    return-void
.end method

.method private updateEstimatedTimeView(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 352
    const v1, 0x7f0a01f9

    .line 353
    const v2, 0x7f0a01fa

    .line 354
    const/4 v3, -0x1

    .line 351
    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->formatSpannableBatteryTime(Landroid/content/Context;IIII)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iput-object p0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mContext:Landroid/content/Context;

    .line 120
    const v0, 0x7f0401c2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->setContentView(I)V

    .line 122
    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 124
    const v0, 0x7f11003f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleTextContainer:Landroid/view/View;

    .line 125
    const v0, 0x7f110467

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mRemainTimeInCircleTv:Landroid/widget/TextView;

    sget-object v1, Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;->SCORE_TEXT:Lcom/samsung/android/visualeffect/circle/StateColorManager$VIEWTYPE;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircleListener(Lcom/samsung/android/visualeffect/circle/CircleContainer$CircleListener;)V

    .line 132
    const v0, 0x7f110516

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/check/DoneView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mAnimatedDoneV:Lcom/samsung/android/visualeffect/check/DoneView;

    .line 134
    const v0, 0x7f11051a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDescContainer:Landroid/view/View;

    .line 135
    const v0, 0x7f11051b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f11051c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mExtendedTimeTv:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mProcessingDescTv:Landroid/widget/TextView;

    const v1, 0x7f0b0a55

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v0, 0x7f11051d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    .line 141
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->buildDataFromIntent(Landroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mSavingAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->removeCircleListener()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setVisibility(I)V

    .line 168
    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mCircleContainer:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 171
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 579
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 581
    return v1

    .line 584
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->finish()V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->disablePSM:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalTimeDelta:I

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mTotalItemsTime:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startCircleTextAnimation(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    return-void
.end method

.method public onRoundEnd()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mDoCheckingAnimation:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 175
    :cond_0
    return-void
.end method

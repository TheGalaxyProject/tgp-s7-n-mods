.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BoostModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBoostMode:I

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private setGLbyUs:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    .line 73
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 99
    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    .line 534
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 28

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 226
    const v3, 0x7f0401c1

    const/4 v4, 0x0

    .line 225
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 227
    .local v27, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 228
    const v3, 0x7f0401c7

    const/4 v4, 0x0

    .line 227
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 231
    .local v14, "headerView":Landroid/view/View;
    const v2, 0x7f110533

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 232
    .local v17, "maximumPreview":Landroid/widget/ImageView;
    const v2, 0x7f110513

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 233
    .local v11, "dividerView":Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const v2, 0x7f110534

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 238
    .local v18, "modeSummary":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 239
    const v2, 0x7f0b0a6e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 245
    .local v24, "summaryText":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0a71

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 246
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const v2, 0x7f110535

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v3, 0x7f020509

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 254
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v7, "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 284
    const/4 v4, 0x1

    const/16 v5, 0x64

    .line 283
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 286
    const/4 v4, 0x2

    const/16 v5, 0x64

    .line 285
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 288
    const/4 v4, 0x3

    const/16 v5, 0x64

    .line 287
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 291
    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setLastPerfmodebrightness(Landroid/content/Context;I)V

    .line 294
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 296
    .local v16, "maxBrightnessStatus":I
    add-int/lit8 v19, v16, -0x5a

    .line 297
    .local v19, "percent":I
    if-gez v19, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/16 v5, 0x5a

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 299
    const/16 v19, 0x0

    .line 301
    :cond_3
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 302
    const v2, 0x7f0b01b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    if-nez v19, :cond_f

    const v2, 0x7f0b0854

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    :goto_1
    const/4 v5, 0x0

    .line 301
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    const-string/jumbo v2, "WQHD,FHD,HD"

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 310
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 309
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 312
    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 311
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 314
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 313
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 316
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v20

    .line 319
    .local v20, "resolutionStatus":I
    packed-switch v20, :pswitch_data_0

    .line 328
    const v2, 0x7f0b0598

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 331
    .local v21, "resolutionStr":Ljava/lang/String;
    :goto_2
    const v2, 0x7f0b0a7e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 332
    .local v22, "resolutionSummary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 332
    if-eq v2, v3, :cond_5

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0a7f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 336
    :cond_5
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v3, 0x7f0b0593

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v20    # "resolutionStatus":I
    .end local v21    # "resolutionStr":Ljava/lang/String;
    .end local v22    # "resolutionSummary":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    .line 346
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 345
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 348
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v26

    .line 349
    .local v26, "videoEnhancerStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 350
    const v2, 0x7f0b0411

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 351
    const v2, 0x7f0b0413

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    const v2, 0x7f0b0a35

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    .line 358
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 357
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 360
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v25

    .line 361
    .local v25, "uhqUpscalerStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 362
    const v2, 0x7f0b0981

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 363
    const v2, 0x7f0b0982

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 364
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_11

    const v2, 0x7f0b0a35

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v25    # "uhqUpscalerStatus":I
    .end local v26    # "videoEnhancerStatus":I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    .line 371
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 370
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 373
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 374
    .local v12, "gameLauncherStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 375
    const v2, 0x7f0b0a82

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 376
    const v2, 0x7f0b0a83

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 377
    const/4 v2, 0x1

    if-ne v12, v2, :cond_12

    const v2, 0x7f0b0a35

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    :goto_5
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    .line 381
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 380
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 383
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 384
    .local v13, "gameToolsStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 385
    const v2, 0x7f0b0a84

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    const v2, 0x7f0b0a85

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    const/4 v2, 0x1

    if-ne v13, v2, :cond_13

    const v2, 0x7f0b0a35

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    :goto_6
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v12    # "gameLauncherStatus":I
    .end local v13    # "gameToolsStatus":I
    :cond_c
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    const v5, 0x7f0401c5

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v23, v0

    .line 394
    .local v23, "sidePadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a050d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 395
    .local v8, "bottomPadding":I
    const v2, 0x7f110514

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 396
    .local v9, "buttonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 397
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :goto_7
    const v2, 0x7f110515

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 439
    .local v10, "cancelButtonView":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 440
    const v2, 0x7f110180

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b042c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    const v2, 0x102000a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 455
    .local v15, "listView":Landroid/widget/ListView;
    invoke-virtual {v15, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 457
    const v2, 0x106000d

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 458
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 460
    return-object v27

    .line 240
    .end local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    .end local v8    # "bottomPadding":I
    .end local v9    # "buttonView":Landroid/view/View;
    .end local v10    # "cancelButtonView":Landroid/view/View;
    .end local v15    # "listView":Landroid/widget/ListView;
    .end local v16    # "maxBrightnessStatus":I
    .end local v19    # "percent":I
    .end local v23    # "sidePadding":I
    .end local v24    # "summaryText":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 241
    const v2, 0x7f0b0a70

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "summaryText":Ljava/lang/String;
    goto/16 :goto_0

    .line 243
    .end local v24    # "summaryText":Ljava/lang/String;
    :cond_e
    const v2, 0x7f0b0a6c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "summaryText":Ljava/lang/String;
    goto/16 :goto_0

    .line 304
    .restart local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    .restart local v16    # "maxBrightnessStatus":I
    .restart local v19    # "percent":I
    :cond_f
    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 321
    .restart local v20    # "resolutionStatus":I
    :pswitch_0
    const v2, 0x7f0b0596

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 324
    .end local v21    # "resolutionStr":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b0597

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 352
    .end local v20    # "resolutionStatus":I
    .end local v21    # "resolutionStr":Ljava/lang/String;
    .restart local v26    # "videoEnhancerStatus":I
    :cond_10
    const v2, 0x7f0b0a36

    goto/16 :goto_3

    .line 364
    .restart local v25    # "uhqUpscalerStatus":I
    :cond_11
    const v2, 0x7f0b0a36

    goto/16 :goto_4

    .line 377
    .end local v25    # "uhqUpscalerStatus":I
    .end local v26    # "videoEnhancerStatus":I
    .restart local v12    # "gameLauncherStatus":I
    :cond_12
    const v2, 0x7f0b0a36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 387
    .restart local v13    # "gameToolsStatus":I
    :cond_13
    const v2, 0x7f0b0a36

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 399
    .end local v12    # "gameLauncherStatus":I
    .end local v13    # "gameToolsStatus":I
    .restart local v8    # "bottomPadding":I
    .restart local v9    # "buttonView":Landroid/view/View;
    .restart local v23    # "sidePadding":I
    :cond_14
    const/4 v2, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v9, v0, v2, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 401
    const v2, 0x7f110180

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b042b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 445
    .restart local v10    # "cancelButtonView":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b1105

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v2, "fromWhere"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 161
    const-string/jumbo v2, "boost_mode"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 162
    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    const-string/jumbo v3, "Performance mode off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v4, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 164
    invoke-static {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 181
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 182
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 184
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setupAlert()V

    .line 157
    return-void

    .line 167
    .end local v1    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_1
    const-string/jumbo v2, "boost_mode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    .line 168
    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current Performance mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 171
    const-string/jumbo v2, "GameModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 173
    const-string/jumbo v2, "EntertainmentModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v2, "HighPerformanceModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 519
    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult for GAME MODE requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 521
    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    const-string/jumbo v1, "onActivityResult for GAME MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 518
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 527
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 198
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 201
    const v5, 0x7f0401c1

    .line 200
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 203
    const v5, 0x7f0401c7

    .line 202
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, "headerView":Landroid/view/View;
    const v4, 0x7f110533

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 207
    .local v2, "maximumPreview":Landroid/widget/ImageView;
    const v4, 0x7f110513

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 209
    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 210
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f020509

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 197
    :goto_1
    return-void

    .line 213
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 113
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 101
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    .line 139
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    .line 148
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

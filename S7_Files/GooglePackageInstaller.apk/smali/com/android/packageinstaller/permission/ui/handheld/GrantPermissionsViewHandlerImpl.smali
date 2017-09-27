.class public final Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;
.super Ljava/lang/Object;
.source "GrantPermissionsViewHandlerImpl.java"

# interfaces
.implements Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllowButton:Landroid/widget/Button;

.field private mButtonBar:Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDesc:Landroid/view/ViewGroup;

.field private mCurrentGroupView:Landroid/widget/TextView;

.field private mDescContainer:Landroid/view/ViewGroup;

.field private mDialogContainer:Landroid/view/ViewGroup;

.field private mDoNotAskCheckbox:Landroid/widget/CheckBox;

.field private mDoNotAskChecked:Z

.field private mGroupCount:I

.field private mGroupIcon:Landroid/graphics/drawable/Icon;

.field private mGroupIndex:I

.field private mGroupMessage:Ljava/lang/CharSequence;

.field private mGroupName:Ljava/lang/String;

.field private mIconView:Landroid/widget/ImageView;

.field private mMessageView:Landroid/widget/TextView;

.field private mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

.field private mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

.field private mShowDonNotAsk:Z


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mButtonBar:Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDialogContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->animateNewContent()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->attachNewContent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private animateNewContent()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    .line 228
    const v2, 0x10c000e

    .line 227
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 231
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 238
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 241
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 226
    :cond_0
    return-void
.end method

.method private animateOldContent(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    .line 144
    const v2, 0x10c000f

    .line 143
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 147
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 155
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 163
    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 141
    :cond_0
    return-void
.end method

.method private animateToPermission()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$2;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;)V

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->animateOldContent(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method private attachNewContent(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    const v3, 0x7f03006b

    .line 173
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    .line 175
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 176
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDialogContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl$1;-><init>(Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 212
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    const v2, 0x7f11008f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    .line 213
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    const v2, 0x7f11008e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    .line 215
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 217
    .local v0, "doNotAskWasShown":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDescription()V

    .line 218
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateGroup()V

    .line 219
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDoNotAskCheckBox()V

    .line 221
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 172
    :cond_0
    return-void

    .line 215
    .end local v0    # "doNotAskWasShown":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "doNotAskWasShown":Z
    goto :goto_0
.end method

.method private updateDescription()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method private updateDoNotAskCheckBox()V
    .locals 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 315
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateGroup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 306
    iget v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupCount:I

    if-le v0, v5, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 309
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 308
    const v3, 0x7f0d017b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 269
    const v1, 0x7f03001f

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    .line 270
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008d

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mButtonBar:Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;

    .line 271
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mButtonBar:Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ButtonBarLayout;->setAllowStacking(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008f

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mMessageView:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008e

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    .line 274
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11007f

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentGroupView:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008c

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    .line 276
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f110084

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    .line 278
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008a

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDialogContainer:Landroid/view/ViewGroup;

    .line 279
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11008b

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    .line 280
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f11012e

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mCurrentDesc:Landroid/view/ViewGroup;

    .line 282
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDescription()V

    .line 288
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateGroup()V

    .line 289
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDoNotAskCheckBox()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    return-object v0
.end method

.method public loadInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string/jumbo v0, "ARG_GROUP_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "ARG_GROUP_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupMessage:Ljava/lang/CharSequence;

    .line 105
    const-string/jumbo v0, "ARG_GROUP_ICON"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIcon:Landroid/graphics/drawable/Icon;

    .line 106
    const-string/jumbo v0, "ARG_GROUP_COUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupCount:I

    .line 107
    const-string/jumbo v0, "ARG_GROUP_INDEX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIndex:I

    .line 108
    const-string/jumbo v0, "ARG_GROUP_SHOW_DO_NOT_ASK"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    .line 109
    const-string/jumbo v0, "ARG_GROUP_DO_NOT_ASK_CHECKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskChecked:Z

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 330
    :sswitch_0
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 332
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;->onPermissionGrantResult(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 336
    :sswitch_1
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 337
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 339
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    .line 340
    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 339
    invoke-interface {v1, v2, v0, v3}, Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;->onPermissionGrantResult(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mAllowButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110083 -> :sswitch_1
        0x7f110084 -> :sswitch_0
        0x7f11008c -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mRootView:Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;

    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/ui/ManualLayoutFrame;->onConfigurationChanged()V

    .line 137
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const-string/jumbo v0, "ARG_GROUP_NAME"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "ARG_GROUP_COUNT"

    iget v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v0, "ARG_GROUP_INDEX"

    iget v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string/jumbo v0, "ARG_GROUP_ICON"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    const-string/jumbo v0, "ARG_GROUP_MESSAGE"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 97
    const-string/jumbo v0, "ARG_GROUP_SHOW_DO_NOT_ASK"

    iget-boolean v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    const-string/jumbo v0, "ARG_GROUP_DO_NOT_ASK_CHECKED"

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method public setResultListener(Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;)Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;
    .locals 0
    .param p1, "listener"    # Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mResultListener:Lcom/android/packageinstaller/permission/ui/GrantPermissionsViewHandler$ResultListener;

    .line 87
    return-object p0
.end method

.method public updateUi(Ljava/lang/String;IILandroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupCount"    # I
    .param p3, "groupIndex"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Icon;
    .param p5, "message"    # Ljava/lang/CharSequence;
    .param p6, "showDonNotAsk"    # Z

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupName:Ljava/lang/String;

    .line 116
    iput p2, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupCount:I

    .line 117
    iput p3, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIndex:I

    .line 118
    iput-object p4, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIcon:Landroid/graphics/drawable/Icon;

    .line 119
    iput-object p5, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupMessage:Ljava/lang/CharSequence;

    .line 120
    iput-boolean p6, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mShowDonNotAsk:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDoNotAskChecked:Z

    .line 123
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mGroupIndex:I

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->mDescContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p5}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->animateToPermission()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDescription()V

    .line 131
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateGroup()V

    .line 132
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/handheld/GrantPermissionsViewHandlerImpl;->updateDoNotAskCheckBox()V

    goto :goto_0
.end method

.method public updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "outLayoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 296
    return-void
.end method

.class public final Lcom/samsung/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dialog"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V
    .locals 5
    .param p0, "dialog"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 185
    .local v0, "ab":Landroid/app/ActionBar;
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 192
    invoke-static {v2, p0, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 196
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/samsung/android/settings/guide/GuideModeHelper$1;

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/samsung/android/settings/guide/GuideModeHelper$1;-><init>(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V

    .line 209
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 177
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2
    return-void
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 95
    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    const-string/jumbo v1, "settings:guide_mode"

    .line 74
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 78
    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_1
    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    .line 466
    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 110
    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, "result":Z
    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string/jumbo v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    .end local v0    # "result":Z
    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Z
    if-eqz p0, :cond_1

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .line 126
    .restart local v0    # "result":Z
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "result":Z
    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method private static placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dialog"    # Lcom/samsung/android/settings/helpdialog/TwHelpDialog;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 229
    const/4 v8, -0x1

    .line 230
    .local v8, "viewX":I
    const v9, 0x7f110018

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 231
    .local v2, "handPointer":Landroid/widget/ImageView;
    const v9, 0x7f110019

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;

    .line 232
    .local v6, "punchView":Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;
    const v9, 0x7f11001c

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, "bubbleView":Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 235
    .local v7, "resources":Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v9

    float-to-int v8, v9

    .line 239
    :cond_0
    if-lez v8, :cond_3

    .line 242
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    .line 243
    const/4 v10, -0x2

    .line 242
    invoke-direct {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 245
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    const v9, 0x7f0a03e2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 247
    add-int/2addr v9, v8

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 250
    const v9, 0x7f0a03e3

    .line 249
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 252
    if-nez v2, :cond_4

    .line 253
    new-instance v2, Landroid/widget/ImageView;

    .end local v2    # "handPointer":Landroid/widget/ImageView;
    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 254
    .restart local v2    # "handPointer":Landroid/widget/ImageView;
    const v9, 0x7f02048c

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    const v9, 0x7f0b03c7

    .line 255
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    const v9, 0x7f11001b

    invoke-virtual {p1, v9}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 260
    .local v4, "parent":Landroid/widget/RelativeLayout;
    if-eqz v4, :cond_1

    .line 261
    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    const v9, 0x7f110018

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 269
    .end local v4    # "parent":Landroid/widget/RelativeLayout;
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 272
    invoke-virtual {v6}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 274
    .local v5, "punchParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 276
    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    invoke-virtual {v6}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->invalidate()V

    .line 284
    .end local v5    # "punchParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 289
    .local v0, "bubbleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f0a03c5

    .line 288
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    sub-int v9, v8, v9

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 296
    .end local v0    # "bubbleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    if-lez v8, :cond_5

    const/4 v9, 0x1

    :goto_1
    return v9

    .line 265
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 296
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 418
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    .line 419
    check-cast p1, Landroid/app/ListActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 421
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 422
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 425
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 417
    .end local v0    # "list":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method static setSettingsListFocusEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .param p0, "enabled"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 433
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_1

    .line 434
    check-cast p1, Landroid/app/ListActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 436
    .local v0, "list":Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 438
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 442
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 432
    .end local v0    # "list":Landroid/widget/ListView;
    :cond_1
    return-void
.end method
